<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   form{
      font-size: 12px;   
   }

   table{
      width: 700px;
      height: auto;
      margin: auto;
   }
   
   #menuName{
      width: 550px;
       height: 40px;
       text-align: center;
       font-size: 13px;
       font-weight: bold;
    }
    tr{
       margin-top : 10px;
    }
    td{
       margin-top : 10px;
    }
    
</style>

<script type="text/javascript">
   function dateChk() {
      var from = document.getElementById('from');
        var to = document.getElementById('to');
        
        var date1 = from.valueAsDate;
        var date2 = to.valueAsDate;
        
        console.log(date1);
        console.log(date2);
        console.log(date1 < date2);
        
        if(date1 > date2) {
           alert('종료일자는 시작일자보다 빠를 수 없습니다.')
           return false;
        } else {
           return true;
        }
      
   }
</script>

</head>
<body>
<c:if test="${msg!=null}">${msg}</c:if>
<%@ include file="../header.jsp" %>
<div class="container">
   <div class="p-3 mb-2" style="background-color: #FEECE9;">
        <div class="title" >
            <h1 class="col" style="text-align: center;">상품 등록</h1>
        </div>
    </div><hr>
   <div class="row">
      <%@include file = "../mypage/menu.jsp"%>
      <form name="addProduct" id="addProduct" action="addProduct" method="post" enctype="multipart/form-data" style="width: 80%;" onsubmit="return dateChk()">
         <table class="col-md-12">
             <tr>
                <td id="menuName">카테고리</td>
                <td>
                   <select name="mini_cat">
                      <option disabled="disabled" selected="selected">선택</option>
                         <c:forEach var="product" items="${catList}">
                            <option value="${product.mini_cat}">${product.mini_content}</option>
                     </c:forEach>
                   </select>
                </td>
             </tr>
            <tr>
                <td id="menuName">상품판매업체</td>
                <td>
                  <input type="text" name="p_store"   autofocus required>
                </td>
             </tr>
             
           <tr>
                <td id="menuName">상품이름</td>
                <td>
                  <input type="text" name="p_name"   required>
                </td>
            </tr>
            
             <tr>
                <td id="menuName">상품가격</td>
                <td>
                   <input type="text" name="p_price"   required>원
                </td>
            </tr>
            
            <tr>
               <td id="menuName">대표이미지</td>
                <td>
                  <input type="file" id="p_image1" name="file1" required>
                </td>
            </tr>
            
            <tr>
               <td id="menuName">상세이미지</td>
                <td>
                  <input type="file" id="p_image2" name="file2" required>
                </td>
            </tr>
            
             <tr>
                <td id="menuName">상품설명</td>
                <td>
                  <textarea rows="2" cols="50" name="p_description" ></textarea>
                </td>
            </tr>
            <tr>
                <td id="menuName">펀딩기간</td>
                <td>
                 <input type="date" name="p_start" id="from" min="${now}" required> ~ <input type="date" name="p_end" id="to" min="${now}" max="${endDate}" required>
                 <p style="font-size: 11px;">※ 펀딩 기간은 최소 익일부터,시작일로부터 최대 60일까지 지정 가능합니다.
                 </td>
            </tr>
            
           <tr>
                <td id="menuName">목표금액</td>
                <td>
                   <input type="number" name="p_goalprice" min="500000" step="10000" required>원
                   <p style="font-size: 11px;">※ 최소 금액은 500,000원부터 10,000원 단위로 지정 가능합니다.
                </td>
            </tr>
             <tr>
               <td colspan="2" id="menuName">
                  <hr>
               </td>
            </tr>            
            <tr>
               <td id="menuName">안내사항</td>
               <td style="width: 75%;">
                  <p> · 펀딩 기간과 목표 금액은 어떠한 경우에도 변경이 불가합니다. 신중히 결정하시기 바랍니다.
                  <p> · 성차별, 인종 비하, 종교 관련 등 상품 판매와 관계없는 내용이 포함된 경우 무통보 삭제처리 됩니다.
                  <p> · 이미 등록된 상품은 판매자 임의로 수정할 수 없으며 수정 시  Q&A 게시판을 이용하여 요청 주시기 바랍니다.
                  <p> · Q&A 게시판에 수정 요청 시 상품 판매와 관계없는 내용으로는 수정이 불가합니다.
               </td>
            </tr>
            <tr>
               <td colspan="2" id="menuName">
                  <hr>
               </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: right;" id="menuName">
                  <input type="button" value="목록" class="btn btn-outline-primary" onclick="location.href='soldList.jsp'">
                  <input type="reset" value="취소" class="btn btn-outline-primary" onclick="location.href='soldList.jsp'">
                  <input type="submit" value="등록" class="btn btn-outline-primary" >
                </td>
            </tr>
            
            </table>
        </form>
     </div>
  </div>
<%@ include file="../footer.jsp" %>
</body>
</html>