package chapter3.mvc.demo;

import java.io.*; 
import java.util.*; 

import javax.servlet.*; 
import javax.servlet.annotation.*;
import javax.servlet.http.*; 
 
@WebServlet("/login.do")
public class HelloServlet extends HttpServlet {
	private Map<String, String> map = new HashMap<>();
	public HelloServlet(){
		map.put("Smith", "123456");
		map.put("Angel", "654321");
		map.put("Adam", "000000");
		map.put("Eve", "666666"); 
	}
	
	private boolean is_OK(String userName, String password) {
 		if(map.containsKey(userName)) 
			if(map.get(userName).equals(password)) return true; 
        return false;		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	                       throws ServletException, IOException{
		 String userName=request.getParameter("userName");
		 userName=new String(userName.getBytes("ISO8859-1"),"GBK"); 
		 
		String password = request.getParameter("password");
		password = new String(password.getBytes("ISO8859-1"),"GBK");
 
		String message="µÇÂ½³É¹¦£¬OK£¡  ";
		if(!is_OK(userName,password))  message="µÇÂ½Ê§°Ü£¡";  
		
		   response.setContentType("text/html;charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head>");
			out.println("<title>µÇÂ¼³ÌÐò</title>");
			out.println("<head>");
			out.println("<center><h1>"+message+"</center></h1>");
			out.println("</head>");
			out.println("<body>"); 
			out.println("</html>"); 
		} 
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
	                 throws ServletException, IOException {
             doGet(request, response);
    }
}