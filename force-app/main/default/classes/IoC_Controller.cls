public class IoC_Controller 
{
    public static IoC_Interface getImplementation(string p_interface, string p_default)
    {
        string p_class = IoC_Register.retrieve(p_interface);
        system.debug(p_class);
        if(p_class == null && p_default == null)
        {
            throw new IoC_NoImplementationException();
        }
        else if(p_class == null && p_default != null)
        {
            p_class = p_default;
        }

        Type t = Type.forName(p_class);
        
        if(t == null)
        {
            throw new IoC_InvalidImplementationException();
        }
        
        return (IoC_Interface)t.newInstance();
    }
}