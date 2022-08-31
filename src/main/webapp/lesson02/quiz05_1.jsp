<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz05</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		int cm = Integer.valueOf(request.getParameter("length"));
		// checkbox 같은 여러 파라미터를 한번에 받아올 때 getParameterValues
		String[] unitArr = request.getParameterValues("unit");
		// out.print(unitArr);
		
		// cm * 0.39370
		// cm * 0.0109361
		// cm * 0.0328084
		// cm * 0.01
		
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3>
		<hr>
		<h2>
			<%
				for (String unit : unitArr) {
					if (unit.equals("inch")) {
						double inch = cm * 0.39370;
						out.print(inch + "in <br>");
					} else if (unit.equals("yard")) {
						double yard = cm * 0.0109361;
						out.print(yard + "yd <br>");
					} else if (unit.equals("feet")) {
						double feet = cm * 0.0328084;
						out.print(feet + "ft <br>");
					} else if (unit.equals("meter")) {
						double meter = cm * 0.01;
						out.print(meter + "m <br>");
					}
				}
			
			%>
		</h2>
		
		
		
		
		
	</div>
</body>
</html>