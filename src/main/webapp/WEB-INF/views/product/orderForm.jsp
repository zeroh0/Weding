<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>결제 정보 입력</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
    <body>
		<form action="orderSuccess" method="post" name="orderForm">
          	<input type="text" name="id" id="order-id">
          	<input type="text" name="p_num" id="order-p_num">
          	<input type="text" name="o_num" id="order-o_num">
          	<input type="text" name="o_qty" id="order-o_qty">
          	<input type="text" name="o_sum" id="order-o_sum">
          	<input type="text" name="o_phone" id="order-o_phone">
          	<input type="text" name="o_zipcode" id="order-o_zipcode">
          	<input type="text" name="o_roadAddress" id="order-o_roadAddress">
          	<input type="text" name="o_detailAddress" id="order-o_detailAddress">
          	<input type="text" name="success" id="order-success">
        </form>
    
        <div>
            <p>상품정보</p>
            <img src="http://placehold.it/250x250">
            <p>	
            	<input type="hidden" name="p_name" value="weding">
            	펀딩 상품 이름
           	</p>




        </div>
        <table>
            <tr>
                <td><input type="radio" name="shipping"> 기본배송지</td>
            </tr>
            
            <tr>
                <td>받는분:</td>
                <td><input type="text" name="o_name" value="홍길동"> </td>
            </tr>

           
            <tr>
                <td>배송 주소:</td>
                <td><input type="text" size="15" name="o_zipcode" id="postcode" placeholder="우편 번호" value="12345" button="DaumPostcode()"></td>
                <td><input type="button" button="DaumPostcode()" value="주소검색"></td>        
            </tr>
            <tr>
                <td></td>
                <td><input type="text" size="40" name="o_roadAddress" id="o_roadAddress" placeholder="도로명 주소" value="도로명 주소" button="DaumPostcode()"></td><p>
            </tr>
            <tr>
                <td></td>
                <td><input type="text" size="40" name="o_detailAddress" id="o_detailAddress" placeholder="나머지 주소" value="나머지 주소"/></td>
            </tr>
          
            <tr>
                <td>연락처:</td>
                <td><input type="text" name="o_phone" id="o_phone" value="01011111111"> </td>
            </tr>
              
            <tr>
                <td>배송 메세지:</td>
                <td><input type="text" name="o_msg"> </td>
            </tr>
               




            





        </table>
        
        

            
                <div class="col-2">

                </div>
                            

                <div class="col-8">
                    <table>
                        <div class="row">
                            <div class="col-3">
                             	결제 금액
                            </div>
                            <div class="col-7">
                            	10000원
                             </div>
                        </div>  
                            

                        <div class="row">
                            <div class="col-3">
                             	상품금액
                            </div>
                            <div class="col-7">
                            	10000원
                             </div>
                        </div>
                        <div class="row">
                            <div class="col-3">
                              	수량
                            </div>
                            <div class="col-7">
                            	1
                             </div>
                        </div>        
                        <div class="row">
                            <div class="col-3">
                               	최종 결제 금액
                            </div>
                            <div class="col-7">
                            	<input type="hidden" name="o_sum" id="o_sum" value="20000">
                            	10000원
                             </div>
                        </div>
                         <div class="row">
                            <div class="col-3">
                              	결제 정보
                            </div>
                            <div class="col-7">
                                <input type="radio" name="" checked> 카카오 페이
                             </div>
                         </div>
                        
						  <div class="row">
						  	<input type="hidden" name="p_num" id="p_num" value="51">
						  	
                            <button id="check_module" type="button">주문하기</button>
                         </div>
                       
                    </table>
                    
                </div>
  <%@include file = "../footer.jsp"%>
  <script>
	$("#check_module").click(function () {
		const buyer_name = "hong006"; // 구매자 아이디
		const name = document.getElementById('p_num'); // 상품번호
		const paid_amount = document.getElementById('o_sum'); // 합계
		const buyer_tel = document.getElementById('o_phone'); // 연락처
		const buyer_postcode = document.getElementById('postcode'); // 우편번호
		const buyer_addr = document.getElementById('o_roadAddress'); // 도로명주소
		const buyer_address = document.getElementById('o_detailAddress'); // 도로명주소
		const p_name = document.getElementById('p_name');
		
		var IMP = window.IMP; // 생략가능
		IMP.init('imp37388167'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'kakao',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
/* 			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: '51', // 상품번호
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다. */
			amount: 10000, // 합계
			// amount: ${bid.b_bid},
			// 가격 
		/* 	buyer_name: 'hong009',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
		/* 	buyer_postcode: '12345', */
			}, function (rsp) {
				rsp.buyer_name = buyer_name; // 구매자 아이디
				rsp.name = name.value; // 상품번호
				rsp.paid_amount = paid_amount.value; // 합계
				rsp.buyer_tel = buyer_tel.value; // 연락처
				rsp.buyer_postcode = buyer_postcode.value; // 우편번호
				rsp.buyer_addr = buyer_addr.value; // 도로명주소
				rsp.buyer_address = buyer_address.value; // 상세주소
				console.dir(rsp);
			if (rsp.success) {
				
				$.ajax({
					url: "<%=request.getContextPath()%>/orders",
                    type: "POST",
                    dataType: "JSON",
                    data: {
                        id: rsp.buyer_name,
                        p_num: rsp.name,
                        o_num: rsp.pg_tid,
                        o_qty: 1,
                        o_sum: rsp.paid_amount,
                        o_phone: rsp.buyer_tel,
                        o_zipcode: rsp.buyer_postcode,
                        o_roadAddress: rsp.buyer_addr,
                        o_detailAddress: rsp.buyer_address
                    },
				}).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( data == 1 ) {
                    	$('#order-success').attr("value", "1");
                    	console.log($('#order-success').val());
                        /* alert('성공' + rsp.pg_tid); */
                    } else {
                    	console.log($('#order-success').val());
                    	/* document.orderForm.submit(); */
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
				
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount + 'merchant_uid' + rsp.merchant_uid;
				console.log(msg);
				// success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
				// 자세한 설명은 구글링으로 보시는게 좋습니다.
				
				$('#order-id').attr("value", rsp.buyer_name);
                $('#order-p_num').attr("value", rsp.name);
                $('#order-o_num').attr("value", rsp.pg_tid);
                $('#order-o_qty').attr("value", 1);
                $('#order-o_sum').attr("value", rsp.paid_amount);
                $('#order-o_phone').attr("value", rsp.buyer_tel);
                $('#order-o_zipcode').attr("value", rsp.buyer_postcode);
                $('#order-o_roadAddress').attr("value", rsp.buyer_addr);
                $('#order-o_detailAddress').attr("value", rsp.buyer_address);
				 
               
                document.orderForm.submit();	
			} else {
				var msg = '결제에 실패하였습니다.'; 
				msg += '에러내용 : ' + rsp.error_msg;
				console.log(msg);
			}
			/* alert(msg); */
		});
	});
</script>
</body>



</html>