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
                    <h4 style="font-weight:bold">총 대여권수 : </h4>
                </div>
                <div class="col-sm-4 services__item" style="width: 400px">
                    <h3 class="bold">신간</h3>
                    <ul>
                        <li>책 이름</li>
                        <li>책 이름</li>
                        <li>책 이름</li>
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
        $.ajax({
            url: "http://ipaddress:port/rental-service/{userId}/rentals",
            type: "get",
            success: function (data) {
                let searchList = "";
                for (let i = 0; i < data.length; i++) {
                    searchList += "<li>" + data[i] + "</li>";
                }
                $("#borrowBook").html(searchList);
                $("#borrowBook").css("color", "white");
                $("#borrowBook").show();
            }
        })
    }
</script>
</body>
</html>