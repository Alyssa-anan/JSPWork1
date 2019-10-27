<%@page contentType="text/html" pageEncoding="UTF-8"%> 
 <%@page import="java.util.*" %>
<jsp:useBean id="user" class="chapter5.filter.demo.User" scope="request"/>
<jsp:setProperty name="user" property="*"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" 
                content="text/html; charset=UTF-8">
        <title>登录页面</title>
    </head>
    <body>
 
 <!--
    <h1><jsp:getProperty name="user" property="name"/> 成功登录</h1>
--> 
      <h1>
       ${user.name} 成功登录

<%
       String[] names= {"smith","angel","yangmi"};
       request.setAttribute("array", names);  
%>
<h1>
名称一：${array[0]} <br>
名称二：${array[1]} <br>
名称三：${array[2]} <br>

<%
List<String> list=new ArrayList<String>();
list.add("AAAA");
list.add("BBBB");
 request.setAttribute("names", list);  
%>
<br>
用户：${names[1]}  <br> 

 
<%
       Map< String, String>   map=new HashMap<String, String>();
       map.put("user","smith");
       map.put("role","admin"); 
       request.setAttribute("login", map);  
%>
<br>
User: ${login.user} <br>
role: ${login.role} <br> 


<%
       Map< String, String>   map0=new HashMap<String, String>();
       map0.put("user name","smith110");
       map0.put("local.role","admin119"); 
       request.setAttribute("login0", map0);  
%>
<br> 

另一密码种写法:
<br>
User: ${login0["user name"]} <br>
role: ${login0["local.role"]} <br>


    </body>
</html>  