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
          //name=new String(name.getBytes("ISO-8859-1"),"UTF-8");//����TomcatĬ���ַ�������iso-8859-1
         
         response.setContentType("text/html;charset=utf-8");       
         PrintWriter out=response.getWriter();   //��charset�Զ�ת��           
         
        out.println("<html>");
        out.println("<head>"); 
        out.println("<title>" + "--Encoding--"+ "</title>");
        out.println("</head>");
        out.println("<body><h1>");  
        out.println("(Get����)�õ��������������Ϣ��"+name); 
        out.println("</h1></body>");
        out.println("</html>"); 
    }

    
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException { 
      
            String name=request.getParameter("namePost"); 
            /**�������仰�����������£�
             String name=request.getParameter("namePost");
             name=new String(name.getBytes("ISO-8859-1"),"utf-8");//����TomcatĬ���ַ�������iso-8859-1
            */ 
           response.setContentType("text/html;charset=utf-8");              
           PrintWriter out=response.getWriter();  //��charset�Զ�ת��           
           out.println("<html>");
           out.println("<head>"); 
           out.println("<title>" + "Encoding"+ "</title>");
           out.println("</head>");
           out.println("<body><h1>");  
           out.println("(Post����)�õ��������������Ϣ��"+name);  
           out.println("</h1></body>");
           out.println("</html>"); 
    }
}
