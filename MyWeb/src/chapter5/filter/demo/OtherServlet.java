package chapter5.filter.demo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/otherservlet")
public class OtherServlet extends HttpServlet {
	  protected void process(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException {   
           String username=request.getParameter("username");
           String password=request.getParameter("password");
         
           response.setContentType("text/html;charset=utf-8");      
           PrintWriter out=response.getWriter();       
           out.println("<h1>--客户端刚输入的信息--");
         
           out.println("<br>用户名:"+username+"<br>");
           out.println("密码:"+password);
    } 
	
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException {  
                   process(request, response); 
    } 
    
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException { 
               process(request, response); 
    }
}
