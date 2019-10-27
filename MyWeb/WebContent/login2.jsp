<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="chapter5.filter.demo.User" scope="request"/>
<jsp:setProperty name="user" property="name" param="n0" /> 

<jsp:setProperty name="user" property="password" param="p0"/> 
<html>
    <head>
        <meta http-equiv="Content-Type" 
                content="text/html; charset=UTF-8">
        <title>登录页面</title>
    </head>
    <body>
<%
    if(user.isValid()) {
%>

   <h1><jsp:getProperty name="user" property="name"/>ghgh 成功登录</h1> 

<%
    }
    else {
%>
    <h1>登录失败</h1>
<%
    }
%>
    </body>
</html>  