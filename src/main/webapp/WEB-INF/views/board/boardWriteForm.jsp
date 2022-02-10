<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
<%@ include file="../header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
    <div class="container">
		<div class="container_sub">
            <table>
                <tr><td>제목</td><td><a><input type="text" value="${board.b_title}"></a></td></tr>
                <tr><td>내용</td><td><a><textarea rows="4" cols="20">${board.b_content}</textarea></a></td></tr>
                <tr><td>이미지</td><td><a><input type="file" value="${board.b_image1}"></a></td></tr>
				<tr><th><td>
				<div style="float: right">
				<button type="button" class="btn btn-outline-secondary" onclick="boardList">목록</button>
				<button class="btn btn-outline-danger" onclick="history.back()">취소</button>
				<button type="submit" class="btn btn-outline-success">등록/수정</button>
				</div></td></th></tr>
            </table>
		</div>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>