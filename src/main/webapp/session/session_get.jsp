<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//세션사용하기
	//세션은 어느페이지에서나 사용할수있다. (단,브라우저가 꺼지기전까지or 기본30분)
	String user_id = (String)session.getAttribute("user_id");
	String user_name = (String)session.getAttribute("user_name");
	
	//세션 유효기간 확인
	int time = session.getMaxInactiveInterval();
	
	//특정세션 삭제
	session.removeAttribute("user_name");
	
	//모든세션 무효화
	session.invalidate();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	세션에 저장된 id:<%=user_id %><br>
	세션에 저장된 name:<%=user_name %><br>
	세션의 유효기간:<%=time %>
</body>
</html>