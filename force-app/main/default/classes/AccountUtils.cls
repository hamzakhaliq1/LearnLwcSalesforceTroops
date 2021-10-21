public class AccountUtils {
    
    public static List<Account> accountsByState(String state)
    {
        
        List <Account> someList = [Select id , name from Account where  BillingState=:state];
        
        
        return someList;
    }

}