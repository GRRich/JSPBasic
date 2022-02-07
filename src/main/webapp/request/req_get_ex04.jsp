<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	String number = request.getParameter("number");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	주소를 통해 넘어온 이름: <%=name %>
	주소를 통해 넘어온 숫자: <%=number %>
</body>
</html>