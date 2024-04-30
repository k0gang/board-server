<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/style/form.css">
</head>
<jsp:include page="/header" />
<script src="/resources/script/validation-login.js"></script>
<body>
	<%
	if(session.getAttribute("user") == null)
		response.sendRedirect("/login");
	%>
	<section id="root">
		<h2>회원 탈퇴</h2>
		<form method="POST" action="/deleteUserFormPro">
			<div>
				<input type="text" id="id" name="id" value="${user.id }" disabled >
				<input type="password" id="password" name="password" placeholder="비밀번호">
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
				<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
			</div>
			
			<input type="submit" value="회원탈퇴">
		</form>
	</section>
</body>
<jsp:include page="/footer" />
</html>