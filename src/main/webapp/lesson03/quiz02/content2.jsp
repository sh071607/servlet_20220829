<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

%>
<section>
		<h3>곡 정보</h3>
	<article class="h-25 border border-success p-3 d-flex">
		<%
			for(Map<String, Object> info : musicList) {
				
			
		%>
		<img src="<%=info.get("thumbnail")%>" alt="썸네일" width="145px">
		<div class="ml-3">
			<h2><%=info.get("title")%></h2>
				<span class="text-success font-weight-bold"><%=info.get("singer")%></span><br><br>
				<pre align="left">
앨범	   <%=info.get("album")%>
재생시간	   <%=info.get("time")%>
작곡가	   <%=info.get("composer")%>
작사가	   <%=info.get("lyricist")%>
				</pre>
		</div>
		<%
			}
		%>
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
					<td><span class="font-weight-bold"><%=info.get("id")%></span></td>
					<td><a href="#" class="font-weight-bold"><%=info.get("title")%></a></td>
					<td><span class="font-weight-bold"><%=info.get("album")%></span></td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>
	</article>
</section>