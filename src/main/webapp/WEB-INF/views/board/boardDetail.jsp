<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 조회</title>
<%@ include file="../header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
    .container{
        text-align: center;
        width: 700px;
        height: 800px;
    }
    .but{
        float: right;
        padding: 30px;
    }

    .nickname{
        font-size: 10pt;
        text-align: center; 
        vertical-align: bottom;
    }
    textarea{
        resize: vertical;
        width: 678px;
    }
    img{
        width: 678px;
        height: 300px;
    }
</style>
</head>
<body>
	<div class="container">
		<div>
			<h3>${board.b_title}게시글 제목 &emsp;&emsp;&emsp; <a class="nickname">${board.id}</a>&ensp;<a class="nickname">${board.b_date}</a></h3>
		</div>
		<hr>
		<div>
			<img ${board.b_image}><!-- 이미지 출력 -->
		</div>
			<h4 style="text-align: left; margin-top: 10px;">글 내용</h4>
		<div>
			<textarea rows="7" cols="82">${board.b_content}</textarea>
		</div>
		<div class="but">
			<button type="button" class="btn btn-outline-secondary" onclick="boardList">목록</button>
			<button class="btn btn-outline-danger" onclick="history.back()">취소</button>
			<button type="submit" class="btn btn-outline-success">등록</button>
		</div>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>