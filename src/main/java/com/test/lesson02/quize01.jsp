<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quize01</title>
</head>
<body>
	<%!
	public int getSum(int n){
		int sum =0;
		for(int i =1; i <=n; i++){
			sum += i;
		}
		return sum;
	}
	%>
	
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum1 = 0;
	for(int i=0;i< scores.length; i++){
		sum1 += scores[i];
	}
	double average = (double)sum1 / scores.length; 
	%>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int sum2 = 0;
	for(int i = 1; i < scoreList.size();i++){
		if(scoreList.get(i).equals("O")){
			sum2 += 1;
		}
	}
	double score = (double) sum2 / scoreList.size() *100;	
	%>
	<%
	String birthDay = "20010820";
	int birthYear = Integer.parseInt(birthDay.substring(0,4));
	int age = 2022 - birthYear +1;
	
	out.print(birthYear); //printWriter를 임포트하지않아도 출력가능
 	%><br>
	<b style ="font-size:1.5em">
	1부터 50까지의 합은 <%=getSum(50)%>입니다.<br>
	평균점수는 <%=average%>입니다.<br>
	채점결과는 <%=score%>점 입니다.<br>
	20010820의 나이는 <%=age%>입니다. 
	</b>
	
	
</body>
</html>