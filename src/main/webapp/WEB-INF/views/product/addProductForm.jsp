<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="jumbotron">
  <div class="container">
     <h1 class="display-3">상품등록</h1>
  </div>
</div>
<div class="container">
<p>상품등록</p>
<hr> 
<form name="addProduct" action="addProduct" method="post" class="form-horizontal">
    <div class="form-group row">
       <label class="col-sm-2">카테고리</label>
       <input type="hidden" name="main_cat" value="200">
       <div class="col-sm-3">
          <select name="mini_cat">
       		<option disabled="disabled" selected="selected">선택</option>
       		<option value="101">홈리빙</option>
       		<option value="102">푸드</option>
       		<option value="103">패션잡화</option>
       		<option value="104">테크가전</option>
       		<option value="105">캐릭터굿즈</option>
       		<option value="106">여행스포츠</option>
       		<option value="107">뷰티</option>
       		<option value="108">베이비키즈</option>
       		<option value="109">반려동물</option>
       		<option value="110">게임취미</option>
       		<!-- 또는 foreach문 사용하는 방법,,
				<c:forEach var="category" items="${catList}">
					<option value="${category.mini_cat}">${category.c_cat}</option>
				</c:forEach>
			 -->
          </select>
       </div>
    </div>
   <div class="form-group row">
       <label class="col-sm-2">상품판매업체</label>
       <div class="col-sm-3">
         <input type="text" name="p_store" class="form-control" autofocus required>
       </div>
    </div>
    
  <div class="form-group row">
       <label class="col-sm-2">상품이름</label>
       <div class="col-sm-3">
         <input type="text" name="p_name" class="form-control" required>
       </div>
    <div class="form-group row">
       <label class="col-sm-2">상품가격</label>
       <div class="col-sm-3">
       	<input type="text" name="p_price" class="form-control" required>원
       </div>
   </div>
   <div class="form-group row">
      <label class="col-sm-2">대표이미지</label>
       <div class="col-sm-5">
         <input type="file" name="p_image1" class="form-control">
       </div>
   </div>
   
   <div class="form-group row">
      <label class="col-sm-2">상세이미지</label>
       <div class="col-sm-5">
         <input type="file" name="p_image2" class="form-control">
       </div>
   </div>
   </div>
   
    <div class="form-group row">
       <label class="col-sm-2">상품설명</label>
       <div class="col-sm-5">
         <textarea rows="2" cols="50" name="p_description" class="form-control" required></textarea>
       </div>
   </div>
   <div class="form-group row">
       <label class="col-sm-2">펀딩기간</label>
       <div class="col-sm-3">
        <input type="text" name="p_start" class="form-control" required>
        ~<input type="text" name="p_end" class="form-control" required>
       </div>
   </div>
  <div class="form-group row">
       <label class="col-sm-2">목표금액</label>
       <div class="col-sm-3">
       	<input type="text" name="p_goalprice" class="form-control" required>원
       </div>
   </div>
   
   
   
   <div class="form-group row" align="right">
       <div class="col-sm-offset-2 col-sm-10">
         <input type="button" value="목록" class="btn btn-primary" onclick="location.href='soldList.jsp'">
         <input type="reset" value="취소" class="btn btn-primary" >
         <input type="submit" value="등록" class="btn btn-primary" >
       </div>
   </div>
  </form>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>