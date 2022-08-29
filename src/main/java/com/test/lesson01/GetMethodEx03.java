package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/plain");
		response.setContentType("text/json");
		
		// Request Parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age")); //->"25" -> 25
		
		PrintWriter out = response.getWriter();
//		out.println("안녕하세요");
//		out.println("user_id: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		// JSON() String으로 response 구성하기
		// {"user_id":"guroo", "name":"구루", "age":38}
		
		out.print("{\"user_id\":\"" + userId + "\", \"name\":" + name + "\", \"age\":" + age + "}\"");
	}
}
