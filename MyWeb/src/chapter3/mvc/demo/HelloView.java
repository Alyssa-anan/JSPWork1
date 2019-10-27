package chapter3.mvc.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*; 

@WebServlet("/hello.view")
public class HelloView extends HttpServlet { 
    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {  
            String message=(String)req.getAttribute("message"); 
            PrintWriter out=resp.getWriter();
            out.println("<br><h2>");
            out.println(message);       
    }
}
