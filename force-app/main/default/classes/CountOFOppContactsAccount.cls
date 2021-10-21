public class CountOFOppContactsAccount {
    
    public void count(){
        List<Account>accs = [SELECT id , name , (Select id from Contacts ) , (SELECT id from Opportunities) from Account Limit 100];
        for (Account acc : accs)
        {
           System.debug('Account Name : '+acc.name+'Contacts :'+acc.contacts.size() +'Opportunities : '+acc.opportunities.size());
        }
    }

}