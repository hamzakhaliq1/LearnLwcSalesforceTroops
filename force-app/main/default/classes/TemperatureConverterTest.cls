@isTest
public class TemperatureConverterTest {

    @isTest public static void testWarmTemp()
    {
     	Decimal celcius=TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11, celcius);
    }
    @isTest public static void testFreezingPoint()
    {
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0, celcius);
    }
    @isTest public static void testBoilingPoint()
    {
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(212);
        System.assertEquals(100, celcius, 'Boiling Point not Expected');
    }
    @isTest public static void testNegativePoint()
    {
        
		 	Decimal celcius = TemperatureConverter.FahrenheitToCelsius(-10);
        	System.assertEquals(-23.33, celcius);
   	}
    
    
}