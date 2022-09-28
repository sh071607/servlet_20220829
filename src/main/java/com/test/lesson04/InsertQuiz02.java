package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class InsertQuiz02 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request param
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		// db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		//db insert
		String insertQuery = "insert into `favorite` (`name`, `url`) "
				+ "values ('" + name + "', '" + url +"')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// db 해제
		ms.disconnect();
		// 목록 화면 이동 > redirect
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
