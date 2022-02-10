<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>아이디 찾기</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="container">
    <span><a href="#">아이디 찾기</a></span>
    <span><a href="#">비밀번호 찾기</a></span>
    <hr>
</div>
<div class="container" align="center">
     <div class="col-md-4 col-md-offset-4">
          <h2 class="form-signin-heading">아이디 찾기</h2>
          <p>이름과 전화번호를 입력해주세요.</p>
          <form class="form-signin" action="idFind" method="post">
              <div class="form-group">
                  <input type="text" class="form-control" placeholder="이름" name="name" required autofocus>
              </div>
              <div class="form-group">
                 <input type="text" class="form-control" placeholder="전화번호" name="phone" required>
              </div>
              <button class="btn btn btn-lg btn-secondary btn-block" type="button">아이디 찾기</button>
          </form>
     </div>
  </div>
<%@ include file="../footer.jsp" %>
</body>
</html>