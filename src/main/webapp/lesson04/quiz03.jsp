<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
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

<style>
wrap {
	width: 1000px;
	height: 850px;
}

header {
	width: 1000px;
	height: 100px;
	text-align: center;
	background-color: orange;
	color: white;
	font-size: 40px;
}

nav {
	width: 1000px;
	height: 100px;
	text-align: center;
	background-color: orange;
	color: white;
	font-size: 25px;
	font-weight: bold;
}

section {
	width: 1000px;
	height: 500px;
	flex-wrap: wrap;
}

.div-box1 {
	width: 300px;
	height: 300px;
	border: 3px solid orange;
}
.div-img {
	text-align: center;
}


</style>
</head>
<body>

	<%
	// DB연결
	MysqlService ms = MysqlService.getInstance();
	ms.connection();

	// select db
	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId;";
	ResultSet result = ms.select(selectQuery);
	%>
	<div class="wrap container">
		<jsp:include page="/lesson04/header.jsp" />
		<jsp:include page="/lesson04/nav.jsp" />
		<section class="d-flex justify-content-between">
			<%
			while (result.next()) {
			%>

			<div class="div-box1">
				<div class="div-img"><img src="<%=result.getString("picture")%>" width="280px"></div>
				<div><%=result.getString("title")%></div>
				<div><%=result.getInt("price") + "원"%></div>
				<br>
				<div><%=result.getString("nickname") + "원"%></div>
			</div>

			<%
			}
			%>
		</section>
		<footer></footer>
	</div>

</body>
</html>