<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//랜덤 로또번호 만들기
	/*
	1. 스크립트릿에 정수를 저장하는 list선언
	2. 1~45까지 랜덤한 정수를 만들고 리스트에 추가
	3. 중복되지 않는 숫자 6개를 저장, 값의 존재여부는 contains(값) 으로 확인
	4. size()가 6이 되면 탈출or조건을 잘세워서 완성
	5. 화면에 출력
	
	6. set구조를 이용해서도 처리 (한번 새로고침하면 전부 새로운숫자)
	*/
	
	ArrayList<Integer> list = new ArrayList<>();
	Random ran  =  new Random();
	
	while( list.size() < 6 ) {
		int ranNum = ran.nextInt(45) + 1;
		if( !list.contains(ranNum) ){
			list.add( ranNum );
		}
	}
	
	HashSet<Integer> set = new HashSet<>(); //중복 x
	
	while( set.size() < 6) {
		set.add(ran.nextInt(45) + 1);
	}
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=list.toString() %><br>
	<%=set.toString() %>

</body>
</html>