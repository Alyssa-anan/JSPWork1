package com.servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyView.view")
public class MyView extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyView() {
        super();
    }
    private String htmlTemplate = 
    		"<html>"
    		+"<head>"
    		+"<meta http-equiv='Content-Type'"
    		+"	content='text/html;charset=UTF-8'>"
    		+"<title>login</title>"
    		+"</head>"
    		+"<body>"
    		+"<center>"
    		+"	<h1>%s</h1>"
    		+"</center>"
    		+"</body>"
    		+"</html>";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String message=(String)request.getAttribute("message");
		String html = String.format(htmlTemplate,message);
		response.getWriter().print(html);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
