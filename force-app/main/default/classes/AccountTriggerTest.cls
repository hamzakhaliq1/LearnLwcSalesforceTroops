@isTest
public class AccountTriggerTest {
    
   @isTest public static void testMethod1(){
    
    List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i);
            acct.BillingState='CA';
            
            accts.add(acct);
        }
       Test.startTest();
        insert accts;                               
        Test.stopTest();
        
        List<Account> verifyAccts = [SELECT Id FROM Account where BillingState='CA' ];
       System.assertEquals(200, verifyAccts.size());
    }

}