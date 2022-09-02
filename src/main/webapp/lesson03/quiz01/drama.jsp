<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);
    %>
<section class="content1 bg-info">
	<table class="table text-center">
		<thead>
			<tr>
				<th>채널</th>
				<th>채널명</th>
				<th>카테고리</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, String> strlist : list) {
			%>
			<tr>
				<td><%= strlist.get("ch") %></td>
				<td><%= strlist.get("name") %></td>
				<td><%= strlist.get("category") %></td>
			</tr>
			<%
			}
		%>
		</tbody>
	</table>
</section>