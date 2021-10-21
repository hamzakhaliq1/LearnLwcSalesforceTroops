public with sharing class AccountManagerLWC {
    public AccountManagerLWC() {

        

    }

    public List<Account>getAccounts()
    {
        List<Account>accs = [SELECT id , name from Account Limit 10];

        for (Account acc : accs)
        {
            if (acc.name=='somename')
            {
                //dosomething
            }
            else if (acc.name=='someothername')
            {
                System.debug('thisname');
            }
        }

        return accs;
    }
}