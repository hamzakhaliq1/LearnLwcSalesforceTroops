public with sharing class AccountController {
    @auraenabled(cacheable=true)
  public static List<Account> getAllActiveAccounts() {
   
    return [SELECT Id,Name,Phone ,Site,Type,Intrests__c , AnnualRevenue , currencyisocode FROM Account where Phone!=null AND Type!=null];
  }
    public Account getSingleAccount(){
        Account acc = new Account(Name='Name 1');
        insert acc;
        return acc;
        
    }
    public List<Account> getAccountList(){
         return null;
    }
    @AuraEnabled(cacheable=true)
    public static List<Contact> getRelatedContacts(Id accountId) {
      return [
          SELECT Name, Title, Email, Phone
          FROM Contact
          WHERE AccountId = :accountId
          WITH SECURITY_ENFORCED
     ];
  }

    
}