<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>字符串一系列操作Insert title here</title>
</head>
<body>
	字符串子串:<p id="demo"></p>
	剪切字符串1：<p id="demo1"></p>
	剪切字符串2：<p id="demo2"></p>
	字符串替换：<p id="demo3"></p>
	数组排序：<p id="demo4"></p>
	<script type="text/javascript">
		function myFunction(a){
			var arr = a.split(" ");
			return arr;
		}
		document.getElementById("demo").innerHTML = myFunction("Hello World");
		
		function myFunction1(a,b,c){
			var str = a.substr(b,c);
			return str;
		}
		document.getElementById("demo1").innerHTML = myFunction1("Apple, Banana, Orange",7,6);
		
		function myFunction2(a,b,c){
			var str = a.slice(b,c);
			return str;
		}
		document.getElementById("demo2").innerHTML = myFunction2("Apple, Banana, Orange",7,13);
		
		function myFunction3(a,b,c){
			a=a.replace(b,c);
			return a;
		}
		document.getElementById("demo3").innerHTML = myFunction3("hello world","hello","Hello");
		
		function myFunction4(a){
			a=a.sort();
			return a;
		}
		var a=[1,4,6,2,7,3,9,0];
		document.getElementById("demo4").innerHTML = myFunction4(a);
		</script>

</body>
</html>