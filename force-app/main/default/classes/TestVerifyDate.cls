@isTest
public class TestVerifyDate {

    @isTest public static void testBothDatesCorrect()
    {
        Date dt =  Date.today();
        Date dt2= dt.addDays(10);
        Date dt3=VerifyDate.CheckDates(dt,dt2);
        System.assertEquals(dt3,dt2 );
    }
    @isTest public static void testBothDatesEnd()
    {
        Date dt =  Date.today();
        Date dt2= dt.addDays(40);
		        
        Date dt3=VerifyDate.CheckDates(dt,dt2);
        Integer totalDays = Date.daysInMonth(dt.year(), dt.month());
		Date lastDay = Date.newInstance(dt.year(), dt.month(), totalDays);
        
        System.assertEquals(dt3,lastDay );
    }
}