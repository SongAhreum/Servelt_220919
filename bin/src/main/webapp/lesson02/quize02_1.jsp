<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>Quize02_1</title>
</head>
<body>

	<%
	/*
	내풀이
	LocalTime timeNow = LocalTime.now();
	DateTimeFormatter formatterDate = DateTimeFormatter.ofPattern("현재시간은 HH시 mm분 ss초 입니다.");
	String formatetimedNow = timeNow.format(formatterDate);
	
	LocalDate now = LocalDate.now();
	DateTimeFormatter formatterTime = DateTimeFormatter.ofPattern("현재 날짜는 yyyy년 MM월 dd일 입니다");
	String formatedDateNow = now.format(formatterTime);
	
	String type = request.getParameter("type");
	if(type.equals("time")){
		out.print(formatetimedNow);
	} else if(type.equals("date")){
		out.print(formatedDateNow);
	}
	
	*/
	
	 //수업풀이
	String type = request.getParameter("type");
	Date now = new Date();
	SimpleDateFormat sdf;
	
	if (type.equals("time")) {
		// 시간 출력
		sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	} else {
		// 날짜 출력
		sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일 입니다.");
	}
	String result = sdf.format(now);
	%>
	<div class="container">
		<div class="display-4"><%=result %></div>
	</div>
</body>

</html>