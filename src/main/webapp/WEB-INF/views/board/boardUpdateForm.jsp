<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>
    table{
        margin:auto; 
    }
    textarea{
        resize: both;
    }
</style>
</head>
<body>
<c:if test="board?main_cat=300&mini_cate=100">
<h1 style="text-align: center">공지사항</h1>
</c:if>
<c:if test="board?main_cat=300&mini_cate=200">
<h1 style="text-align: center">문의사항</h1>
</c:if>
<hr>
	<div class="continer">
		<div align="center">
			<form action="productUpdate"><!-- 경로 설정 필요 -->
				<table>
				<tr><th>
				<div>제목<input type="text" value="${board.b_title}"></div></th></tr>
				<tr><th>
				<div>내용 <textarea rows="5" cols="80">${board.b_content}</textarea></div></th></tr>
				<tr><th>
				<div>이미지 <input type="file"></div></th></tr>
				<tr><th>
				<div style="float: right">
				<button type="button" class="btn btn-outline-secondary" onclick="boardList">목록</button>
				<button class="btn btn-outline-danger" onclick="history.back()">취소</button>
				<button type="submit" class="btn btn-outline-success">등록/수정</button>
				</div></th></tr>
				</table>
			</form>
		</div>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>