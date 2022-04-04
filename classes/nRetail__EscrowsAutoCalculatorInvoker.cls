/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class EscrowsAutoCalculatorInvoker {
    global EscrowsAutoCalculatorInvoker() {

    }
    @InvocableMethod(label='Escrows Auto Calculation Service' description='Initiates the calculation to update escrow summary and fees information.')
    global static void invoke(List<nRetail.EscrowsAutoCalculatorInvoker.InputParams> input) {

    }
global class InputParams {
    @InvocableVariable(label='Escrow Fee Field Set' description='An optional fee field set api, if not provided, the default value `nRetail__Escrow_Fees_Table` would be used.' required=false)
    global String escrowFeeFieldSetApi;
    @InvocableVariable(label='Escrow Summary Field Set' description='An optional fee loan aggregate field set api, if not provided, the default value `nRetail__Escrow_Summary` would be used.' required=false)
    global String escrowSummaryFieldSetApi;
    @InvocableVariable(label='Loan Ids' description='Salesforce Ids of loan records.' required=true)
    global List<String> loanIds;
    global InputParams() {

    }
}
}
