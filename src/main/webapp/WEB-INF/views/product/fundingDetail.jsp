<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
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
</style>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>

	function listReview() {
		$.ajax({
			url: "<%=request.getContextPath()%>/reviewBoardList",
			type: 'POST',
			dataType: 'JSON',
			success: function(data) {
				var html = "";
				if(data.length > 0) {
					$(data).each(function(){
						html += "<tr>";
						
						html += "<td>";
						html += this.b_num;
						html += "</td>";
						
						html += "<td>";
						html += this.b_content;
						html += "</td>";
						
						html += "<td>";
						html += this.b_date;
						html += "</td>";
						
						html += "<td>";
						html += this.id;
						html += "</td>";
						
						html += "</tr>";
					});
				}
				
				$("#commentList").html(html);
				console.log("review List");
			}
		});
	}
	
	$(function(){

        listReview();

        $('#writeReview').click(function(){
            var reviewContent = $('#b_content').val();

            $.ajax({
                url: "<%=request.getContextPath()%>/reviewBoardWrite",
                type: 'POST',
                data: {b_content : reviewContent},
                dataType: 'text',
                success: function(data) {
                	if(data == '1') {
                		$('#b_content').val("");
                        listReview();
                	}
                }, error: function(error) {
                    alert("error"+error);
                }
            });
        });
    });

</script>

<title>beforeFundDetail 펀딩상품이름</title>
</head>

<body>

	
	<div class="container">
		<div class="p-3 mb-2 bg-secondary text-white">
			<div class="row">
				<div class="col" style="text-align: center;">카테고리</div>
			</div>
			<div class="row">
				<div class="col" style="text-align: center;">펀딩 상품 이름</div>
			</div>
		</div>

		<div class="row">
			<div class="col-1"></div>

			<div class="col-6">
				<div class="row">
					<div class="col">
						<img src="http://placehold.it/400x300"
							class="figure-img img-fluid rounded" alt="상품">http://placehold.it/250x250
					</div>
					<div class="row">

						<div class="col">
							<p class="b">"펀딩 상품 설명. . Lorem.
								Lorem.Lorem.Lorem.Lorem.Lorem.Lorem.Lorem.Lorem.Lorem.LoremLorem.Lorem.Lorem.Lorem.Lorems
								.Lorems.Lorems.Lorems.Lorems.Lorems.Lorems.Lorems.Lorems.Lorems
								.Lorem.Lorem.Lorem.Lorem.Lorem.Lorem.."></p>
						</div>
					</div>

				</div>

				<div class="row">


					<div class="col" style="background-color: rgb(230, 226, 208);">
						<div>
							<div class="col">목표금액</div>
							<div class="col">펀딩기간</div>
							<div class="col">100% 이상 모이면 펀딩이 성공되며, 펀딩 마감일까지 목표 금액이 100%
								모이지 않으면 결제가 진행되지 않습니다.</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col-4">
				<form action="orderForm" method="post">
				<div class="row">
					<div class="d-grid gap-2 col-6 mx-auto">
						<!-- <button type="button" class="btn btn-secondary">알림 신청
							1000명</button>
						<button type="button" class="btn btn-light">공유하기</button>


						<button type="button" class="btn btn-secondary">알림 중
							1000명</button>
						<button type="button" class="btn btn-light">공유하기</button> -->
							
							<input type="hidden" name="p_num" value="1">
							<input type="hidden" name="p_name" value="갤럭시S">
							<input type="hidden" name="o_qty" value="1">
							<input type="hidden" name="o_sum" value="10000">


						<button type="submit" class="btn btn-secondary">주문하기</button>
						<button type="button" class="btn btn-light">찜하기</button>
						<button type="button" class="btn btn-light">1:1문의</button>
						<button type="button" class="btn btn-light">공유하기</button>



					</div>
				</div>
				</form>




			</div>







			<div class="col-1"></div>




			<div class="row">

				<div class="col-1"></div>

				<div class="col-10">
					<img src="http://placehold.it/1200x1200"
						class="figure-img img-fluid rounded" alt="상품상세"
						style="max-width: 100%; height: auto;">
				</div>

				<div class="col-1"></div>

			</div>





		</div>

		<!-- 펀딩성공시 p_conditon = 3, P_CURRENTPRICE > P_GOALPRICE, sysdate > P_END -->
		<!-- 리뷰 작성 -->
		<form>
		<table>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>작성일</th>
				<th>작성자</th>
			</tr>
			<tbody id="commentList">
			<!-- 여기서부터 반복 -->
			<%-- <c:forEach var="review" items="${reviewBoardList }" varStatus="status">
			<tr id="review${status.index }" class="reviewList">
				<td>
					<input type="hidden" id="b_num${status.index }" value="${review.b_num }">
					${review.b_num }
				</td>
				<td>${review.b_content }</td>
				<td>${review.b_date }</td>
				<td>${review.id }</td>
			</tr>
			</c:forEach> --%>
			</tbody>
			<!-- 여기까지 반복 -->
			<tr>
				<td colspan="2">
					<c:if test="${pg.startPage > pg.pageBlock}">
		            		<a href="fundingDetail?currentPage=${pg.startPage - pg.pageBlock}">[이전]</a>
			        </c:if>
			        <c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
			            <a href="fundingDetail?currentPage=${i}">[${i}]</a>
			        </c:forEach>
			        <c:if test="${pg.endPage < pg.totalPage}">
			            <a href="fundingDetail?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
			        </c:if>
		        </td>
	        <tr>
			<tr>
				<td colspan="4">
					<input type="text" name="b_content" id="b_content">
					<input type="button" value="리뷰작성" id="writeReview">
				</td>
			</tr>
		</table>
		</form>



	</div>













	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>



</body>

</html>









<%@ include file="../footer.jsp"%>