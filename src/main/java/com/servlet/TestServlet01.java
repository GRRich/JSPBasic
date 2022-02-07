package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1st - 서블릿의 요청을 구분하는 방법
@WebServlet("/banana") //어노테이션 중복x 고유한이름 실행시 url뒤에 붙어있음
public class TestServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TestServlet01() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("hello world");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
