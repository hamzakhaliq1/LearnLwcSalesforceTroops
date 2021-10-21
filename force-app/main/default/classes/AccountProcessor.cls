public class AccountProcessor {
    @future
    public static void countContacts(List<id>AccountIds)
    {
    	integer count=0;
        
        
        for (Account ac : [select id, name,Number_of_Contacts__c, (select id, name from Contacts) from account where id in :accountids] )
        {
        	for (Contact c : ac.Contacts)
            {
                count++;
            }
            ac.Number_of_Contacts__c=count;
            count=0;
        }
        
        
    }

}