public class AccountHandler 
{
	
    public static Account insertNewAccount(String accountName)
    {
        
        
        Account acc = new Account (Name=accountName);
        try
        {
        	insert acc;
        }
            
        
        catch(DmlException e)
        {
            System.debug('DML Exception Occures'+e.getMessage());
            return null;
        }
        return acc; 
    }
}