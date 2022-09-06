package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02")
public class Ex02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header -> ContentType
		response.setContentType("text/palin");
		
		// db연동, 커넥트 메소드 호출
		MysqlService ms = MysqlService.getInstance();
		ms.connection();
		// insert
		String insertQuery = "insert into `real_estate` (realtorId, address, area, type, price, rentPrice)"
				+ "values(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null);";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// select 
		String selectQuery = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10;";
		try {
			ResultSet resultSet = ms.select(selectQuery);
			PrintWriter out = response.getWriter();
			while (resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");	// Integer <- null 가능
				String type = resultSet.getString("type");
				// 출력
				out.println("매물 주소: " + address + ",면적: " + area + ",타입: " + type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// db 연결 해제

	}
}
