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
                <div class="col-lg-12 mt-2 mt-lg-0 d-flex align-items-stretch justify-content-center"><div class="m-lg-5"><span class="black title center">Signup</span></div></div>
                <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch justify-content-center">
                    <form action="http://3.34.217.193:포트/user-service/login" method="post" role="form" class="php-email-form">

                        <!-- 학교 이메일 입력 -->
                        <div class="form-group mb-3">
                            <input type="email" class="form-control" name="email" id="email" required placeholder="학교 이메일"/>
                        </div>

                        <!-- 학번 입력 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="studentId" id="studentId" numberOnly="true" required placeholder="학번"/>
                        </div>

                        <!-- 이름 입력 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="name" id="name" required placeholder="이름"/>
                        </div>

                        <!-- 비밀번호 입력 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="pwd" id="pwd" required placeholder="비밀번호"/>
                        </div>

                        <!-- 비밀번호 확인 name값 확인 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="pwd2" id="pwd2" required placeholder="비밀번호"/>
                        </div>

                        <!-- 회원가입 버튼 -->
                        <div class="text-center mt-2">
                            <br/>
                            <button type="submit" class="btn btnpoly">Signup</button>
                        </div>
                    </form>
                </div>

                <!-- a태그 회원일 경우 로그인 링크 -->
                <div class="text-end">
                    <a style="font-weight: bold" href="/user/login.do">로그인</a>
                </div>
            </section>
        </div>
    </div>
</section>

<%@include file="../include/js.jsp" %>
<script type="text/javascript">
    // 학번에 숫자 형태만 입력되도록 함수 작성(numberOnly=true 속성)
    $(document).on("keyup", "input:text[numberOnly]", function() {
        $(this).val( $(this).val().replace(/[^0-9]/gi,"") );
    });
</script>
</body>
</html>
