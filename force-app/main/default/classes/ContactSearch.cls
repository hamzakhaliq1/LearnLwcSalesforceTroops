public class ContactSearch 
{

    public static List<Contact> searchForContacts(string name,string postal)
    {
        
        List <Contact> con=[SELECT FirstName,LastName,	ID from Contact WHERE LastName=:name AND	MailingPostalCode=:postal ];
    	
        return con;
    }
}