<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/cafe/css/w3.css">
<link rel="stylesheet" type="text/css" href="/cafe/css/user.css">
<script type="text/javascript" src="/cafe/js/w3color.js"></script>
<script type="text/javascript" src="/cafe/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var el = $('h3');
		for(l=0; l< el.length; l++){
			$(el).eq(l).addClass(w3color[l]);
		}
	});
</script>
</head>
<body>
	<!-- 구구단을 출력하세요 -->
	<% 
		int num=2;
		int sum;
	%>
	<div class="w3-content w3-border w3-center inblock mxw600">
		<div class="w3-green" style="font-size:20px;">구구단</div>
	<%
		for(int j=0;j<8; j++){	
	%>	
		<div class="w3-border w3-quarter">
	
			<h3><%=num %>단</h3>
	
	<%	
			for(int i=1; i<=9; i++){
				sum=num*i;
				
	%>
			<h5><%=num %>x<%=i %>=<%=sum %></h5>
		
	<%
		}
	%>
		</div>
	<%
		num++;		
	}
	%>	
	</div>
</body>
</html>