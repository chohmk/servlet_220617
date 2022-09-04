<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 정보</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  <style>
  	
  	header {height:50px; margin:10px;}
  	nav {height:50px;}
  	.content1 {height:280px;}
  	.content1-box {width:1200px; height:250px; border:1px solid green; margin-left:10px;}
  	.img1 {margin-top:12px; margin-left:12px; margin-bottom:12px;}
  	
  	.content2 {height:350px;}
  	
  	
  </style>
</head>
<body>
	<%
	// 아티스트 정보 

	Map<String, Object> artistInfo = new HashMap<>();
	artistInfo.put("name", "아이유");
	artistInfo.put("debute", 2008);
	artistInfo.put("agency", "EDAM엔터테인먼트");
	artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

	// 아이유 노래 리스트 
	List<Map<String, Object>> musicList = new ArrayList<>();

	Map<String, Object> musicInfo = new HashMap<>();
	musicInfo.put("id", 1);
	musicInfo.put("title", "팔레트");
	musicInfo.put("album", "Palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 2);
	musicInfo.put("title", "좋은날");
	musicInfo.put("album", "Real");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	musicInfo.put("time", 233);
	musicInfo.put("composer", "이민수");
	musicInfo.put("lyricist", "김이나");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 3);
	musicInfo.put("title", "밤편지");
	musicInfo.put("album", "palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	musicInfo.put("time", 253);
	musicInfo.put("composer", "제휘,김희원");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 4);
	musicInfo.put("title", "삐삐");
	musicInfo.put("album", "삐삐");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "이종훈");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 5);
	musicInfo.put("title", "스물셋");
	musicInfo.put("album", "CHAT-SHIRE");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 6);
	musicInfo.put("title", "Blueming");
	musicInfo.put("album", "Love poem");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail",
			"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
	%>
	
	<div class="wrap">
		<header>
			<div class="d-flex justify-content-start align-item-center">
				<h1 class="text-center">Melong</h1>
				<div class="row ml-5 w-25">
					<input type="text" class="form-control col-10"><button class="btn btn-info col-2">검색</button>
				</div>
			</div>
		</header>
		
		<nav class="nav nav-fill mt-4">
			<ul class="nav-item d-flex justify-content-start align-item-center">
				<li class="nav-link font-weight-bold text-dark">멜롱챠트</li>
				<li class="nav-link font-weight-bold text-dark">최신음악</li>
				<li class="nav-link font-weight-bold text-dark">장르음악</li>
				<li class="nav-link font-weight-bold text-dark">멜롱DJ</li>
				<li class="nav-link font-weight-bold text-dark">뮤직어워드</li>
			</ul>
		</nav>
		
		<section class="contents">
			<div class="content1">
				<div class="content1-box d-flex">
					<img class="img1" src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg" alt="아이유" width="220px">
					<div class="ml-4 mt-3">
						<div class="display-4 font-weight-bold">아이유</div>
						<div class="display-5 mt-3 font-weight-bold">EDAM엔터테인먼트</div>
						<div class="display-5 font-weight-bold">2008 데뷔</div>
					</div>
				</div>
			</div>
			<div class="content2">
				<table class="table text-center">
					<h2 class="display-5 font-weight-bold">곡 목록</h2>
					<thead>
						<tr class="row">
							<th class="col-3">no</th>
							<th class="col-3">제목</th>
							<th class="col-6">앨범</th>
						</tr>
					</thead>
					<tbody>
						<%
							
								
							
						%>
						<tr>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<%
							
						%>
					</tbody>
				</table>
			</div>
			
		</section>
		
		<footer class="mt-4 ml-3 text-secondary">Copyright 2021. melong All Right Reseved.</footer>
	</div>

</body>
</html>