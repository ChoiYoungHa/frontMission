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
        <h1 class="section-title shadowyl center">PolyLibrary</h1>
        <div class="row" data-aos="fade-in">
            <section class="portfolio section-bg rounded-3 shadow">
                <div class="col-lg-12 mt-2 mt-lg-0 d-flex align-items-stretch justify-content-center"><div class="m-lg-5"><span class="black title center">인증번호 입력</span></div></div>
                <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch justify-content-center">
                    <form action="http://3.34.217.193:포트/user-service/users/pwCheck" method="post" role="form" class="php-email-form">

                        <!-- 인증번호 입력란 -->
                        <div class="form-group mb-3 center">
                            <label for="client_auth">이메일로 전송된 인증번호를 입력해 주세요</label>
                        </div>
                            <div class="form-group mb-3">
                            <input type="text" class="form-control" name="client_auth" id="client_auth" required placeholder="인증번호"/>
                        </div>

                        <div class="text-center mt-2">
                            <br/>
                            <button type="submit" class="btn btnpoly">인증번호 전송</button>
                        </div>
                    </form>
                </div>
                <div class="text-end">
                    <a style="font-weight: bold" href="/user/signup.do">뒤로가기</a>
                </div>
            </section>
        </div>
    </div>
</section>
<%@include file="../include/js.jsp" %>
</body>
</html>
