<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/lesson04/ex02_insert">
	<p>
		<b>이름</b>
		<input type="text" name="name"><br>
	</p>
	
	<p>
		<b>생년월일</b>
		<input type="text" name="yyyymmdd"><br>
	</p>
	
	<p>
		<b>이메일</b>
		<input type="text" name="email"><br>
	</p>
	
	<p>
		<b>자기소개</b>
		<textarea type="text" name="introduce"></textarea><br>
	</p>
	<button type="submit" >추가</button>
</form>

</body>
</html>