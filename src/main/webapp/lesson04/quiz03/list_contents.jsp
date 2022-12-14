<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
//db연결
MysqlService ms =  MysqlService.getInstance();
ms.connect();

//select 쿼리
String selectQuery = "select B.nickname, A.title, A.price, A.picture from `used_goods` as A	inner join `seller` as B on B.id = A.sellerId";
ResultSet rs = ms.select(selectQuery);
%>
<section>
	<div class="d-flex flex-wrap justify-content-between align-items-center">
		<%
		while(rs.next()){
		%>
		<div class="goods-box">
			<%
			if(rs.getString("picture") != null){
						
			%>
			<div class="goods-image-box" >
				<img class="w-100" alt="제품이미지" src="<%=rs.getString("picture")%>">
			</div>
			<%
			} else {
				
			%>
			<div class="goods-image-box d-flex justify-content-center align-items-center">
					<h4 class="text-secondary">이미지 없음</h4>
			</div>
			<%
			}
			%>
			<div class="title mt-1"><%= rs.getString("title") %></div>
			<div class="price mt-1"><%= rs.getString("price") %>원</div>
			<div class="nickname mt-1"><%= rs.getString("nickname") %></div>
		</div>
		<%
		}
		%>
	</div>
</section>
<%
//db연결해제
ms.disconnect();
%>
