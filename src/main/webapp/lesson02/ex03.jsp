<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Ex03-POST Method form 태그</title>
</head>
<body>
	<form action="/lesson02/ex03_1.jsp" method="post">
 		1.별명은 무엇입니까
		<input type="text" name="nickname"><br><br>
		2.취미는 무엇입니까
		<input type="text" name="hobby"><br><br>
		3.강아지 or 고양이
		<!-- radio타입에서 1.for지정 2.for에연결될 id값 2.name으로 그룹화 , 서버로넘어감 4.데이터로 남길 value값 -->
		<label for="dog">강아지</label><input type="radio" name="animal" value="dog" checked>
		<label for="cat">고양이</label><input type="radio" name="animal" value="cat"><br><br>
		4.다음중 선호하는 것을 모두 고르시오<br><br>
		<label>민트초코<input type="checkbox" name="food" value="민트초코"></label>
		<label>하와이안피자<input type="checkbox" name="food" value="하와이안피자"></label>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label><br><br>
		5.좋아하는 과일을 선택하세요<br>
		<select name = "fruit">
			<option value="선택값이 없습니다">--선택--</option>
			<option>사과</option> <!-- 이걸선택하면 서버로 사과가 넘어감, apple로 보내려면 value="apple" -->
			<option>바나나</option>
			<option>복숭아</option>
			<option>딸기</option>
			<option>포도</option>
		</select><br><br>
		
		<!--<intput type="submit" value="제출">  -->
		<button type="submit" > 제출</button>
		
		
	</form>
</body>
</html>