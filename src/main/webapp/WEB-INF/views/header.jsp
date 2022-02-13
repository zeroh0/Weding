<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- <link href="css/board.css" rel="stylesheet" type="text/css">
<link href="css/loginForm.css" rel="stylesheet" type="text/css"> -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">

<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="<c:url value='main'/>" class="main">We-DING</a>

      <ul class="nav">
        <li><a href="<c:url value='beforeFundList'/>" class="nav-link px-2 link-dark">펀딩예정</a></li>
        <li><a href="<c:url value='fundingList'/>" class="nav-link px-2 link-dark">펀딩하기</a></li>
        <li><a href="<c:url value='boardList?main_cat=300&mini_cat=100'/>" class="nav-link px-2 link-dark">공지사항</a></li>
        <li><a href="<c:url value='boardList?main_cat=300&mini_cat=200'/>" class="nav-link px-2 link-dark">문의사항</a></li>
      </ul>
      
      <!-- id=가 null이면 보여지는 div -->
		  <c:choose>
			<c:when test="${empty member}">
		      <div class="nav">
		        <a href="loginForm" class="nav-link px-2 link-dark">로그인</a>
		        <a href="joinForm" class="nav-link px-2 link-dark">회원가입</a>
		      </div>
			</c:when>
		   </c:choose>
	    <!-- id가 not null이면 보여지는 div -->
 		<c:if test="${member != null}"> 
	    	<div class="nav">
	    		<a class="nav-link px-2 link-dark">${member.name}님</a>
	    		<c:if test="${member.mini_cat == 300}">
	    			<a href="<c:url value='allProductList'/>" class="nav-link px-2 link-dark">마이페이지</a>
	    		</c:if>
	    		<c:if test="${member.mini_cat <= 299}">
	    			<a href="<c:url value='dibsList'/>" class="nav-link px-2 link-dark">마이페이지</a>
	    		</c:if>
		    	<a href="<c:url value='logout'/>" class="nav-link px-2 link-dark">로그아웃</a>
	    	</div>
		</c:if>
    </header>
  </div>
