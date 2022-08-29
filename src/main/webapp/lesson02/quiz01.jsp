<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import="java.util.*" %>
<%@ page import="java.util.Arrays" %>    
<%-- <%@ page import="java.util.*" %> --%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Quiz01</title>
</head>
<body>
		
	<%!
	public int getSum(int n) {
		int sum = 0;
		for(int i = 1; i <= n; i++) {
			sum += i;
		}
			return sum;
	}
	%>
	<h1>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h1>
	
	<%
	int[] scores = {80, 90, 100, 95, 80};
	double average = 0;
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
		average = sum / (double)scores.length;
	%>
	<h1>평균 점수는 <%=average %>입니다.</h1>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	Iterator<String> iter = scoreList.iterator();
	int sum1 = 0;
	while(iter.hasNext()) {
		String score = iter.next();
		if(score.equals("O")) {
			sum1 += 10;
		}
	}
	%>
	<h1>채점 결과는 <%= sum1 %>점 입니다.</h1>
	
	<%
	String birthDay = "20010820";
	
	String year = birthDay.substring(0, 4);
	//out.print(year); // 바로 결과 확인
	int age = 2022 - Integer.parseInt(year);
	%>
	<h1><%= birthDay%>의 나이는 <%=age %>세 입니다.</h1>
	
	
</body>
</html>