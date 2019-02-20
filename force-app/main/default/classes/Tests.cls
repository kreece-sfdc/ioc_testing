@isTest
public class Tests 
{
	@isTest
    static void Test()
    {
        IoC_Register.register('IFoo', 'Bar');
        string result = TestComponent_Controller.getSomething();
        system.assertEquals('bar', result);
    }
}