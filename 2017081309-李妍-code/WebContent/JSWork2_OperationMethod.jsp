<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>运算方法</title>
</head>
<body>
	7和8加减乘除运算结果：<p id="demo"></p>
	一个数的n次方：<p id="demo1"></p>
	<script type="text/javascript">
	function myFunction(x,y){
		var z=[1,2,3,4];
		z[0]=x+y;
		z[1]=x-y;
		z[2]=x*y;
		z[3]=x/4;
		
		return z;
	}
	var z=myFunction(7,8);
	document.getElementById("demo").innerHTML = z;
	
	function myFunction1(a,b){
		var c=1;
		for(var i=1;i<=b;i++){
			c=c*a;
		}
		return c;
	}
	var a=myFunction1(3,4);
	document.getElementById("demo1").innerHTML = a;
	
	</script>
</body>
</html>