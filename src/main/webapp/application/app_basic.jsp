<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
	application은 session과 사용방법이 거의동일
	단, 생명주기가 톰캣을 stop할때 까지 1개유지된다.
	*/
	
	int total = 0;

	if( application.getAttribute("total") != null ){
		total = (int)application.getAttribute("total"); //있다면 꺼내서 total값에 저장
	}
	total++;
	
	application.setAttribute("total", total); //저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	토탈값:<%=total %>

</body>
</html>