({
	doInit: function(component, event, helper) {
        const sessionAliveURL= component.get("v.currentUser").KEEP_ALIVE_URL__c;
        if(sessionAliveURL) {
        	helper.handleAjaxRequest(sessionAliveURL, helper.handleAjaxRequest, helper.REFRESH_TIME);   
        }
    }
})