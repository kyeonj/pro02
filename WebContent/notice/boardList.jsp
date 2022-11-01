<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<%
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<h2>공지사항 목록</h2>
<table class="tb">
	<thead>
		<tr>
			<th>연번</th><th>제목</th><th>작성일</th>
		</tr>
	</thead>
	<tbody>
	<%	for(int i=0;1<notiList.size();i++){
			Notice vo = notiList.get(i);
	%>
	<tr>
		<td><%=vo.getNotiNo() %></td>
		<td><a href="BoardDetailCtrl?notiNo=<%vo.getNotiNo() %>"><%vo.getTitle() %></a></td>
		<td><%vo.getResDate() %></td>
	</tr>
	<%} %>
	</tbody>
</table>
</body>
</html>