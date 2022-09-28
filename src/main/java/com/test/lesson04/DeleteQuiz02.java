package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class DeleteQuiz02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request param 삭제할 id꺼내기
		int id = Integer.parseInt(request.getParameter("id"));
		// db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		// delete db by id
		String deleteQuery = "delete from `favorite` where `id` = " + id;
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// db 해제
		ms.disconnect();
		// 목록화면 이동 - redirect
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
