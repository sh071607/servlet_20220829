<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section>
			<article class="h-25 border border-success d-flex align-items-center p-3">
				<div>
					<%
						
							
					%>
				</div>
				<div class="ml-3">
					<h3>아이유</h3>
					<p class="font-weight-bold">
					EDAM엔터테인먼트<br>
					2008 데뷔
					</p>
				</div>
			</article>
			<article class="bg-warning h-50 pt-3">
				<h2>곡 목록</h2>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					<%
						for (Map<String, Object> info : musicList) {
							
					%>
						<tr>
							<td><%= info.get("id") %></td>
							<td><%= info.get("title") %></td>
							<td><%= info.get("album") %></td>
						</tr>
							
					<%		
						}
					%>
					
					</tbody>
				</table>
			</article>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>