<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI계산</title>
</head>
<body>
<%
	int weight  =Integer.parseInt( request.getParameter("weight"));
	int height = Integer.parseInt( request.getParameter("height"));
	double BMI = (double)weight / ((height*height)*10000);
	
%>

<h2><b>BMI</b>측정 결과</h2>
<p>당신은 <%=result%>입니다</p>

</body>
</html>