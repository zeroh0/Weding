<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체상품관리(관리자)</title>
<%@include file = "../header.jsp" %>
</head>
<style>
    .allProductList_member_tableForm{
    	width: 100%;
    	margin: 0;
    	padding: 0;
    }
    .table{
    	margin: 0 auto;
    	padding: 0;
    	text-align: center;
    }
    
    .allProduct_table1{
    	width: 9%;
    }
    .allProduct_table2{
    	width: 20%;
    }
    .allProduct_table3{
    	width: 9%;
    }
    .allProduct_table4{
    	width: 10%;
    }
    .allProduct_table5{
    	width: 22%;
    }
    .allProduct_table6{
    	width: 10%;
    }
    .allProduct_table7{
    	width: 8%;
    }
    .allProduct_table8{
    	width: 6%;
    }
    .allProduct_table9{
    	width: 6%;
    }
    .allProduct_table_td1{
       	display: inline-block; 
    	width: 280px; 
    	height: 50%;
    	white-space: nowrap; 
    	text-overflow: ellipsis;
    	overflow: hidden;
    	text-align: left;
    }
	.pg_btn{
    	text-align: center;
    } 
</style>
<%
	String context = request.getContextPath();
    System.out.println("context->"+context);
%>
<script type="text/javascript">
	function getAllProductDelete(Vindex) {
		if(confirm("정말 삭제 하시겠습니까?") == true){ // 확인
			var selP_num = $("#p_num" + Vindex).val();
			
			$.ajax({
				url:"<%=context%>/allProductDelete",
				data:{p_num : selP_num},
				dataType:'text',
				success:function(data){
					$("#product" + Vindex).remove();
					
				}
			});
		}else{ //취소
			return false;
		}
	}
	
</script>
<body>
<div class="container">
    <div class="p-3 mb-2">
        <div class="p-3 mb-2 bg-secondary text-white">
            <h1 style="text-align: center;"> 관리자 상품관리</h1>
        </div>
    </div>
    <c:set var="num" value="${pg.total-pg.start+1}"></c:set>
        <div class="allProductList_member_tableForm">
       		<%@include file = "../mypage/menu.jsp" %>
       		<div class="col-md-10" style="padding-left: 0">
	            <table class="table table-bordered">
	                <tr class="tr_title">
	                    <th class="allProduct_table1">상품번호</th>
	                    <th class="allProduct_table2">상품이름</th>
	                    <th class="allProduct_table3">판매자</th>
	                    <th class="allProduct_table4">카테고리</th>
	      	            <th class="allProduct_table5">펀딩기간</th>
	      	            <th class="allProduct_table6">상품가격</th>
	      	            <th class="allProduct_table7">달성율</th>
	      	            <th class="allProduct_table8">수정</th>
	      	            <th class="allProduct_table9">삭제</th>
	                </tr>
		            <!-- c:forEach 시작 -->
		            <c:forEach var="product" items="${allproductListAll}" varStatus="status">
		                <tr id="product${status.index}">
		                    <td>
		                    	<input type="hidden" id="p_num${status.index}" value="${product.p_num}">
		                    	${product.p_num}
		                   	</td>
		                    <td class="allProduct_table_td1"><a href="fundingDetail?p_num=${product.p_num}&p_condition=${product.p_condition}">${product.p_name}</a></td>
		                    <td>${product.p_store}</td>
		                    <td>${product.mini_content}</td>
		                    <td>${product.p_start} ~ ${product.p_end}</td>
		                    <td><fmt:formatNumber value="${product.p_price}"/></td> 
		                    <td>${product.attainment}%</td>
		                    <c:if test="${member.mini_cat == 300}">
		                    <td><button type="button" class="btn btn-outline-info" onclick="location.href='allProductUpdateForm?p_num=${product.p_num}';">수정</button></td>
		                    <td><button type="button" class="btn btn-outline-danger" onclick="getAllProductDelete(${status.index})">삭제</button></td>
		                    </c:if> 
		                </tr>
		                <c:set var="num" value="${num - 1}"></c:set>
		            </c:forEach>
		            <!-- c:forEach 끝 -->
	        	</table>
			<div class="pg_btn">
			    <c:if test="${pg.startPage > pg.pageBlock}">
			        <a href="allProductList?currentPage=${pg.startPage - pg.pageBlock}">[이전]</a>
			    </c:if>
			    <c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
			        <a href="allProductList?currentPage=${i}">[${i}]</a>
			    </c:forEach>
			    <c:if test="${pg.endPage < pg.totalPage}">
			        <a href="allProductList?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
			    </c:if>
			</div>
        </div>
    </div>      
</div>

<%@ include file = "../footer.jsp" %>
</body>
</html>