package com.servlet;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private MyModel m = new MyModel();
	private String name,pwd,answer;
	private static final long serialVersionUID = 1L;

    public MyController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		name=request.getParameter("username");
		pwd=request.getParameter("password");
		response.setContentType("text/html;charset=UTF-8");
		
		if(name==null&&pwd==null)	{
			response.sendRedirect("MyView.jsp");
		}else {
			try {	
			answer = m.getDBConnection(name, pwd);
			if(answer.equals("yes")) {
				request.setAttribute("message", "µÇÂ¼³É¹¦£¡");
				request.getRequestDispatcher("MyView.view").forward(request, response);
			}else {
				request.setAttribute("message", "µÇÂ¼Ê§°Ü£¡");
				request.getRequestDispatcher("MyView.view").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
