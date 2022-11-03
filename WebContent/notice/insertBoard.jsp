<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.title { padding-top:36px; padding-bottom:20px; }
.in_container { clear:both; width:1400px; margin:0 auto;  }
.in_container:after { content:""; display:block; clear:both; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
<div class="content container">
	<h2 class="title">공지사항 등록하기</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/InsertBoardProCtrl" method="post">
	<table class="table">
		<tbody>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" placeholder="제목을 입력해주세요" class="form-control" autofocus required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="80" rows="6" name="content" class="form-control" required></textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="author" id="author" value="admin" class="form-control" readonly></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
			<a href="<%=request.getContextPath() %>/GetBoardListCtrl" class="btn btn-light">목록으로</a>
			<input type="submit" name="submit-btn" class="btn btn-light" value="등록">
			<input type="reset" name="reset-btn" class="btn btn-light" value="취소">
	</div>
	</form>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>