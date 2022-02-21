<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>전체상품관리수정(관리자)</title>
<%@include file="../header.jsp"%>
</head>
<style type="text/css">
	div.row{
		margin-left: 20px;
	}
	form.row-form-body{
		font-size: 15px;
	}
	td#menu-name {
		width: 120px;
		height: 40px;
	}
	table.table-body {
		width: 70%;
		height: auto;
		margin: 0 auto;
	}
</style>
<body>
<div class="container">
	<div class="p-3 mb-2">
        <div class="p-3 mb-2 bg-secondary text-white">
            <h1 style="text-align: center; ">관리자 상품 수정</h1>
        </div>
    </div>
	<div class="row">
		<%@include file="../mypage/menu.jsp"%>
		<form action="allProductUpdate" method="get" class="row-form-body col-md-10">
			<table class="table-body">
				<tr><td id="menu-name">상품번호</td> <td><input type="text" id="p_num" name="p_num" value="${allProductUpdateForm.p_num}" readonly="readonly"></td></tr>
				<tr><td id="menu-name">카테고리</td> <td><select name="mini_cat" id="category-select">
						<option value="101" <c:if test="${allProductUpdateForm.mini_cat.equals('101')}"><c:out value="selected"/></c:if>>홈리빙</option>
						<option value="102" <c:if test="${allProductUpdateForm.mini_cat.equals('102')}"><c:out value="selected"/></c:if>>푸드</option>
						<option value="103" <c:if test="${allProductUpdateForm.mini_cat.equals('103')}"><c:out value="selected"/></c:if>>패션잡화</option>
						<option value="104" <c:if test="${allProductUpdateForm.mini_cat.equals('104')}"><c:out value="selected"/></c:if>>테크가전</option>
						<option value="105" <c:if test="${allProductUpdateForm.mini_cat.equals('105')}"><c:out value="selected"/></c:if>>캐릭터굿즈</option>
						<option value="106" <c:if test="${allProductUpdateForm.mini_cat.equals('106')}"><c:out value="selected"/></c:if>>여행스포츠</option>
						<option value="107" <c:if test="${allProductUpdateForm.mini_cat.equals('107')}"><c:out value="selected"/></c:if>>뷰티</option>
						<option value="108" <c:if test="${allProductUpdateForm.mini_cat.equals('108')}"><c:out value="selected"/></c:if>>베이비키즈</option>
						<option value="109" <c:if test="${allProductUpdateForm.mini_cat.equals('109')}"><c:out value="selected"/></c:if>>반려동물</option>
						<option value="110" <c:if test="${allProductUpdateForm.mini_cat.equals('110')}"><c:out value="selected"/></c:if>>게임취미</option>
					</select></td></tr>
				<tr><td id="menu-name">상품판매업체</td> <td><input type="text" name="p_store" value="${allProductUpdateForm.p_store}"></td></tr>
				<tr><td id="menu-name">상품이름</td>	 <td><input type="text" name="p_name" value="${allProductUpdateForm.p_name}"></td></tr>
				<tr><td id="menu-name">대표이미지</td>	 <td><input type="file" name="p_image1" value="${allProductUpdateForm.p_image1}"></td></tr>
				<tr><td id="menu-name">상세이미지</td>  <td><input type="file" name="p_image2" value="${allProductUpdateForm.p_image2}"></td></tr>
				<tr><td id="menu-name">상품설명</td>	 <td><textarea name="p_description" style="resize: vertical;" rows="5" cols="65">
																	   ${allProductUpdateForm.p_description}</textarea></td></tr>
				<tr><td id="menu-name">펀딩기간</td>	 <td><input type="text" value="${allProductUpdateForm.p_start}" readonly="readonly"> ~ 
														 <input type="text" value="${allProductUpdateForm.p_end}" readonly="readonly"></td></tr>
				<tr><td id="menu-name">상품가격</td>	 <td><input name="p_price" type="text" value="${allProductUpdateForm.p_price}">원</td></tr>
				<tr>
					<td colspan="2" style="text-align: right;">
						<c:if test="${member.mini_cat == 300}">
						<button type="submit" class="btn btn-outline-info">수정</button>
						<button type="button" class="btn btn-outline-danger" onclick="location.href='allProductDetailDelete?p_num=${allProductUpdateForm.p_num}'">삭제</button>
						</c:if>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<%@ include file="../footer.jsp"%>
</body>
</html>
