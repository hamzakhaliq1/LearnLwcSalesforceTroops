@isTest
public class TestRestrictContactByName 
{
		@isTest public static void TestThisContact()
        {
            Contact con = new Contact (FirstName='Something',LastName='INVALIDNAME');
            insert con;
            Test.startTest();
            Database.UpsertResult result = Database.upsert(con, false);
            
            Test.stopTest();
            System.assert(!result.isSuccess());
            System.assert(result.getErrors().size() > 0);
			            
			System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());

            
        }
    	@isTest public static void  inputOk()
        {
            Contact con = new Contact(FirstName='AnyThing', LastName='Anything');
            insert con;
            Database.UpsertResult result = Database.upsert(con, true);
            
            
            System.assert(result.isSuccess());
            
        }
        
         
}