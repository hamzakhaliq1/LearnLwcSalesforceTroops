public with sharing class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account>accounts)
    {
        
        List<Account> accsToSave = new List<Account>();
        
        for (Account acc :accounts)
        {
            if (acc.BillingState != acc.ShippingState)
            acc.ShippingState = acc.BillingState;
            
        }
       
        
        
        
        
        
    }

}