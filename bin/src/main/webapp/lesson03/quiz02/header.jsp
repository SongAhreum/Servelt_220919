<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!-- 로고 -->
		
<div class="logo col-2 d-flex align-items-center">
	<h2><a class="text-success" href="list_template.jsp">Melong</a></h2> 
</div>
			
			<!-- 검색 박스 -->

<div class="col-10 d-flex align-items-center ">
	<div class="col-8">
	<form action="/lesson03/quiz02/detail_template.jsp" method="post">	
			<div class="input-group">
			<%
			String searchWord = request.getParameter("search");
			if(searchWord != null){
				
			} else {
				searchWord = " ";
			}
			
			%>
				<input type="text" class="form-control" name="search" value="<%= searchWord %>">
				<div class="input-group-append">
					<button type="submit" class="btn btn-info ">검색</button>
				</div>
			</div>
	</form>
	</div>	
</div>
