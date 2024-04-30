<%@page import="boardServer.user.UserResponseDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<c:import url=""/header"/>
<body>
	<c:if test="${empty user }">
		<c:redirect url="/login"/>
	</c:if>

	<%
	if(session.getAttribute("user") == null)
		response.sendRedirect("/login");
	%>
	<section id="root">
		<h1>${user.name}님환영합니다!</h1>

		<button onclick="location.href='/updateUser'">회원정보 수정</button>
		<button onclick="location.href='/deleteUserForm'">회원 탈퇴</button>
	</section>
</body>
<c:import url=""/footer"/>
</html>