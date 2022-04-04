<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>LLC_BI__approval_ready_for_review</fullName>
        <description>approval ready for review</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>LLC_BI__Primary_Officer__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>LLC_BI__Bankr_Templates/LLC_BI__Product_Package_Ready_For_Approval</template>
    </alerts>
    <fieldUpdates>
        <fullName>LLC_BI__Product_Package_Status_Approved</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Product Package Status: Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Product_Package_Status_In_Review</fullName>
        <description>Product Package Status: In Review</description>
        <field>LLC_BI__Status__c</field>
        <literalValue>In Review</literalValue>
        <name>Product Package Status: In Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Product_Package_Status_Itm_Approved</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Intermediately Approved</literalValue>
        <name>Product Package Status: Itm Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Product_Package_Status_Recalled</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Recalled</literalValue>
        <name>Product Package Status: Recalled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Product_Package_Status_Rejected</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Product Package Status: Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Work_Package_Status_In_Review</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>In Review</literalValue>
        <name>Work Package Status: In Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__approve_update</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Intermediately Approved</literalValue>
        <name>approve update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__itm_approve</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Approved</literalValue>
        <name>itm approve2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__itm_reject</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>itm reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__update_approval_field</fullName>
        <description>Updates a secondary Approval Status, used to trigger next steps in a reverse propagation approval process</description>
        <field>LLC_BI__Approval_Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Update Approval Status Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PP_Status_Update_Approved</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Approved</literalValue>
        <name>PP Status Update - Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PP_Status_Update_In_Review</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>In Review</literalValue>
        <name>PP Status Update - In Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PP_Status_Update_Recalled</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Recalled</literalValue>
        <name>PP Status Update - Recalled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PP_Status_Update_Rejected</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>PP Status Update - Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Product_Package_Set_Default_App</fullName>
        <field>LLC_BI__Default_App__c</field>
        <formula>&apos;pp-details-training.dashboard-pp-sn-details&apos;</formula>
        <name>Product Package: Set Default App</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Open</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Open</literalValue>
        <name>Update Status to Open</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X1st_Approved</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>1st Approved</literalValue>
        <name>1st Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X1st_Rejected</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>1st Rejected</literalValue>
        <name>1st Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2nd_Approved</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>2nd Approved</literalValue>
        <name>2nd Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2nd_Rejected</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>2nd Rejected</literalValue>
        <name>2nd Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>LLC_BI__Package Approval Ready</fullName>
        <actions>
            <name>LLC_BI__approval_ready_for_review</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>AND( ISPICKVAL(LLC_BI__Approval_Status__c, &apos;Ready&apos;), ISPICKVAL(PRIORVALUE(LLC_BI__Approval_Status__c), &apos;Pending&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Product Package%3A Set Default App</fullName>
        <actions>
            <name>Product_Package_Set_Default_App</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>LLC_BI__Product_Package_Next_Review_Task</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>LLC_BI__Product_Package__c.LLC_BI__Next_Review_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Product Package Review</subject>
    </tasks>
</Workflow>