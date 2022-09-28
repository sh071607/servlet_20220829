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

@WebServlet("/lesson04/quiz01")
public class quiz01 extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// 1. db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//2 쿼리
		// insert
		String insertQuery = "insert into `real_estate` (realtorId, address, area, type, price, rentPrice) "
				+ "values (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null);";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		// select
		
		String selectQuery = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10;";
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area"); // integer => null 가능
				String type = resultSet.getString("type");
		// 3. 결과 출력
				out.println("매물 주소: " + resultSet.getString("address") + ", 면적: " + resultSet.getInt("area") + ", 타입: " + resultSet.getString("type"));
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		

		
		
		// 4. 연결 해제
		ms.disconnect();
	}
}
