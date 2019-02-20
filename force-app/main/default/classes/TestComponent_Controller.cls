public class TestComponent_Controller 
{
	@AuraEnabled
    public static string getSomething()
    {
        IFoo p_class = (IFoo)IoC_Controller.GetImplementation('IFoo', 'Foo');
        
        return p_class.getValue();
    }
}