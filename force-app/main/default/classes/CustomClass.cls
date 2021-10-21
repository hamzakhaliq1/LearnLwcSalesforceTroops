public class CustomClass {
    set<id> memids = new Set<id>();
    
    public  CustomClass(ApexPages.StandardSetController sc)
    {
        
        for (Account acc : ( (List<Account>)sc.getSelected()))
             {
                 memids.add(acc.id);
             }
			        
    }
    
    
    
    public void parentToChildQuery()
    {
        //Database.executeBatch(new Pad_Drilling_Count());
		for (Account ac : [SELECT id , name ,(select id , name from contacts)from account])
		{
    	for (Contact c : ac.Contacts)
    	{
        	System.debug('Account '+ ac.Name+' Contact '+c.Name);
    	}
		}
    }
    
    public void childToParentQuery()
    {
        for (Contact c : [SELECT id , Name , Account.Name , Account.id from Contact where account.id!=null])
        {
            System.debug('Account Name '+c.account.name + 'Contact Name '+c.Name);
        }
    }
    
    public void getAllRecords()
    {
        List<Account> accs=[SELECT id , name ,(select id , name from contacts)from account where id in : memids];
        
        
    }

}