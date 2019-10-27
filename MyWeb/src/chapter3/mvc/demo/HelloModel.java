package chapter3.mvc.demo;
import java.util.*; 
public class HelloModel {
    private Map<String, String> messages 
                = new HashMap<String, String>();
    
    public HelloModel() {
        messages.put("angel", "Hello");
        messages.put("smith", "Welcome");
        messages.put("momor", "Hi");
    }

    public String doHello(String user) {
        String message = messages.get(user);
        return message + ", " + user + "!";
    }
}
