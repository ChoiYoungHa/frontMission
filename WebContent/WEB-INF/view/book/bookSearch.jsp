<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
    <%@include file="../include/css.jsp" %>
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
<!-- End Header -->
<%@include file="../include/js.jsp" %>
</body>
</html>
