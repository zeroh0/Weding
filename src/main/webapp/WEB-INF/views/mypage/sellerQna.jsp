<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Q&A 문의내역</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
.sub-banner {
	width: 100vw;
	margin-left: calc(-50vw + 50%);
	height: 100px;
	text-align: center;
	background-color: #FEECE9;
	margin-bottom: 50px;
}

.sub-title {
	line-height: 100px;
}
</style>
</head>
<body>
	<div class="sub-banner">
		<h2 class="sub-title">Q&A 문의내역</h2>
	</div>
	<div class="container">
		<%@include file="menu.jsp"%>
		<table class="table table-bordered" style="width: 80%;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>답변여부</th>
			</tr>
			<!-- 반복 여기서부터 -->
			<tr>
				<td>1</td>
				<td><a href="boardDetail">제목</a></td>
				<td>홍길동</td>
				<td>2022-01-22</td>
				<td>N</td>
			</tr>
			<!-- 여기까지 반복 -->

		</table>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>