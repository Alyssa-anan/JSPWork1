<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
</head>
<body>
	<form action="MyController" method="get">
	<center>
		<h1>请输入相应信息</h1>
		<td>用户：</td>
		<td><input type="text" name="username"></td><br><br>
		<td>密码：</td>
		<td><input type="text" name="password"></td><br><br>
			<input type="submit" value="提交" >
	</center>
	</form>

</body>
</html>