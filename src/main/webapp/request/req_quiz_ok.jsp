<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//한글처리
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String[] inter = request.getParameterValues("inter");
	
	String major = request.getParameter("major");
	String region = request.getParameter("region");
	String myself = request.getParameter("myself");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %><br>
	<%=pw %><br>
	<%=Arrays.toString(inter) %><br>
	<%=major %><br>
	<%=region %><br>
	<%=myself %><br>

</body>
</html>