<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@include file = "../header.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="/resources/css/fonts.css" />
    <title>결제</title>
    <style>
      .order-info {
        margin: 0 auto;
        width: 960px;
        font-family: "Noto Sans KR";
      }

      .order-info .alert {
        width: inherit;
        margin-bottom: 2rem;
      }

      .order-info .alert span {
        display: block;
      }

      .order-info button {
        display: block;
        margin: 0 auto;
        width: 260px;
        height: 60px;
        font-size: 18px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <!-- 결제 정보-->
      <div class="order-info">
        <c:choose>
          <c:when test="${orders.success == 1}">
            <div class="alert alert-success" role="alert">
              <h5>결제가 완료 되었습니다</h5>
              <span>주문번호: ${orders.o_num }</span>
              <span>주문자: ${orders.id }</span>
              <span>주문 상품: ${orders.p_num }</span>
              <span>결제 금액: <fmt:formatNumber value="${orders.o_sum }" />원</span>
            </div>
            <button type="button" class="btn btn-primary" onclick="location.href='main'">메인페이지</button>
          </c:when>
          <c:otherwise>
            <div class="alert alert-danger" role="alert">
              <h5>결제를 실패했습니다</h5>
              <span>주문번호: ${orders.o_num }</span>
              <span>주문자: ${orders.id }</span>
              <span>주문 상품: ${orders.p_num }</span>
              <span>결제 금액:<fmt:formatNumber value="${orders.o_sum }" />원</span>
            </div>
            <button type="button" class="btn btn-primary" onclick="location.href='main'">메인페이지</button>
          </c:otherwise>
        </c:choose>
      </div>
    </div>
    <%@include file = "../footer.jsp"%>
  </body>
</html>
