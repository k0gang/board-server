<%@page import="boardServer.user.UserResponseDto"%>
<%@page import="boardServer.user.UserRequestDto"%>
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
request.setCharacterEncoding("UTF-8");

UserDao userDao = UserDao.getInstance();

UserResponseDto user = (UserResponseDto) session.getAttribute("user");

String id = user.getId();
String password = request.getParameter("password");

// 패스워드가 일치하면 -> 삭제 처리 
UserRequestDto userDto = new UserRequestDto();

userDto.setId(id);
userDto.setPassword(password);

boolean result = userDao.deleteUser(userDto);

if(result) {
	session.removeAttribute("user");
	response.sendRedirect("/");
} else {	
	response.sendRedirect("/deleteUserForm");
}

%>
</body>
</html>