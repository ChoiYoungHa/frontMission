<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
    <%@include file="include/css.jsp" %>
</head>
<body>
<!-- ======= Mobile nav toggle button ======= -->
<i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

<!-- ======= Header ======= -->
<%@include file="include/header.jsp" %>

<section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="hero-container" data-aos="fade-in" style="margin-left: 100px">
        <h1 class="section-title shadowyl">Polibrary</h1>
        <div class="container justify-content-center">
            <div class="row">
                <div class="col-sm-4 services__item" style="width: 400px;">
                    <h3 style="font-weight:bold">회원이름 님</h3>
                    <h4 style="font-weight:bold">총 대여권수 : <p id="bringBook"></p></h4>
                </div>
                <div class="col-sm-4 services__item" style="width: 400px">
                    <h3 class="bold">신간</h3>
                    <ul id="newBookList">

                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 services__item" style="width: 400px">
                    <h3 class="bold">현재 대여중인 책</h3>
                    <ul id="borrowBook">

                    </ul>
                </div>
                <div class="col-sm-3 services__item" style="width: 400px">
                    <h3 class="bold">채팅</h3>
                    <p>채팅 내용</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Header -->
<%@include file="include/js.jsp" %>
<script type="text/javascript">
    function init() {

        // 대여중인 책 리스트 가져오기
        $.ajax({
            url: "http://3.35.142.240:8000/rental-service/{userId}/rentals",
            type: "get",
            success: function (data) {
                console.log(data);
                // 데이터 구조 확인 후 데이터 뿌리기
                // let searchList = "";
                // for (let i = 0; i < data.length; i++) {
                //     searchList += "<li>" + data[i] + "</li>";
                // }
                // $("#borrowBook").html(searchList);
                // $("#borrowBook").css("color", "white");
                // $("#borrowBook").show();
            }
        })

        // 신간 책 확인 로직
        $.ajax({
            url: "http://3.35.142.240:8000/book-service/books/newBooks",
            type: "get",
            success: function (data) {
                console.log(data);

                // 데이터 값 확인하고 신간 책 목록 뿌리기
                // let searchList = "";
                // for (let i = 0; i < data.length; i++) {
                //     searchList += "<li>" + data[i] + "</li>";
                // }
                // $("#borrowBook").html(searchList);
                // $("#borrowBook").css("color", "white");
                // $("#borrowBook").show();
            }
        })

        // 대여권수 확인하기
        $.ajax({
            url: "http://3.35.142.240:8000//rental-service/{userId}/countMyRentals",
            type: "get",
            success: function (data) {
                console.log(data);

                // 데이터 값 확인하고 책권수 뿌리기
                // let searchList = "";
                // for (let i = 0; i < data.length; i++) {
                //     searchList += "<li>" + data[i] + "</li>";
                // }
                // $("#bringBook").html(searchList);
                // $("#bringBook").css("color", "white");
                // $("#bringBook").show();
            }
        })
    }


</script>
</body>
</html>