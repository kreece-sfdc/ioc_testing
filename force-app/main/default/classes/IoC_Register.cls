public class IoC_Register 
{
	private static Map<string, string> register = new Map<string, string>();
    
    public static void register(string p_interface, string p_class)
    {
        register.put(p_interface, p_class);
    }
    
    public static string retrieve(string p_interface)
    {
        if(register.containsKey(p_interface))
        {
	        return register.get(p_interface);            
        }
		
        return null;
    }
}