global with sharing class MyWebService {
    
    webservice static List<Account>allAccs = new List<Account>();
    webservice static Id CreateAnAccount(String Name) {
        
        Account acc = new Account(Name=Name );
        insert acc;
        return acc.id;
        
    }
    
    webservice static String returnAccount(String  i)
    {
        Account acc = [SELECT Name , Phone , CreatedById from Account where id=:i];
        return acc.Name +' '+acc.Phone +' '+acc.CreatedById;
    }
    
    webservice static List<String>MultipleAccountCreation(List<String>accountNames)
    {
        List<Account> allAccounts = new List<Account>();
        List<String> idsToReturn = new List<String>();
        for (String s : accountNames)
        {
            Account acc = new Account(Name=s);
            allAccounts.add(acc);
        }
        insert AllAccounts;
        for (Account acc : AllAccounts)
        {
            idsToReturn.add(acc.id);
        }
        return idstoreturn;
    }
    
    
   /* webservice static List<Account>TestAccountsCreation(List<String>accountNames)
    {
       
        //List<String> idsToReturn = new List<String>();
        for (String s : accountNames)
        {
            Account acc = new Account(Name=s);
            allAccs.add(acc);
        }
        insert AllAccs;
        return AllAccs;
    }*/
    webservice static Integer findNumberOfOccurancesofaAccount(String accName)
    {
        Integer i=0;
        String j= '%'+accName+'%';
        try
        {
            i =[SELECT Count() from Account where Name like:j ];
            
        }catch(Exception e )
        {
            
        }
        
        return i;
    }
    
    webService static List<AccDummy> something(String Name){
        String j= '%'+Name+'%';
        List<Account> acc = [SELECT id , Name , Phone from Account where Name like:j];
       List<AccDummy>allAccDummies = new List<AccDummy>();
        for (Account a :acc)
       {
            ACcDummy dum = new AccDummy();
        
            dum.AccountId=a.id;
            dum.Name=a.Name;
            dum.Phone=a.Phone;
           
           allAccDummies.add(dum);
       }
        
        
        
        return allAccDummies;
    }
    

    
    
}