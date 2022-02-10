<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../header.jsp" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <style>
            .b {
                word-break: break-all;
            }
        </style>




        <title>allMemberList 회원관리 </title>
    </head>

    <body>
        <div class="container">
            <div class="p-3 mb-2 bg-secondary text-white">
                <div class="row">
                    <div class="col" style="text-align: center;"> 회원관리</div>
                </div>

            </div>

            <div class="row">

                <div class="col-2">
                    <div class="row">
                        <div class="col">관리자님</div>
                    </div>

                    <br>

                    <div class="row">
                        <div class="col">회원관리</div>
                    </div>
                    <div class="row">
                        <div class="col">QnA 답변</div>
                    </div>
                    <div class="row">
                        <div class="col">관리자 상품관리</div>
                    </div>
                </div>

                <div class="col-10">
                    <table width="800" style="text-align: center;">
                        <tr>
                            <td>아이디</td>
                            <td>이름</td>
                            <td>연락처</td>
                            <td>이메일</td>
                            <td>회원상태</td>
                            <td>구분</td>
                            <td>전환</td>

                        </tr>
                        <tr>
                            <td>hong001 ${e.name}</td>
                            <td>홍길동</td>
                            <td>01012345678</td>
                            <td>hong001@gmail.com</td>
                            <td>활동</td>
                            <td>
                                <span class="box" size=15>
                                    <select>
                                        <option>소비자</option>
                                        <option>판매자</option>
                                    </select>
                                </span>



                            </td>
                            <td><button type="button" class="btn btn-light">전환</button></td>

                        </tr>
                        </tr>
                        <tr>
                            <td>hong001</td>
                            <td>홍길동</td>
                            <td>01012345678</td>
                            <td>hong001@gmail.com</td>
                            <td>활동</td>
                            <td>
                                <span class="box" size=15>
                                    <select>
                                        <option>소비자</option>
                                        <option>판매자</option>
                                    </select>
                                </span>



                            </td>
                            <td><button type="button" class="btn btn-light">전환</button></td>

                        </tr>

                        </tr>
                        <tr>
                            <td>hong001</td>
                            <td>홍길동</td>
                            <td>01012345678</td>
                            <td>hong001@gmail.com</td>
                            <td>활동</td>
                            <td>
                                <span class="box" size=15>
                                    <select>
                                        <option>소비자</option>
                                        <option>판매자</option>
                                    </select>
                                </span>



                            </td>
                            <td><button type="button" class="btn btn-light">전환</button></td>

                        </tr>

                        </tr>
                        <tr>
                            <td>hong001</td>
                            <td>홍길동</td>
                            <td>01012345678</td>
                            <td>hong001@gmail.com</td>
                            <td>활동</td>
                            <td>
                                <span class="box" size=15>
                                    <select>
                                        <option>소비자</option>
                                        <option>판매자</option>
                                    </select>
                                </span>



                            </td>
                            <td><button type="button" class="btn btn-light">전환</button></td>

                        </tr>
                    </table>
                </div>








                <!-- JavaScript Bundle with Popper -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                    crossorigin="anonymous"></script>



    </body>




    </html>

    <%@ include file= "../footer.jsp" %>