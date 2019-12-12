<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>水仙花数</title>
</head>
<body>
1000以内的水仙花数
	<script>
		var a,b,c;
		for(var i=100;i<1000;++i){
			a=i%10;
			a=parseInt(a);
			b=((i/10)%10);
			b=parseInt(b);
			c=(i/100);
			c=parseInt(c);
			
			if(i==a*a*a+b*b*b+c*c*c){
				document.write(i+" ");
			}
		}
	</script>

</body>
</html>