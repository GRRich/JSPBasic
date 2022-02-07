<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id"); //폼값을 받을떈 파라미터
	String name = (String)request.getAttribute("name"); //셋어트리뷰트는 겟어트리뷰트로
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	리퀘스트에 담긴값:<%=id %><br>
	리퀘스트 강제값:<%=name %>

</body>
</html>