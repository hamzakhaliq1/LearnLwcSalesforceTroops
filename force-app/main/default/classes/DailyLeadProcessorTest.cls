@isTest
public class DailyLeadProcessorTest {
             public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    
    static testMethod void test1()
    {
        test.startTest();

       List<lead>leads=new List<lead>();
       for (integer i =0;i<200;i++)
       {
           lead l = new lead(lastname='some'+i , company='someCompany' , leadsource='');
           l.City='NYC';
           l.Country='USA';
           l.State='NY';
        	leads.add(l);   
       }
        
        insert leads;
        
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP, 
            new DailyLeadProcessor());
        test.stopTest();
    }

}