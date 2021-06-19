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
                <div class="col-lg-12 d-flex align-items-stretch justify-content-center"><span class="black title center">Signup</span></div>
                <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch justify-content-center mt-5">
                    <form action="http://3.34.217.193:포트/user-service/login" method="post" role="form" class="php-email-form" onsubmit="return signupValid()">

                        <!-- 학교 이메일 입력 -->
                        <div class="form-group mt-3 mb-3">
                            <input type="email" class="form-control" name="email" id="email" placeholder="학교 이메일" />
                        </div>

                        <!-- 학번 입력 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="studentId" id="studentId" numberOnly="true" placeholder="학번"/>
                        </div>

                        <!-- 이름 입력 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="name" id="name" placeholder="이름"/>
                        </div>


                        <!-- 비밀번호 입력 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="pwd" id="pwd" placeholder="비밀번호"/>
                        </div>

                        <!-- 비밀번호 확인 name값 확인 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="pwd2" id="pwd2"placeholder="비밀번호 확인"/>
                        </div>

                        <!-- 닉네임 -->
                        <div class="form-group mb-3">
                            <input type="text" class="form-control" name="nickname" id="nickname"placeholder="닉네임"/>
                        </div>

                        <!-- 전공 -->
                        <div class="form-group mb-3">
                            <select id="department" name="department">
                                <option value="" selected disabled>=전공 선택=</option>
                                <option value="데이터분석과">데이터분석과</option>
                                <option value="디지털콘텐츠과">디지털콘텐츠과</option>
                                <option value="의료정보과">의료정보과</option>
                                <option value="주얼리디자인과">주얼리디자인과</option>
                                <option value="i-패션디자인과">i-패션디자인과</option>
                                <option value="패션산업과">패션산업과</option>
                                <option value="전문기술과정">전문기술과정</option>
                                <option value="하이테크과정">하이테크과정</option>
                                <option value="신중년특화과정">신중년특화과정</option>
                                <option value="여성재취업과정">여성재취업과정</option>
                            </select>
                        </div>


                        <!-- 회원가입 버튼 -->
                        <div class="text-center mt-2">
                            <br/>
                            <button type="submit" class="btn btnpoly">회원가입</button>
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

    function signupValid() {

        //이메일 정규식
        var emailJ = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

        if (emailJ.test($("#email").val()) == false || nameJ.test($("#name").val()) == false
            || ($("#password").val() != $("#password2").val()) || pwJ.test($(pwd1).val()) == false) {

            alert('입력한 정보를 다시 한 번 확인해 주세요');

            return false;
        }

    }
</script>
</body>
</html>
