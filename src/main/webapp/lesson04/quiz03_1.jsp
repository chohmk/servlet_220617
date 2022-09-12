<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
<%
	//db 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connection();
	
	// selectQuery
	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId;";
	ResultSet result = ms.select(selectQuery);
%>

	
	<div class="wrap container">
		<h1>물건 올리기</h1>
		<form method="post" action="/lesson04/quiz3.jsp">
			<div class="d-flex">
				<select class="row d-flex text-center mt-5">
				<option class="form-control">--아이디 선택-</option>
				<%
					while(result.next()) {
						
				%>
					
					<option><%= result.getString("nickname") %></option>
				<%
					}
				%>
				</select>
				
				<input type="text" name="title" id="title" placeholder="제목" class="form-control col-3 ml-5 mt-5">
				<input type="text" name="price" id="price" placeholder="가격" class="form-control col-2 ml-5 mt-5">
			</div>
			
			<textarea name="textarea" cols="50" rows="10" class="w-75 mt-5"></textarea>
			<div class="d-flex">
				<button>이미지url</button><input type="text" class="form-control w-75">
			</div>
			<button class="submit form-control mt-3 bg-secondary col-9">저장</button>
		</form>
	</div>

</body>
</html>