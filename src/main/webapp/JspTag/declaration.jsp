<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
    //선언자는 화면에서 전역적으로 사용할 멤버변수, 메서드를 선언하는곳
    int i = 10; //멤버변수가 됨
    String str = "WEB ALLPICATION";
    
    public int method(int a, int b){
    	return a + b;
    }
    
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	i값: <%=i %><br>
	str값: <%=str %><br>
	메소드호출: <%=method(2,3) %>

</body>
</html>