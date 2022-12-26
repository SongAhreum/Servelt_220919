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

<title>계산기</title>
</head>
<body>
	
	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String cal = request.getParameter("calculation");
	double result = 0;
	/*
	내풀이
	if(cal.equals("+")){
		result = num1+num2;		
	}
	if(cal.equals("-")){
		result = num1-num2;	
	}
	if(cal.equals("x")){
		result = num1*num2;
		cal = "X";
	}
	if(cal.equals("%")){
		result = num1/(double)num2;	
	}
	*/
	
	String printCal = "";
	switch (cal) {
	case "+":
		result = num1 + num2;
		
		break;
	case "-":
		result = num1 - num2;
		
		break;
	case "*":
		result = num1 * num2;
		cal = "X";
		break;
	case "%":
		result = num1 /(double) num2;
		
	}
	
	%>
	
	<div class="container">		
		<h2>계산 결과</h2>
		<b class="display-3">
		<%=num1%> <%=cal%> <%=num2%> = </b>
		<b  class="text-primary display-3"><%=result%></b>		
	</div>
	
	<!--  학원풀이
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-3">
			<%
				// out.print(number1 + " " + printOperator + " " + number2 + " = ");
			%>
			<span class="text-primary">
			<%=result %>
			</span>
		</div>
	</div>
	
	 -->

</body>
</html>