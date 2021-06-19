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
    <section id="contact" class="contact" style="z-index: 1; width: 600px">
        <div class="container">
            <div class="row" data-aos="fade-in">
                <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch">
                   <div class="php-email-form">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="keyword">검색</label>
                                <input type="text" name="keyword" class="form-control" id="keyword" required placeholder="책 이름 또는 저자를 검색해보세요"/>
                            </div>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-primary" onclick="getBookInfo()">검색</button>
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
    function getBookInfo(){
        let keyword = document.getElementById("keyword");
        let searchResult = document.getElementById("searchResult");
        let html = "";

        let value = keyword.value;

        $.ajax({
            url : "http://ipaddress:port/book-service/books/list",
            type: "get",
            data : {
                "keyword" : value
            },
            dataType : "json",
            success : function (data){
                console.log("검색결과 : " + data);
                // object에 담겨진 데이터 구조에 접근해서 html에 담아 뿌리기
            }
        })
    }
</script>
</body>
</html>
