<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String name = "smith";
    String password = "123456";

    boolean checkUser(String name, String password) {
        return this.name.equals(name) &&
                 this.password.equals(password);
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" 
               content="text/html; charset=UTF-8">
        <title>登入页面</title>
    </head>
    <body>
<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if(checkUser(name, password)) {
%>
    <h1><%= name %> 登录成功</h1>
<%
    } else {
%>
    <h1>登录失败</h1>
<%
    }
%>
    </body>
</html>  


