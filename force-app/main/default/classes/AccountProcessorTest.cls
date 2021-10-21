@isTest
public class AccountProcessorTest {
    
	
    static testMethod void test1()
    {
        Test.startTest();
        Account acc = new Account(Name='test1');
        Account acc2 = new Account(Name='test2');
        Contact c = new Contact(LastName='testname');
        Contact c1 = new Contact(LastName='testname1');
        Contact c2 = new Contact(LastName='testname11');
        Contact c3 = new Contact(LastName='testname12');
        insert acc ; insert acc2;
        c1.AccountId=acc.id;
        c2.AccountId=acc.id;
        c3.AccountId=acc2.id;
        c.AccountId=acc2.id;
        insert c1;  insert c2; insert c3 ;
        List<id>accid= new List<id>();
        accid.add(acc.id);
        accid.add(acc2.id);    
        
        
        AccountProcessor.countContacts(accid);
       
        Test.stopTest();
    }
}