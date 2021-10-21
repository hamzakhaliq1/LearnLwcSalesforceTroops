@istest
public class CustomClassTest {

  
      testmethod static void testmethod1()
    {
         PageReference pr = Page.CustomVF;
        List<Account>accsAll= new List<Account>();
        
    
   
    Account acc2 = new Account(name='testAccount');
    
     Account acc = new Account(name='hamza');
        
        
    accsAll.add(acc2);
        accsAll.add(acc);
    insert accsAll;
        
        Contact c = new Contact(LastName='khaliq');
    c.AccountId=acc.id;
    Contact c1 = new Contact(LastName='testcontact');
    insert c;
       ApexPages.StandardSetController scc = new ApexPages.StandardSetController(accsAll);
        scc.SetSelected(accsAll);
        CustomClass cls = new CustomClass(scc);
        
        
        
        test.startTest();
        cls.childToParentQuery();
        cls.parentToChildQuery();
        cls.getAllRecords();
        test.stopTest();
    }
}