global class LeadProcessor implements 
    Database.Batchable<sObject>, Database.Stateful {



    global database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('SELECT id , name , leadsource from lead');
    }
    global void execute (Database.BatchableContext bc , List<Lead>someLeads)
    {
         List<Lead> recordsWithDF = new List<Lead>();
     for (Lead l : someLeads)
     {
         if (l.leadsource =='Dreamforce')
         {
             recordsWithDF.add(l);
         } 
     }
        update recordsWithDF;
    }
    global void finish(Database.BatchableContext bc)
    {
        
    }

}