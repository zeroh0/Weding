<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

 <style>
     body{text-align: center;}

     table {
     margin: auto;
     width: 80%;
     border-top: 1px solid gray;
     border-collapse: collapse;
     }

     th, td {
         border-bottom: 1px solid gray;
         padding: 10px;
     }

     a:link{
         color: black;
         text-decoration: none;
     }
 </style>
</head>
<body>
<c:if test="boardList?main_cat=300, mini_cate=100">
<h1 style="text-align: center">공지사항</h1>
</c:if>
<c:if test="boardList?main_cat=300, mini_cate=200">
<h1 style="text-align: center">문의사항</h1>
</c:if>
<hr>
<table>
	<tr><th>번호</th><th>제목</th><th>작성일</th><th>조회수</th></tr>
<c:forEach var="board" items="${boardList}" varStatus="status">
	<tr id="board${status.index}"><td>board${status.index}</td>
		<td><a href="boardDetail">${board.b_title}</a></td>
		<td>${board.b_date}</td>
		<td>${board.b_hit}<!-- 조회수 칼럼 --></td>
	</tr>
</c:forEach>
</table>
<%@ include file="../footer.jsp" %>
</body>
</html>