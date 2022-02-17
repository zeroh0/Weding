<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>펀딩내역</title>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style>
.b {
	word-break: break-all;
}

.sub-banner {
	width: 100vw;
	margin-left: calc(-50vw + 50%);
	height: 100px;
	text-align: center;
	background-color: #FEECE9;
	margin-bottom: 50px;
}

.sub-title {
	line-height: 100px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="sub-banner">
			<h2 class="sub-title">펀딩내역</h2>
		</div>
		<%@include file="menu.jsp"%>
		<div class="row">
			<div class="col-10">
				<table width="800" style="text-align: center;">
					<tr>
						<td>주문번호</td>
						<td>주문일자</td>
						<td>주문상품</td>
						<td>결제금액</td>
						<td>펀딩상태</td>
						<td>배송현황</td>
						<td>취소</td>
					</tr>
					<c:if test="${not empty payList}">
						<c:forEach var="pay" items="${payList}">
							<form action="payDelete" method="post" name="payDelete"
								onsubmit="return confirm('정말로 취소하시겠습니까?')">
								<tr>
									<td>${pay.o_num }</td>
									<td>${pay.o_payday }</td>
									<td>${pay.p_name }</td>
									<td>${pay.o_sum }</td>
									<td><c:if test="${pay.p_condition == 2}">
	                        		펀딩중
	                        	</c:if> <c:if test="${pay.p_condition == 3}">
	                        		펀딩종료
	                        	</c:if></td>
									<td>${pay.o_shipStatus }</td>
									<!-- 펀딩 종료 상품은 주문 취소 불가능하게 -->
									<td><input type="hidden" name="id" value="${pay.id}">
										<input type="hidden" name="p_num" value="${pay.p_num}">
										<input type="hidden" name="o_num" value="${pay.o_num}">
										<input type="hidden" name="o_sum" value="${pay.o_sum}">
										<c:if test="${pay.p_condition == 2}">
											<button type="submit" class="btn btn-warning">취소</button>
										</c:if> <c:if test="${pay.p_condition == 3}">
											<button type="submit" class="btn btn-warning" disabled="disabled">취소</button>
										</c:if></td>
								</tr>
							</form>
						</c:forEach>
					</c:if>
					<c:if test="${empty payList}">
						<tr>
							<td colspan="7">펀딩한 상품이 존재하지 않습니다</td>
						</tr>
					</c:if>
				</table>
			</div>
			<c:if test="${pg.startPage > pg.pageBlock}">
				<a href="payList?currentPage=${pg.startPage - pg.pageBlock}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
				<a href="payList?currentPage=${i}">[${i}]</a>
			</c:forEach>
			<c:if test="${pg.endPage < pg.totalPage}">
				<a href="payList?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
			</c:if>
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