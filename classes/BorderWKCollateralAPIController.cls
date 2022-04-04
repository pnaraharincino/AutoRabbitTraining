public with sharing class BorderWKCollateralAPIController {
    @InvocableMethod(label='Callout for collateral API' description='Do callout for collateral' category='callouts')
    public static void collateralCallout(List<Id> loanIds) {
        
        List<LLC_BI__Collateral__c> collateralsList = [SELECT Id,
        LLC_BI__Purchase_Money__c,
        Name, LLC_BI__Collateral_Name__c, LLC_BI__Legacy_Collateral__r.Name,
        LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.Name, LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__c,
        LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__CRA_Type_Code__c,
        LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__Description__c,
        LLC_BI__Branch__r.LLC_BI__Branch_Id__c,LLC_BI__Branch__r.LLC_BI__Street__c, LLC_BI__Branch__r.LLC_BI__City__c, 
        LLC_BI__Branch__r.LLC_BI__State__c, LLC_BI__Branch__r.LLC_BI__Zip_Code__c, LLC_BI__Branch__r.LLC_BI__County__c,
        LLC_BI__Branch__r.Name,
        LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__Account__r.LLC_BI__Tax_Identification_Number_PE__c,
        (SELECT Id, Name FROM LLC_BI__Liens__r), 
        (SELECT Id, Name, LLC_BI__Account__r.Type, LLC_BI__Account__r.Name,
            LLC_BI__Account__r.BillingStreet, LLC_BI__Account__r.BillingCity, LLC_BI__Account__r.BillingState,
            LLC_BI__Account__r.BillingCountry, LLC_BI__Account__r.BillingPostalCode,
            LLC_BI__Account__r.LLC_BI__Tax_Identification_Number_PE__c
            FrOM LLC_BI__Account_Collateral__r)
        FROM LLC_BI__Collateral__c
        WHERE Id IN 
            (SELECT LLC_BI__Collateral__c FROM LLC_BI__Loan_Collateral2__c
            WHERE LLC_BI__Loan__c IN :loanIds)
        ];
        
        JSONGenerator gen = JSON.createGenerator(true);
        gen.writeStartObject();     
            gen.writeFieldName('OrderHeader');
            gen.writeStartObject();
                gen.writeStringField('OrderType', 'UCCFiling');
                gen.writeStringField('OrderSource', 'Collateral');
                gen.writeStringField('ContactEmail', 'loanoperations@border.bank');//Move below 3 fields to custom settings or check if these details are somewhere
                gen.writeStringField('ContactName', 'Abigail M. Voorhees');
                gen.writeStringField('ContactPhone', '555-956-5174');
            gen.writeEndObject();

            gen.writeFieldName('DeliveryInstructions');
            gen.writeStartObject();
                gen.writeStringField('DeliveryEmail', 'Y');
                gen.writeStringField('DeliveryRegularMail', 'N');
                gen.writeStringField('DeliveryNextDay', 'N');
                gen.writeStringField('DeliveryFax', 'N');
                gen.writeStringField('DeliveryMessenger', 'N');
                gen.writeStringField('Name', 'Loan Operations');
                gen.writeStringField('CompanyName', 'Border Bank');
                gen.writeStringField('Address1', '4530 17th Ave South');
                gen.writeStringField('City', 'Fargo');
                gen.writeStringField('County', 'Cass');

                gen.writeStringField('State', 'ND');
                gen.writeStringField('Zip', '58103');
                gen.writeStringField('Country', 'USA');
                gen.writeStringField('Email', 'loanoperations@border.bank');
                gen.writeStringField('Fax', '0');
            gen.writeEndObject();                

            gen.writeFieldName('OrderItems');
            gen.writeStartArray(); //OrderItems
                for(LLC_BI__Collateral__c collateral: collateralsList) {
                    gen.writeStartObject();
                        gen.writeFieldName('OrderItemHeader');
                        gen.writeStartObject();
                            gen.writeStringField('ItemType', 'UCC1');
                            gen.writeStringField('AmendmentType', 'NOType');
                            gen.writeStringField('AccountNumber', 'NOAction');
                        gen.writeEndObject();

                        gen.writeFieldName('CustomerReference');
                        gen.writeStartObject();
                            gen.writeStringField('Reference1', collateral.LLC_BI__Branch__r.Name == null ? '': collateral.LLC_BI__Branch__r.Name);
                            gen.writeStringField('Reference2', collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__CRA_Type_Code__c == null ? '':
                                collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__CRA_Type_Code__c);
                            gen.writeStringField('Reference3', collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.Name == null ? '':
                                collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.Name);
                            gen.writeStringField('Reference4', 'Ncino');
                            gen.writeStringField('Reference5', collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__Description__c == null ? '':
                                collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__Description__c);
                            gen.writeStringField('Reference6', UserInfo.getUserEmail());
                        gen.writeEndObject();

                        gen.writeStringField('PMSI', collateral.LLC_BI__Purchase_Money__c? 'Y' : 'N');
                        gen.writeStringField('STR', 'AllDebtors');
                        gen.writeStringField('SpecialInstructions', '');
                        

                        gen.writeFieldName('Debtors');
                        gen.writeStartArray();
                            for(LLC_BI__Account_Collateral__c debtor : collateral.LLC_BI__Account_Collateral__r) {
                                gen.writeStartObject();
                                    gen.writeStringField('SequenceNumber', collateral.Name);
                                    gen.writeStringField('BusinessName', debtor.LLC_BI__Account__r.Name == null ? '' : debtor.LLC_BI__Account__r.Name);
                                  /**  gen.writeStringField('FirstName', debtor.LLC_BI__Account__r.FirstName == null ? '' : debtor.LLC_BI__Account__r.FirstName);
                                    gen.writeStringField('LastName', debtor.LLC_BI__Account__r.FirstName == null ? '' : debtor.LLC_BI__Account__r.FirstName);
                                    gen.writeStringField('FirstName', debtor.LLC_BI__Account__r.LastName == null ? '' : debtor.LLC_BI__Account__r.LastName);
                                    gen.writeStringField('MiddleName', debtor.LLC_BI__Account__r.MiddleName == null ? '' : debtor.LLC_BI__Account__r.MiddleName);
                                    gen.writeStringField('Suffix', debtor.LLC_BI__Account__r.Salutation  == null ? '' : debtor.LLC_BI__Account__r.Salutation);
                                   */  gen.writeStringField('City', debtor.LLC_BI__Account__r.BillingCity  == null ? '' : debtor.LLC_BI__Account__r.BillingCity);
                                    gen.writeStringField('State', debtor.LLC_BI__Account__r.BillingState  == null ? '' : debtor.LLC_BI__Account__r.BillingState);
                                    gen.writeStringField('Zip', debtor.LLC_BI__Account__r.BillingPostalCode  == null ? '' : debtor.LLC_BI__Account__r.BillingPostalCode);
                                    gen.writeStringField('Country', debtor.LLC_BI__Account__r.BillingCountry  == null ? '' : debtor.LLC_BI__Account__r.BillingCountry);
                                    gen.writeStringField('TaxIDSSN',  debtor.LLC_BI__Account__r.LLC_BI__Tax_Identification_Number_PE__c  == null ?
                                    '' : debtor.LLC_BI__Account__r.LLC_BI__Tax_Identification_Number_PE__c );
                                    gen.writeStringField('EntityType', debtor.LLC_BI__Account__r.Type  == null ? '' : debtor.LLC_BI__Account__r.Type );

                                gen.writeEndObject();
                            }
                        gen.writeEndArray();
                        gen.writeFieldName('SecuredParties');
                        gen.writeStartArray();
                            for(LLC_BI__Lien__c lien : collateral.LLC_BI__Liens__r) {
                                	
                                gen.writeStartObject();
                                gen.writeStringField('SequenceNumber',  collateral.LLC_BI__Branch__r.LLC_BI__Branch_Id__c == null ?
                                    '' : collateral.LLC_BI__Branch__r.LLC_BI__Branch_Id__c );
                                gen.writeStringField('BusinessName', 'Border Bank');

                                gen.writeStringField('Address1', collateral.LLC_BI__Branch__r.LLC_BI__Street__c ==null ? '' : collateral.LLC_BI__Branch__r.LLC_BI__Street__c);

                                gen.writeStringField('City', collateral.LLC_BI__Branch__r.LLC_BI__City__c == null ? '' :  collateral.LLC_BI__Branch__r.LLC_BI__City__c);
                                gen.writeStringField('State', collateral.LLC_BI__Branch__r.LLC_BI__State__c == null ? '' : collateral.LLC_BI__Branch__r.LLC_BI__State__c); 
                                gen.writeStringField( 'Zip', collateral.LLC_BI__Branch__r.LLC_BI__Zip_Code__c == null ? '' : collateral.LLC_BI__Branch__r.LLC_BI__Zip_Code__c);
                                gen.writeStringField( 'Country', collateral.LLC_BI__Branch__r.LLC_BI__County__c ==null ? '' : collateral.LLC_BI__Branch__r.LLC_BI__County__c);
                                gen.writeStringField('TaxIDSSN', collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__Account__r.LLC_BI__Tax_Identification_Number_PE__c
                                    ==null ? '' : collateral.LLC_BI__Legacy_Collateral__r.LLC_BI__Loan__r.LLC_BI__Account__r.LLC_BI__Tax_Identification_Number_PE__c);
                                gen.writeStringField('OrganizationJurisdiction', 'ND');
                                gen.writeEndObject();
                            }
                        gen.writeEndArray();
                    gen.writeEndObject();
                }
                
            gen.writeEndArray();
        gen.writeEndObject();
        String jsonData = gen.getAsString();
        System.debug('jsonData-' + jsonData);

    }
}