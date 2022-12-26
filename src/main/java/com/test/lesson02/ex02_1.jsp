<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex02_1-get method</title>
</head>
<body>
<!-- jsp 내장객체 request response out-->
	<b>아이디 :</b>
	<%=request.getParameter("userId") %><br>
	<b>이름 :</b>
	<%=request.getParameter("name") %>
	<b>나이 :</b>
	<%=request.getParameter("age")%>
</body>
</html>