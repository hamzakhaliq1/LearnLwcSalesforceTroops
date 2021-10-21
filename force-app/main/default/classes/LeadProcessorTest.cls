@isTest
public class LeadProcessorTest {

    static testMethod void test1()
    {
        test.startTest();
        List<Lead> testLeads = new List<Lead>();
        for (integer i=0;i<200;i++)
        {
            Lead l = new Lead (lastname='Lead'+i , status='Closed-Converted' , leadsource='Dreamforce', company='company'+i);
            l.State='NY';
            testLeads.add(l);
            
        }
        insert testLeads;
        LeadProcessor p = new LeadProcessor();
        id batchId = Database.executeBatch(p);
        
        
        test.stopTest();
    }
}