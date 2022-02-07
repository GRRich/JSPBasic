<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Random ran = new Random();
	String[] jobs = {"어피치", "라이언", "무지", "제이지", "프로도", "튜브"}; //랜덤한 참가자명단
	List<String> list = new ArrayList<>(); //참가자가 저장될 list
%>
<%
	/*
	1. 랜덤한 참가자를 추출해서 list에 순서대로 저장
	2. 마지막에 참가한 사람과 중복된 사람의 명단을 숫자로 출력
	3. 리스트 크기가 10이되면 list.clear()이용해서 리스트 비우기
	*/
	
	int r = ran.nextInt(6); //0~5
	list.add( jobs[r] );
	
	int count = 0;
	for( String s : list ) {
		if(s.equals(jobs[r])){
			count++;
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		<b><%=jobs[r] %>님이입장</b>
		(같은 카카오 프렌드는 <%=count %>명입니다)
	</p>
	
		현재 구성정보:<%= list.toString() %>
		
	<%
		//크기가 10이면 출력후, 요소삭제
		if(list.size() == 10){
			list.clear();
		}
	%>	
	
	
</body>
</html>