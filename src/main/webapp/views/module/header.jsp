<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="https://em-content.zobj.net/source/twitter/376/skateboard_1f6f9.png">
<link rel="stylesheet" href="/resources/style/grid.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>My Board</title>
</head>
<body>
	<header>
		<h1><a href="/">My Board</a></h1>
		
		<%
		if(session.getAttribute("user") == null) {
		%>
		<button onclick="location.href='/login'">로그인</button>
		<%
		} else {
		%>
		<button onclick="location.href='/logoutPro'">로그아웃</button>
		<%
		}
		%>
	</header>
</body>
</html>