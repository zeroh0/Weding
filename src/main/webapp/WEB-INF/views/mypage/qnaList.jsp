<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>1:1 문의내역</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>
body {
	text-align: center;
}

table {
	width: 100%;
	border-top: 1px solid gray;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid gray;
	padding: 10px;
}

button {
	float: right;
}

a:link {
	color: black;
	text-decoration: none;
}

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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	function reply() {
		let b_num = $('#b_num').val();
		console.log(b_num);
		
		$.ajax({
			url: "<%=request.getContextPath()%>/replyCount",
			data: {b_num:b_num},
			success : function(data) {
				console.log("data" + data);
				$('#replyCount').attr("value", data);
			}
		});		
	}
</script>
<body>
	<%@include file="../header.jsp"%>
	<div class="container">
		<div class="sub-banner">
			<h2 class="sub-title">1:1 문의내역</h2>
		</div>
		<%@include file="menu.jsp"%>
		<table colspan="2">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>답변여부</th>
			</tr>
			<c:forEach var="board" items="${qnaList}">
				<tr>
					<td><input type="hidden" id="b_num" value="${board.b_num}">
						${board.b_num}</td>
					<td>${board.b_title}</td>
					<td>${board.b_date}</td>
					<td>${board.b_hit}</td>
					<td><input type="text" id="replyCount"></td>
				</tr>
				<%-- <c:set var="num" value="${num-1}"></c:set> --%>
			</c:forEach>
		</table>
		<br>
		<c:if test="${pg.startPage > pg.pageBlock}">
			<a href="list?currentPage=${pg.startPage - pg.pageBlock}">[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
			<a href="list?currentPage=${i}">[${i}]</a>
		</c:forEach>
		<c:if test="${pg.endPage < pg.totalPage}">
			<a href="list?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
		</c:if>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>