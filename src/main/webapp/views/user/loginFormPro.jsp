<%@page import="boardServer.user.UserResponseDto"%>
<%@page import="boardServer.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		boolean isValid = true;
		
		if(id == null || id.equals(""))
			isValid = false;
		else if(password == null || password.equals(""))
			isValid = false;
		
		if(isValid) {
			// 연동된 데이터 베이스로부터		(UserDao)
			// 유저의 정보를 조회 하고,		(findUserByIdAndPassword())
			// 정보가 일치하면				(return된 UserResponseDto가 null이 아니면)
			// 로그인 처리 후, 페이지 이동		(jsp 내장객체 중 session에 유저정보 저장)
			
			UserDao userDao = UserDao.getInstance();
			UserResponseDto user = userDao.findUserByIdAndPassword(id, password);
			
			if(user != null) {
				session.setAttribute("user", user);
				response.sendRedirect("/mypage");				
			} else {
				response.sendRedirect("/login");				
			}
		} else {
			response.sendRedirect("/login");
		}
	%>
</body>
</html>