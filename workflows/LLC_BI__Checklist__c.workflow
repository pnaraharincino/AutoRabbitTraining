<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateChecklistName</fullName>
        <field>Name</field>
        <formula>LLC_BI__Account__r.Name + &apos; Maintenance Request on &apos; + Text(CreatedDate)</formula>
        <name>UpdateChecklistName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>UpdateChecklistName</fullName>
        <actions>
            <name>UpdateChecklistName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Checklist__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>