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
		<table style="width: 80%;">
			<tr>
				<th>번호</th>
				<th>글카테고리</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>답변여부</th>
			</tr>
			<!-- 반복 여기서부터 -->
			<c:forEach var="board" items="${sellerQna }">
			<tr>
				<td>${board.b_num }</td>
				<td>${board.b_category }</td>
				<td><a href="boardDetail?b_num=${board.b_num }">${board.b_title }</a></td>
				<td>${board.id }</td>
				<td>${board.b_date }</td>
				<td>${board.answer}</td>
			</tr>
			</c:forEach>
			<!-- 여기까지 반복 -->

		</table>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>