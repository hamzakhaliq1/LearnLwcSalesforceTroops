global with sharing class AnotherWebService {
    
    
    webservice static List<Contact>allAccs = new List<Contact>();
    webservice static Id CreateAnContact(String Name) {
        
        Contact acc = new Contact(LastName=Name );
        insert acc;
        return acc.id;
        
    }
    
    webservice static String returnContact(String  i)
    {
        Contact acc = [SELECT Name , Phone , CreatedById from Contact where id=:i];
        return acc.Name +' '+acc.Phone +' '+acc.CreatedById;
    }
    
    webservice static List<String>MultipleContactCreation(List<String>ContactNames)
    {
        List<Contact> allContacts = new List<Contact>();
        List<String> idsToReturn = new List<String>();
        for (String s : ContactNames)
        {
            Contact acc = new Contact(LastName=s);
            allContacts.add(acc);
        }
        insert AllContacts;
        for (Contact acc : AllContacts)
        {
            idsToReturn.add(acc.id);
        }
        return idstoreturn;
    }
    
    
    webservice static List<Contact>TestContactsCreation(List<String>ContactNames)
    {
       
        //List<String> idsToReturn = new List<String>();
        for (String s : ContactNames)
        {
            Contact acc = new Contact(LastName=s);
            allAccs.add(acc);
        }
        insert AllAccs;
        return AllAccs;
    }
    
    


}