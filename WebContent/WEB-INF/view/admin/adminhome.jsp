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
<%@include file="../include/header.jsp"%>

<main id="main">
    <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact" style="z-index: 1; width: 650px;">
            <div class="container">
                <h1 class="section-title shadowyl center">Polibrary - Admin</h1>
                <div class="row" data-aos="fade-in">
                    <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch">
                        <div class="php-email-form">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <div id="resHTML"></div>
                                </div>
                            </div>
                            <div class="text-center">
                                <br/>
                                <button class="btn btnpoly" onclick="getBookInfo()">검색</button>
                            </div>
                            <div id="searchResult"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</main>

<!-- End Header -->
<%@include file="../include/js.jsp" %>
<script type="text/javascript">
   $(document).ready(function() {
       $.ajax({
           url: "http://3.35.142.240/user-service/users",
           type: "get",
           dataType: "json",
           success: function(json) {
               console.log("받아온 회원리스트 : " + json);

               var resHTML = "";

               resHTML += '<div class="row" style="font-size: 20px;">';
               resHTML += '<div class="col-4 center">회원명</div>';
               resHTML += '<div class="col-4 center">학번</div>';
               resHTML += '<div class="col-4 center">전공</div>';
               resHTML += '<div class="col-4 center update">수정</div>';
               resHTML += '<div class="col-4 center delete">삭제</div></div><hr/>';

               for (var i=0; i<json.length; i++) {
                   console.log("받아온 이메일 : " + json[i].email);
                   console.log("전공 : " + json[i].department);
                   console.log("이름 : " + json[i].name);

                   resHTML += '<div class="row center mb-1">';
                   resHTML += '<div class="col-4">' + json[i].name + '</div>';
                   resHTML += '<div class="col-4">' + json[i].studentId + '</div>';
                   resHTML += '<div class="col-4">' + json[i].department + '</div>';
                   resHTML += '<div class="col-4 update">' + '<button class="btn btnpoly update" data-id1="'+json[i].userUuid+'" onclick="userupdate(this)">수정</button>' + '</div>';
                   resHTML += '<div class="col-4 delete">' + '<button class="btn btnpoly delete" data-id2="'+json[i].userUuid+'" onclick="userdelete(this)">삭제</button>' + '</div>';
                   resHTML += '</div>';
               }

               $("#resHTML").html(resHTML);
           }
       })
   })

   //상세보기 이동
   function userupdate(e){
       console.log(e);
       console.log(e.getAttribute('data-id1'));
       let uid = e.getAttribute('data-id1');
       location.href="/admin/edituser.do?uid="+ uid;
   }

</script>

</body>
</html>
