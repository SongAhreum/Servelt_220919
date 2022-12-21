<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex0 5- Calendar</title>
</head>
<body>
	
<%
	//Date date = new Date();
	Calendar today = Calendar.getInstance(); //싱글톤이아님, 메서드이름만같음
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	//out.print(sdf.format(today)) 500서버오류뜸, consol보기!!
	//format함수에 Date객체를 넣어야함. 변환메서드가잇음
	out.println(sdf.format(today.getTime())+"<br>");
	
	//어제날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); //하루전
	//yesterday.add(Calendar.MONTH, -1); 한달전
	//yesterday.add(Calendar.YEAR, -1); 1년전
	
	out.print("어제날짜 : "+ sdf2.format(yesterday.getTime())+"<br>");
	 
	//두 날짜비교
	//compareTo
	//-1 0 1
	
	int result = today.compareTo(yesterday) ;
	if (result > 0){
		out.print("today가 크다");
	} else if (result == 0){
		out.print("두날짜는 같다");
	} else if (result < 0){
		out.print("today가 작다");
	}
%>	
	
	
</body>
</html>