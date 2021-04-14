<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/cafe/css/w3.css">
<link rel="stylesheet" type="text/css" href="/cafe/css/user.css">
</head>
<body>
<!-- 구구단 5단 -->
	<%
		int num =5;
		int sum;
		
	%>
	<div class= "w3-center mxw600 w3-center w3-content">
		<h1 class="w3-red">5단</h1>
	<%
		for (int i=1; i<=9; i++){
			sum=num*i;
	
	%>
		 <div class="w3-blue">
		 <h3 class="inblock"><%=num %> x</h3>
		  <h3 class="inblock"><%=i%> = </h3>
		  <h3 class="inblock"><%=sum %></h3>
	 </div>
	<% 
		}
	%>
	
	</div>
</body>
</html>