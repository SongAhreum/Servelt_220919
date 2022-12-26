<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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

<title>즐겨찾기 목록</title>
</head>
<body>
<%
//db연결
	MysqlService ms =  MysqlService.getInstance();
	ms.connect();

//select문
	String selectQuery = "select * from `favorite`order by id desc";	
	ResultSet rs = ms.select(selectQuery);

%>

<div class="container">
	<div class="display-4 text-center mt-3">즐겨찾기 목록</div>
	<table class = "table text-center mt-4">
		<thead>
			<tr>
				<th><b>사이트</b></th>
				<th><b>사이트주소</b></th>
				<th><b>삭제</b></th>
			</tr>
		</thead>
		<tbody>
			<%
			while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString("name") %></td>
				<td><a href="<%=rs.getString("url")%>"><%=rs.getString("url")%></a></td>
				<td><a href="/lesson04/quiz02_delete?id=<%=rs.getString("id")%>" class="btn btn-info ">삭제하기</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
			
	</table>	
</div>

<%
	ms.disconnect();
%>
</body>
</html>