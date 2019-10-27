package chapter5.filter.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/encoding")
public class EncodingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException {   
            
          String name=request.getParameter("nameGet");
          //name=new String(name.getBytes("ISO-8859-1"),"UTF-8");//假设Tomcat默认字符编码是iso-8859-1
         
         response.setContentType("text/html;charset=utf-8");       
         PrintWriter out=response.getWriter();   //按charset自动转换           
         
        out.println("<html>");
        out.println("<head>"); 
        out.println("<title>" + "--Encoding--"+ "</title>");
        out.println("</head>");
        out.println("<body><h1>");  
        out.println("(Get方法)得到浏览器的请求信息："+name); 
        out.println("</h1></body>");
        out.println("</html>"); 
    }

    
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException { 
      
            String name=request.getParameter("namePost"); 
            /**以上两句话的替代语句如下：
             String name=request.getParameter("namePost");
             name=new String(name.getBytes("ISO-8859-1"),"utf-8");//假设Tomcat默认字符编码是iso-8859-1
            */ 
           response.setContentType("text/html;charset=utf-8");              
           PrintWriter out=response.getWriter();  //按charset自动转换           
           out.println("<html>");
           out.println("<head>"); 
           out.println("<title>" + "Encoding"+ "</title>");
           out.println("</head>");
           out.println("<body><h1>");  
           out.println("(Post方法)得到浏览器的请求信息："+name);  
           out.println("</h1></body>");
           out.println("</html>"); 
    }
}
