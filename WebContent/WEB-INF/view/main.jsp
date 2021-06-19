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
<header id="header">
    <div class="d-flex flex-column">
        <div class="profile">
            <h1 class="text-light"><a href="index.html">Polibrary</a></h1>
            <div class="social-links mt-3 text-center">
                <h2>유저닉네임</h2>
            </div>
        </div>
        <nav id="navbar" class="nav-menu navbar">
            <ul>
                <li>
                    <a href="#hero" class="nav-link scrollto active"
                    ><i class="bx bx-home"></i> <span>Home</span></a
                    >
                </li>
                <li>
                    <a href="#about" class="nav-link scrollto"
                    ><i class="bx bx-user"></i> <span>About</span></a
                    >
                </li>
                <li>
                    <a href="#resume" class="nav-link scrollto"
                    ><i class="bx bx-file-blank"></i> <span>Resume</span></a
                    >
                </li>
                <li>
                    <a href="#portfolio" class="nav-link scrollto"
                    ><i class="bx bx-book-content"></i> <span>Portfolio</span></a
                    >
                </li>
                <li>
                    <a href="#services" class="nav-link scrollto"
                    ><i class="bx bx-server"></i> <span>Services</span></a
                    >
                </li>
                <li>
                    <a href="#contact" class="nav-link scrollto"
                    ><i class="bx bx-envelope"></i> <span>Contact</span></a
                    >
                </li>
            </ul>
        </nav>
        <!-- .nav-menu -->
    </div>
</header>

<section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="hero-container" data-aos="fade-in" style="margin-left: 100px">
        <h1 class="section-title">PolyLibrary</h1>
        <div class="container justify-content-center">
            <div class="row">
                <div class="col-sm-4 services__item" style="width: 400px;">
                    <h3 style="font-weight:bold">회원이름 님</h3>
                    <h4 style="font-weight:bold">총 대여권수 : </h4>
                </div>
                <div class="col-sm-4 services__item" style="width: 400px">
                    <h3>신간</h3>
                    <ul>
                        <li>책 이름</li>
                        <li>책 이름</li>
                        <li>책 이름</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 services__item" style="width: 400px">
                    <h3>현재 대여중인 책</h3>
                    <ul id="borrowBook">
                    </ul>
                </div>
                <div class="col-sm-3 services__item" style="width: 400px">
                    <h3>채팅</h3>
                    <p>채팅 내용</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Header -->
<%@include file="include/js.jsp" %>
<script type="text/javascript">

    function init(){
        $.ajax({
            url : "http://ipaddress:port/rental-service/{userId}/rentals",
            type : "get",
            success : function(data) {
                let searchList = "";
                for(let i = 0; i < data.length; i++){
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
