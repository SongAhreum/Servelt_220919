<%@page import="java.sql.*"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자들</title>
</head>
<body>
<%
	//db연결
	MysqlService ms =  MysqlService.getInstance();
	ms.connect();
	
	//db selelt query
	String selectQuery = "select * from `new_user`";
	ResultSet result = ms.select(selectQuery);
	
%>

	<h1>사용자들</h1>
	<table border ="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>자기소개</th>
				<th>이메일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
		while(result.next()){
		%>
			<tr>
				<td><%=result.getInt("id") %></td>
				<td><%=result.getString("name") %></td>
				<td><%=result.getString("yyyymmdd") %></td>
				<td><%=result.getString("introduce") %></td>
				<td><%=result.getString("email") %></td>
				<!-- 삭제버튼만들기(request버튼) : 클릭하면 넘어가기(해당id를넘겨 서블렛삭제요청)서블렛으로 보냈다가 다시 돌아오기(redirect) -->
				<td><a href="/lesson04/ex04_delete?id=<%=result.getInt("id") %>">삭제하기</a></td> 
			</tr>
		<%
		}
		%>	
		</tbody>
	</table>

<%
	//db연결해제
	ms.disconnect(); //resultset까지 다사용한상태에서 disconnect
%>
</body>
</html>