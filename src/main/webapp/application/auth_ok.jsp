<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
	form으로 넘어온값과 세션에 저장된값을 비교해서 같은값이라면,
	authYN이라는 인증성공세션을 생성하고
	reserve.jsp로 리다이렉트합니다.
	
	두값이 다르면 다시 인증페이지로 리다이렉트
	*/
	
	String code = request.getParameter("code");
	String auth = (String)request.getParameter("auth");
	
	if( code.equals(auth) ){
		//인증세션
		session.setAttribute("authYN", true);
		response.sendRedirect("reserve.jsp");
	} else {
		response.sendRedirect("auth.jsp");
	}
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