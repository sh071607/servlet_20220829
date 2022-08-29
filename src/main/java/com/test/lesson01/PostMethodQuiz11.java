package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz11")
public class PostMethodQuiz11 extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>사용자 정보 확인</title></head><body>");
			if (!userId.equals(userMap.get("id"))) {
				out.print("<b>id가 일치하지 않습니다.</b>");
			} else if(!password.equals(userMap.get("password"))) {
				out.print("<b>password가 일치하지 않습니다.</b>");
			} else {
				out.print("<b>" + userMap.get("name") + "님 환영합니다</b>");
			}
		out.print("</body></html>");
		
		
	}
}
