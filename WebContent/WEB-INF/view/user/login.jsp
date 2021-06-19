<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Polibrary</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <%@include file="../include/css.jsp" %>
</head>
<body>
<section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="hero-container" data-aos="fade-in">
        <h1 class="section-title shadowyl">PolyLibrary</h1>
        <div class="row" data-aos="fade-in">
            <section class="portfolio section-bg rounded-3 shadow">
                <div class="col-lg-12 mt-2 mt-lg-0 d-flex align-items-stretch justify-content-center"><div class="m-lg-5"><span class="black center title">Login</span></div></div>
                <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch justify-content-center">
                    <form action="http://3.34.217.193:포트/user-service/login" method="post" role="form" onsubmit="return loginChk()">
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="email" id="email" placeholder="학교 이메일" onkeyup="emailChk()"/>
                            <div id="emchk"></div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="password" id="password" placeholder="비밀번호"/>
                        </div>
                        <div class="text-center mt-2">
                            <br/>
                            <button type="submit" class="btn btnpoly">로그인</button>
                        </div>
                    </form>
                </div>
                <div class="text-end">
                    <a style="font-weight: bold" href="/user/signup.do">회원가입</a>
                    <br/>
                    <a style="font-weight: bold" href="/user/finduser.do">ID/비밀번호 찾기</a>
                </div>
            </section>
        </div>
    </div>
</section>
<%@include file="../include/js.jsp" %>
</body>
</html>
