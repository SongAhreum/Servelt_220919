<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

</head>
<body>
	<%
	double cm = Integer.parseInt(request.getParameter("cm"));	
	String[] unitChange = request.getParameterValues("unit");	
	%>

	<h1>길이변환결과</h1>
	<b style ="font-size:1.5em">
	<%=cm%>cm
	<hr>
	<%
	if(unitChange != null){
		for(String unit: unitChange){
			if(unit.equals("in")){
				double in = cm * 0.393701;
				out.print(in +"in<br>");
			} else if (unit.equals("yd")) {
				double yd = cm *0.0109361;
				out.print(yd +"yd<br>");
			} else if (unit.equals("ft")) {
				double ft = cm* 0.0328084;
				out.print(ft +"ft<br>");
			} else if (unit.equals("m")) {
				double m = cm* 0.01;
				out.print(m +"m<br>");
			}
		}	
	}
	%>
	<!-- 수업코드 말고 내코드는 노션에 저장해놓음  -->
	</b>
</body>
</html>