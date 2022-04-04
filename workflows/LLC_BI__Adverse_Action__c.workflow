<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Adverse_Action_Set_Loan_Flag_to_1</fullName>
        <field>LLC_BI__Loan_Flag__c</field>
        <formula>1</formula>
        <name>Adverse Action - Set Loan Flag to 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Adverse_Action_Set_Status_to_Declined</fullName>
        <field>Status__c</field>
        <literalValue>Loan Declined</literalValue>
        <name>Adverse Action - Set Status to Declined</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Adverse_Action_Set_Status_to_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Adverse Action Rejected</literalValue>
        <name>Adverse Action - Set Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Under_Review</fullName>
        <field>Status__c</field>
        <literalValue>Under Review</literalValue>
        <name>Status - Under Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
</Workflow>