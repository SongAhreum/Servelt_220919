<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//db연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
//select문
	String selectQuery = "select id, nickname from `seller`";
	ResultSet rs = ms.select(selectQuery);
%>

<section>
<form action="/lesson04/quiz03_insert" method="post">
			
<div class="m-5">
	<div class="display-3">물건올리기</div>
    <!-- 첫째줄 input -->
	<div class="d-flex mt-5 mb-4">
		<select class="form-control mr-5">
			<option >-아이디선택-</option>
		<%
		while (rs.next()){
		%>
       		<option value="<%=rs.getInt("id")%>"><%=rs.getString("nickname") %></option>	        
    	<%
		}
	ms.disconnect();		
    	%>
    	</select>
    	<input class="form-control"  placeholder="제목" name="title">
    				
    	<div class="input-group ml-5">
    		<input class="form-control" placeholder="가격" name="price">
    		<div class="input-group-append">
    			<span class="input-group-text">원</span>	
    		</div>
    	</div>  				
	</div>
	<!-- textarea -->
	<div>
		<textarea class="form-control" rows="5" name="description"></textarea>
	</div>
	<!-- 이미지 url ,저장버튼 -->	
	<div class="input-group mt-4">
		<div class="input-group-prepend">
    		<span class="input-group-text">이미지url</span>	
    	</div>
		<input class="form-control" name="picture">
	</div>

	<input class=" btn btn-block mt-4" type="submit" value="저장"><!-- "btn btn-light form-control버튼태그로하면 배경색이 안들어감-->			
</div>
		
</form>
</section>