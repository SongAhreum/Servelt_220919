<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레이아웃(템플릿)</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<style> 
		header{height:50px;}
		.bottom{height:700px;}
		.contents{height:90%;}
		footer{height:10%;}
	</style>
</head>
<body>
	<div id="wrap" class="bg-dark">
	<!-- 같은폴더라 상대경로 header.jsp  <jsp:include page="header.jsp"/>구문닫는태그 꼭필요하나 이렇게 명시해도됨 -->
		<jsp:include page="header.jsp"/>
		<div class="bottom bg-warning d-flex">
			<jsp:include page="menu.jsp"/>
			<div class="bg-success col-10">
			<%
				//include page에 파일명을 껴넣고 있지만, Spring들어가면 서버가 바꿔주도록 자동으로되도록 구현할것임
				String contentNameSpring = "content1.jsp";
			%>
				<jsp:include page=<%=contentNameSpring %>/>
				<jsp:include page="footer.jsp"/>
			</div>
		</div>
	</div>
</body>
</html>
<!-- 검사를 눌러서 웹에서 보면 합쳐져서 보임 -->