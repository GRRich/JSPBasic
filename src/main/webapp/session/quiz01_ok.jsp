<%@page import="com.command.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	//한번에 세션을 적용할려면?
	//클래스를 적용하는방법.		
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	//세션에 저장하기 전에 student에 값을 저장
	
	Student stud = new Student(name, kor, eng, math);
	
	session.setAttribute("student", stud);//세션에 객체저장
	
	response.sendRedirect("quiz01_result.jsp");

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