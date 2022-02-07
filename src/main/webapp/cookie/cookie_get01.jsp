<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//쿠키는 브라우저에서 자동으로 넘어오게되고 request에 담깁니다
	Cookie[] ck = request.getCookies();

	//쿠키를 사용하기전 null체크
	if(ck != null){
		for( Cookie c : ck ) {
			String cName = c.getName();
			String cValue = c.getValue();
			
			out.println(cName + "<br>"); //브라우저 출력
			out.println(cValue + "<br>"); //브라우저 출력
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

	<h2>쿠키</h2>
	<a href="cookie_get02.jsp">쿠키확인해보기</a>

</body>
</html>