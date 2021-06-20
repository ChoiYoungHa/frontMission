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
        let keyword = document.getElementById("keyword").value;
        let html = "";

        // 프리로더 reloading_st();
        $.ajax({
            url : "http://3.35.142.240/book-service/books/list?keyword="+keyword,
            type: "get",
            dataType : "json",
            success : function (data){
                console.log(data);
            }
        })
    }

    document.querySelector('#keyword').addEventListener('keypress', function (e) {
        if (e.key === 'Enter') {
           // 프리로더 reloading_st();
            let keyword = document.getElementById("keyword").value;
            let html = "";

            // 프리로더 reloading_st();
            $.ajax({
                url : "http://3.35.142.240/book-service/books/list?keyword="+keyword,
                type: "get",
                data : {
                    "keyword" : keyword
                },
                dataType : "json",
                success : function (data){
                    console.log(data);
                }
            })
        }
    });

</script>
</body>
</html>
