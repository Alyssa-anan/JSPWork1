package chapter3.mvc.demo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello.do")
public class HelloController extends HttpServlet { 
    private HelloModel model = new HelloModel();
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)   throws ServletException, IOException { 
                      String name=request.getParameter("user");
                      String message=model.doHello(name); 
                      request.setAttribute("message",message); 
                      request.setAttribute("message", message);
                      RequestDispatcher dispatcher = request.getRequestDispatcher("hello.view");
                      dispatcher.forward(request,response);

    }
}
