<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01</title>
</head>
<body>
	<!--html 주석 : 소스보기에서 보인다(jsp도 html기반이라 html주석가능)  -->
	<%--JSP 주석 : 소스보기에서 보이지 않는다 둘중에 아무거나 쓰자아 --%>
<%
//자바문법 ,자바의 영역	 
//scriptlet이라부름 (main 메서드를 만든다는느낌)
	int sum = 0;
	for(int i =1; i <= 10; i++){
		sum += i;
	}
	//해석되서 전달, 소스에 안보임
%>
	<b>합계 :</b>
	<input type= "text" value = "<%=sum %>"><br>
<%!  //선언문 : 변수와 메서드 선언(main이외의 일종의 클래스르 만드는 영역)
	
	//필드
	private int num = 100;
	//메서드
	public String getHelloWorld(){
		return "HelloWorld";
	}
%>	
<%=num //같은공간이라 private라도 쓸수잇음//연산가능
%><br>
<%= num+200 %><br>
<%=getHelloWorld()%>
<%
 	List<Integer> list = new ArrayList<>();  //import는 control spacebar
%>
</body>
</html>