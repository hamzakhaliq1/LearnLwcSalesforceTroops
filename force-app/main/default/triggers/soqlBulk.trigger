trigger soqlBulk on Account (before insert) 
{
    
    List<Account>accountWithOpportunities=[Select id,(Select id,closeDate,Name from opportunities) From Account where id IN 
                                           :Trigger.New];
    
    for (Account a :accountWithOpportunities )
    {
        Opportunity[]opps=a.Opportunities;
    }
    
}