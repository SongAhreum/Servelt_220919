<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01-현재시간</title>
</head>
<body>
 <%-- 결과 페이지, 하나의 페이지 : 동적방식을쓰자 --%>
  현재 시간은? <br>
 	<%@ include file="date.jsp" %> <%-- 절대경로는 /로시작 --%>
</body>
</html>