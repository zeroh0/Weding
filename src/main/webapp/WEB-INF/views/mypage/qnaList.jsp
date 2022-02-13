<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file = "../header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
    body{text-align: center;}
    table {
    width: 100%;
    border-top: 1px solid gray;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid gray;
    padding: 10px;
  }
  button{
      float: right;
  }
  a:link{
    color: black;
    text-decoration: none;
  }
  
</style>
<body>
	<%@include file = "../header.jsp"%>
    <div class="container">
        <h2>문의내역­</h2><br>
        
        <%@include file = "menu.jsp"%>
        
            <table colspan="2">
                <tr><th>번호</th><th>제목</th><th>작성일</th><th>조회수</th><th>답변여부</th></tr>
                <c:forEach var="board" items="${qnaList}">
                    <tr>
                        <td>${board.b_num}</td>
                        <td>${board.b_title}</td>
                        <td>${board.b_date}</td>
                        <td>${board.b_hit}</td>
                        <td>
                        <c:choose>
	                        <c:when test="${board.b_step eq 0}">N</c:when>
	                        <c:otherwise>Y</c:otherwise>
                        </c:choose>
                        </td>  
                    </tr>
                    <%-- <c:set var="num" value="${num-1}"></c:set> --%>
                </c:forEach>
            </table><br>
        
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
    <%@include file = "../footer.jsp"%>
</body>
</html>