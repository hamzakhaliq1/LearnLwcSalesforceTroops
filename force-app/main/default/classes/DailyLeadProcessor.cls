global class DailyLeadProcessor implements Schedulable {
    
   global void execute(SchedulableContext ctx) 
    {
        
        List<Lead> findLeads = [SELECT id , name , leadsource from lead where leadsource='' limit 200];
        for (Lead l : findLeads)
        {
           l.LeadSource='DreamForce';
        }
        
        
    }

}