package com.test.lesson04;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01_insert")
public class InsertQuiz01 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connection();
		
		// insert DB
		String insertQuery = "insert into `favorite` (`name`, `url`)"
				+ " values ('" + name + "', '" + url +"')";
		
		// 연결 해제
		ms.disconnect();
		
		// redirect 목록 화면 이동
		response.sendRedirect("/lesson04/quiz01_1.jsp");
	}
}
