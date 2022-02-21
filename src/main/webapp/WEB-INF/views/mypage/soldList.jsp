<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../header.jsp" %>
<style type="text/css">
	.menu1{width:300px; border:1px solid red; float:left;}
	.content1{width:500px;}
	.pg_btn{
	    	text-align: center;
	    	margin-bottom: 100px;
	    }
	table {
			text-align: center;
			table-layout: fixed;
		}
	th{
		font-weight: bold;
	}
	.soldListTableProduct1{
		width: 8%;
	}
	.soldListTableProduct2{
		width: 10%;
	}
	.soldListTableProduct3{
		width: 40%;
	}
	.soldListTableProduct4{
		width: 15%;
	}
	.soldListTableProduct5{
		width: 8%;
	}
	.soldListTableProduct6{
		width: 8%;
	}
	.soldListTableProduct7{
		width: 10%;
	}
	.soldListTableTd{
	 width: 100%;
	 display: inline-block;
	 text-overflow: ellipsis;
	 overflow: hidden; 
	 height: 50px;
	 text-align: left;
	 font-size: 12px;
	}
	
	.soldListTableTd img {
		width: 30px;
		height: 30px;
		object-fit: cover;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="p-3 mb-2" style="background-color: #FEECE9;">
        <div class="title" >
            <h1 class="col" style="text-align: center;">상품 관리</h1>
        </div>
    </div>
<br>
	<%@ include file="menu.jsp" %>
	<div class="content1" style="width: 100%;">	
		<c:set var="num" value="${pg.total-pg.start+1}"></c:set>
		<table>
			<tr style="font-size: 13px;">
				<th class="soldListTableProduct1">상품번호</th>
				<th class="soldListTableProduct2">카테고리</th>
				<th class="soldListTableProduct3">상품이름</th>
				<th class="soldListTableProduct4">펀딩기간</th>
				<th class="soldListTableProduct5">상품가격</th>
				<th class="soldListTableProduct6">목표금액</th>
				<th class="soldListTableProduct7">달성율</th>
			</tr>
			<c:forEach var="soldList" items="${soldList}">
				<tr>
				<td style="font-size: 12px;">${soldList.p_num}</td>
				<td style="font-size: 12px;">${soldList.mini_content}</td>
				<td class="soldListTableTd"><img src="${pageContext.request.contextPath}/upload/${soldList.p_image1}"/>
				<%-- <img src="${pageContext.request.contextPath}/upload/${soldList.p_image1}"
					 alt="상품" style="width: 25px; height: 25px;"> --%>
				<a href="fundingDetail?p_num=${soldList.p_num}&p_condition=${soldList.p_condition}">${soldList.p_name}</a></td>
				<td style="font-size: 12px;">${soldList.p_start} ~ ${soldList.p_end}</td>
				<td style="font-size: 12px;"><fmt:formatNumber value="${soldList.p_price}"/>원</td>
				<td style="font-size: 12px;"><fmt:formatNumber value="${soldList.p_goalprice}"/>원</td>
				<td style="font-size: 13px;">${soldList.attainment}%</td></tr>
				<c:set var="num" value="#{num-1}"></c:set>
			</c:forEach>
		</table>
		<div class="pg_btn">
			<c:if test="${pg.startPage > pg.pageBlock}">
				<a href="soldList?currentPage=${pg.startPage-pg.pageBlock}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
				<a href="soldList?currentPage=${i}">[${i}]</a>
			</c:forEach>
			<c:if test="${pg.endPage < pg.totalPage}">
				<a href="soldList?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
			</c:if>
		</div>
		<div class="col">
			<button type="button" onclick="location.href='addProductForm'" class="btn btn-outline-primary">상품등록</button>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>