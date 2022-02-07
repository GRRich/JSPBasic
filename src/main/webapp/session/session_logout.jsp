<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//로그아웃
	//session.removeAttribute("user_id"); //...등 세션을 하나씩 지우는방법
	
	session.invalidate(); //세션전체삭제
	response.sendRedirect("session_login.jsp");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>