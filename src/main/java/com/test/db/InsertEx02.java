package com.test.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class InsertEx02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance(); // DB 연결을 위한 객체 생성(싱글턴이라 한개만 생성됨)
		mysqlService.connect(); // DB 연결
		
		//-- 쿼리 수행
		String insertQuery = "insert into `new_user`(`name`, `yyyymmdd`, `introduce`, `email`)"
				+ "values ('" + name + "', '" + yyyymmdd + "', '" + introduce + "', '" + email + "');";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		mysqlService.disconnect(); // DB 해제
		
		// 목록 화면 이동
		response.sendRedirect("/db/ex02_1.jsp");
	}
}
