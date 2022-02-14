<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String context = request.getContextPath();
    System.out.println("context->"+context);
%>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
</style>

<script type="text/javascript">
var contextPath='${pageContext.request.contextPath}';
var src='${pageContext.request.contextPath}/images/';
var contextPath='${pageContext.request.contextPath}';

//찜하기 
function getDibsProduct(p_num){
	var dibsBut = document.getElementById('dibsBut');
	alert("p_num"+p_num);
	let dibsP_num = $("#p_num").val();
	$.ajax({
		url:"<%=context%>/getDibsProduct",
		data:{p_num:dibsP_num},
		dataType:'text',
		success:function(data){
			if(data=='1'){
				alert("찜목록에 추가되었습니다."); 
				window.location.reload();
			}
		}
	});
}	
	
//찜하기 취소
function cancleDibsProduct(p_num){
	var dibsBut = document.getElementById('dibsBut');
	alert("p_num"+p_num);
	let dibsP_num = $("#p_num").val();
	$.ajax({
		url:"<%=context%>/cancleDibsProduct",
		data:{p_num:dibsP_num},
		dataType:'text',
		success:function(data){
			if(data=='1'){
				alert("찜목록에서 삭제되었습니다."); 
				window.location.reload();
			}
		}
	});
}

// 수량이 0이하면 주문 불가
function orderFormChk() {
	let qty = $('#qty').val();
	const member = document.getElementById('member');
	
	if(member.value.length != 0) {
		if(qty > 0) {
			return true;
		} else {
			alert('수량을 확인해주세요.');
			return false;
		}
	} else {
		alert('로그인을 해주세요.');
		location.href="login";
		return false;
	}
}


</script>
<title>상품 상세보기</title>
</head>
<body>
<%@ include file="../header.jsp" %>

<div class="container">
		<input type="hidden" name="member" id="member" value="${member}" readonly>
		<div class="p-3 mb-2 bg-secondary text-white">
			<div class="row">
				<div class="col" style="text-align: center;">${product.mini_content}</div>
			</div>
			<div class="row">
				<div class="col" style="text-align: center;">${product.p_name}</div>
			</div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-6">
				<div class="row">
					<div class="col">
						<img src="${pageContext.request.contextPath}/upload/${product.p_image1}"
							class="figure-img img-fluid rounded" alt="상품">http://placehold.it/250x250
					</div>
					<div class="row">
						<div class="col">
							<p class="b">${product.p_description}</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col" style="background-color: rgb(230, 226, 208);">
						<div>
							<div class="col">목표금액 ${product.p_goalprice}원</div>
							<!-- 펀딩기간 -->
							<c:set var="start" value="${product.p_start}"/>
							<c:set var="end" value="${product.p_end}"/>
							<fmt:parseDate var="startDate" value="${start}" pattern="yy/MM/dd" /> 
							<fmt:parseDate var="endDate" value="${end}" pattern="yy/MM/dd" /> 
							<div class="col">펀딩기간 <fmt:formatDate value="${startDate}" pattern="yyyy.MM.dd" />~<fmt:formatDate value="${endDate}" pattern="yyyy.MM.dd" /></div>
							<div class="col">100% 이상 모이면 펀딩이 성공되며, 펀딩 마감일까지 목표 금액이 100%
								모이지 않으면 결제가 진행되지 않습니다.</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-4">
			<div class="row">
			<!-- 남은 펀딩기간 계산하기 -->
				<h4><div>${product.leftdate}</div></h4>
			<!-- 달성률 계산하기 -->	
				<div class="progress" style="padding: 0px; margin-left: 15px;">
					<div class="progress-bar" style="width:${attainment}%" role="progressbar" aria-valuenow="${attainment}"
	                                      aria-valuemin="0" aria-valuemax="100">
	                </div>
                </div>
				<div>${attainment}% 달성</div>
				<div>${product.p_currentprice}원 펀딩</div>
				<div>${product.countOrders}명의 서포터</div>
				<div align="right">
					<form action="orderForm" method="post" onsubmit="return orderFormChk()">
					
						<input type="number" name="o_qty" id="qty" value="1" class="col-md-2">
						<input type="hidden" name="p_num" value="${product.p_num }">
						<input type="hidden" name="p_price" value="${product.p_price }">
					
					<h5 style="margin-top: 5px;"><p><fmt:formatNumber value="${product.p_price}" />원<p></h5>
					<c:choose>
						<c:when test="${orderCheck eq 0 || orderCheck eq null}">
							<input type="submit" class="btn btn-secondary col-md-12"  value="주문하기">
						</c:when>
						<c:otherwise>
							<input type="button" class="btn btn-secondary col-md-12"  value="펀딩완료" disabled>
						</c:otherwise>
					</c:choose>
				</form>
				</div>
				<div class="row d-grid gap-2 col-12 mx-auto" style="margin-top: 10px;" align="center">
					<p>
					<input type="hidden" id="p_num" value="${product.p_num}">
					<c:if test="${count==1}">
					<button type="button" id ="dibsBut" class="btn btn-light" onclick="cancleDibsProduct(${product.p_num})">찜하기 취소</button>
					</c:if>
					<c:if test="${count==0}">
					<button type="button" id ="dibsBut" class="btn btn-light" onclick="getDibsProduct(${product.p_num})">찜하기</button>
					</c:if>
					<button type="button" class="btn btn-light"><a href="#" style="text-decoration: none; color: black;">1:1문의</a></button>
					<button type="button" class="btn btn-light"><a href="#" style="text-decoration: none; color: black;">공유하기</a></button>
					</p>
				</div>
			</div>
		</div>

		<div class="col-1"></div>

		<div class="row" style="margin-top: 30px">
			<div class="col-1"></div>
			<div class="col-10">
				<img src="${pageContext.request.contextPath}/upload/${product.p_image2}"
					class="figure-img img-fluid rounded" alt="상품상세"
					style="max-width: 100%; height: auto;">
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	
	<!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
        <c:if test="${not empty	productList }">
        <c:forEach items="${productList}"  var="recommend" end="3">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="${pageContext.request.contextPath}/upload/${recommend.p_image1}"  alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${recommend.p_name}</h5>
                                    <!-- Product price-->
                                    ${recommend.attainment}% | ${recommend.mini_content}
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" 
                                		href="fundingDetail?p_num=${recommend.p_num}&p_condition=${recommend.p_condition}">상품보러가기</a></div>
                            </div>
                        </div>
                    </div>
        </c:forEach>
        </c:if>
                </div>
            </div>
        </section>
</div>
	
<!-- JavaScript Bundle with Popper -->
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
crossorigin="anonymous"></script>

<%@include file="../footer.jsp"%>
</body>

</html>