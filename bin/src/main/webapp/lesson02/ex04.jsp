<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용하기</title>
</head>
<body>
<%
	//Map을 테이블로 표현하기
	// {"korean"=85, "english"=72, "math"=90, "science"=100}
	// java.util.* 패키지를 import 해야한다.
	Map <String,Integer> scoreMap = new HashMap<>();
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 90);
	scoreMap.put("science", 100);
%>
		<table border=1>
			<%
			//Set<String> keys = scoreMap.keySet();
			//Iterator<String> it = keys.iterator();
			Iterator<String> it = scoreMap.keySet().iterator(); 
			while(it.hasNext()){
				String key = it.next();
				//스클립틀릿 사이에 html코드를 넣을수있다. 제어문쓸때 구간 잘 볼것 
			%>
			<tr>
				<th>
				<%-- <%= key %> --%>
				<%
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
				%>
				</th>
				<td> <%= scoreMap.get(key) %></td>
			</tr>
			<%
			}
			%>
		</table>
</body>
</html>