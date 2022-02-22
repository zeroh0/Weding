<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>회원수정</title>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- CSS only -->
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous"> -->

<style>
.b {
	word-break: break-all;
}

.mypageContent {
	width: 80%;
	margin: 0 auto;
}

table input {
	font-size:13px;
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {//daum주소 사용
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var fullAddr = '';
						var extraAddr = '';
						if (data.userSelectedType === 'R') {
							fullAddr = data.roadAddress;
						} else {
							fullAddr = data.jibunAddress;
						}
						if (data.userSelectedType === 'R') {
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}
						document.getElementById('zipCode').value = data.zonecode;
						document.getElementById('roadAddress').value = fullAddr;
						document.getElementById('detailAddress').focus();
					}
				}).open();
	}
</script>
</head>
<body>
	<div class="container">
		<div class="sub-banner">
			<h2 class="sub-title">회원수정</h2>
		</div>
		<div class="row">
			<%@include file="menu.jsp"%>
				<div class="col-2"></div>
				<div class="col-8">
				<form action="memberUpdate" method="post">
				<c:set var="email1" value="${member.email.split('@')[0]}" />
				<c:set var="email2" value="${member.email.split('@')[1]}" />
				
				<table class="table table-borderless">
					<tr>
						<td style="border: none">이름</td>
						<td style="border: none"><input type="text" class="form-control" style="width:20%;font-size:12px;" name="name" size=30 placeholder="아이디입력" value="${member.name}"></td>
					</tr>
					<tr>
						<td style="border: none">연락처</td>
						<td style="border: none"><input type="text" class="form-control" style="width:25%;font-size:12px;"  name="phone" size=30 placeholder="연락처입력" value="${member.phone}"></td>
					</tr>
					<tr>
						<td style="border: none">이메일</td>
						<td style="border: none">
							<input type="text" class="form-control" style="width:25%;display: inline;font-size:12px;" name="email1" size=30 placeholder="이메일 입력" value="${email1}"> &nbsp;@&nbsp;   
							<select name="email2" class="form-select" style="width:25%; display: inline; height:34px;font-size:12px;" required>
								<option value="naver.com"
									<c:if test="${email2.equals('naver.com')}"><c:out value="selected"/></c:if>>naver.com</option>
								<option value="gmail.com"
									<c:if test="${email2.equals('gmail.com')}"><c:out value="selected"/></c:if>>gmail.com</option>
								<option value="daum.net"
									<c:if test="${email2.equals('daum.net')}"><c:out value="selected"/></c:if>>daum.net</option>
								<option value="nate.com"
									<c:if test="${email2.equals('nate.com')}"><c:out value="selected"/></c:if>>nate.com</option>
							</select>
						</td>
					</tr>
					<tr>
						<td style="border: none">주소</td>
						<td style="border: none">
							<input type="text" class="form-control" style="width:20%;display:inline-block;font-size:12px;" name="zipCode" id="zipCode" placeholder="우편번호" value="${member.zipCode }" readonly>
							<input type="button" class="btn btn-primary" style="width:7.5%; height: 34px;" onclick="sample6_execDaumPostcode()" value="주소검색">
						</td>
					</tr>
					<tr>
						<td style="border: none"></td>
						<td style="border: none">
							<input type="text" class="form-control" style="width:50%;font-size:12px;" name="roadAddress" id="roadAddress"
								placeholder="도로명주소" value="${member.roadAddress }" readonly>
						</td>
					</tr>
					<tr>
						<td style="border: none"></td>
						<td style="border: none">
							<input type="text" class="form-control" style="width:50%;font-size:12px;" name="detailAddress" id="detailAddress"
								placeholder="상세주소" value="${member.detailAddress }">
						</td>
					</tr>
				</table>
				
					<div class="row" style="margin-top: 5rem">
						<div class="col-5 d-grid gap-2">
							<input type="submit" class="btn btn-primary" value="회원수정">
							<!-- submit button-->
						</div>
						<div id="memberDelete" class="col-2 d-grid gap-2">
							<button type="button" class="btn btn-light"
								onclick="location.href='memberDelete?id=${member.id}'">탈퇴</button>
						</div>
					</div>
					</form>
				</div>
		</div>
	</div>
	<div class="col-3"></div>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<%@ include file="../footer.jsp"%>
</body>
</html>