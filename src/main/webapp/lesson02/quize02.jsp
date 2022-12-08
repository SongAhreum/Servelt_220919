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

<title>Quize02</title>
</head>
<body>
<div class="container">	
	<h1>날짜, 시간 링크</h1>
<!--
 	내코드
	<div class="d-flex">
	<button class= "form-control btn btn-info col-2 mr-1 "><a href="/lesson02/quize02_1.jsp?type=time" target="_self" >현재 시간 확인</a></button>
	<button class= "form-control btn btn-primary col-2"><a href="/lesson02/quize02_2.jsp?type=date" target="_self" >현재 날짜 확인</a></button>
	</div> 
-->	
 	<!-- 수업내용 -->
 	<div class="mt-5">
			<a class="btn btn-info" href="/lesson02/quize02_1.jsp?type=time">현재 시간 확인</a>
			
			<a class="btn btn-success" href="/lesson02/quize02_1.jsp?type=date">현재 날짜 확인</a>
	</div>
</div>

</body>
</html>