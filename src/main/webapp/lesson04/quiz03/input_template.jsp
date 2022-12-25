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

<style type="text/css">
 
 header{height:100px; background-color:coral}
 nav{height:60px; background-color:coral}
 footer{height:100px}
 a{text-decoration: none;}
 
 .logo{color: white; text-decoration: none;}
 .logo:hover{color:#E5D1D1; text-decoration: none;}
 .nav-link{color: white; font-size:1.2em }
 .nav-link:hover{color: white; text-decoration: none;}
 .goods-box{height:290px;width:340px; border: 2px solid coral; padding:10px; margin:10px}
 
</style>

<title>Hong당무 마켓</title>
</head>
<body>
	<div class="container">
		<!-- 상단로고,메뉴 -->
		<jsp:include page="/lesson04/quiz03/header.jsp"/>
		
		<!-- contents input -->
		<section>
			<div class="d-flex">
				
				<div>물건올리기</div>
				<select>
        			<option>-아이디선택-</option>
       			 	<option></option>
        			        
    			</select>
    			<input >
    			<input><botton></botton>
			</div>
			<div>
				<textarea></textarea>
			</div>
			
			<botton class="btn">이미지url</botton><input>
		</section>
		
		<botton class="btn btn-light" type="submit">저장</botton>
		
		<jsp:include page="/lesson04/quiz03/footer.jsp"/>
	
	</div>
</body>
</html>