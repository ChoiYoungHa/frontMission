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
        <h1 class="section-title shadowyl center">Polibrary</h1>
        <div class="row" data-aos="fade-in">
            <section class="portfolio section-bg rounded-3 shadow">
                <div class="col-lg-12 mt-2 mt-lg-0 d-flex align-items-stretch justify-content-center"><div class="m-lg-5"><span class="black title center" style="font-size: 45px;">Change PW</span></div></div>
                <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch justify-content-center">
                    <form action="http://3.35.142.240:8000/user-service/users/chgPw" method="post" role="form" onsubmit="return pwdChk()">

                        <!-- 변경할 비밀번호 입력 -->
                        <div class="form-group mb-3">
                            <input type="password" class="form-control" name="password" id="password" required placeholder="변경할 비밀번호"/>
                            <div id="pwchk"></div>
                        </div>

                        <!-- 변경할 비밀번호 확인 -->
                        <div class="form-group">
                            <input type="password" class="form-control" name="password2" id="password2" required placeholder="변경할 비밀번호 확인"/>
                            <div id="pw2chk"></div>
                        </div>

                        <div class="text-center mt-2">
                            <br/>
                            <button type="submit" class="btn btnpoly">비밀번호 변경</button>
                        </div>
                    </form>
                </div>
                <div class="text-end pr-1">
                    <a style="font-weight: bold" href="javascript:history.back()">뒤로가기</a>
                    <br/>
                    <a style="font-weight: bold" href="/user/finduser.do">ID/비밀번호 찾기</a>
                </div>
            </section>
        </div>
    </div>
</section>
<%@include file="../include/js.jsp" %>
<script type="text/javascript">
    var pwJ = /^[a-zA-Z0-9]{4,20}$/;

    var pwd1 = document.getElementById("password");
    var pwd2 = document.getElementById("password2");

    // 비밀번호 변경시 멘트
    var pwchk = document.getElementById("pwchk");
    var pw2chk = document.getElementById("pw2chk");

    var cnt = 0;

    //pwJ.test($(pwd2).val()) == false
    // 변경할 비밀번호 확인
    $(pwd1).on("keyup", function() {
        if ((pwJ.test($(pwd1).val()) == false)) {
            $(pwchk).text('비밀번호를 4~20자 사이로 입력해 주세요');
            $(pwchk).css('color','red');
            return false;
        } else if (!(pwJ.test($(pwd1).val()) == false)){
            $(pw2chk).hide();
        }
    })

    $(pwd2).on("keyup", function() {
        if (!($(pwd1).val() == $(pwd2).val())) {
            $(pw2chk).text('비밀번호가 일치하지 않습니다.');
            $(pw2chk).css('color','red');
            return false;
        } else {
            $(pw2chk).hide();
        }
    })

    function pwdChk() {
        if (!cnt == 2) {
            Swal.fire('Polibrary','입력한 정보를 다시 한 번 확인해 주세요.','warning');
            return false;
        }

    }
</script>

</body>
</html>
