<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>비밀번호 찾기</title>
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
          <h2 class="form-signin-heading">비밀번호 찾기</h2>
          <p>아이디와 이메일을 입력해주세요.</p>
          <form class="form-signin" action="pwFind" method="post">
              <div class="form-group">
                  <input type="text" class="form-control" placeholder="아이디" name="id" required autofocus>
              </div>
              <div class="form-group">
                 <input type="text" class="form-control" placeholder="이메일 입력" name="email1" required> @
                 <select name="email2" required>
                 	<option disabled="disabled" selected="selected">Choose...</option>
                 	<option value="naver.com">naver.com</option>
                 	<option value="gmail.com">gmail.com</option>
                 	<option value="daum.net">daum.net</option>
                 	<option value="nate.com">nate.com</option>
                 </select>
              </div>
              <button class="btn btn btn-lg btn-secondary btn-block" type="button">비밀번호 찾기</button>
          </form>
     </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>