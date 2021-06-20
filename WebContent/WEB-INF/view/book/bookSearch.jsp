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
                   </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ======= Contact Section ======= -->
    <section id="result" class="contact" style="z-index: 100;overflow-y: auto;padding: 0px;margin: 45px;">
        <div class="container">
            <div class="row" data-aos="fade-in">
                <div class="col-lg-12 d-flex align-items-stretch">
                    <div class="info" id="searchResult" style="width: 800px">

<%--                        <div class="address font-weight-bold">--%>
<%--                            <i class="bi bi-geo-alt"></i>--%>
<%--                            <h4>Location:</h4>--%>
<%--                            <h5>A108 Adam Street, New York, NY 535022</h5>--%>
<%--                        </div>--%>

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
            url : "http://poly-library.com/book-service/books/list?keyword="+keyword,
            type: "get",
            success : function (data){
                console.log(data);
                for (let i = 0; i < data.length; i++) {
                    html += '<div class="address font-weight-bold row justify-content-between mb-4">'+
                        '<div class="col-2"><img class="bi bi-geo-alt" src="'+ data[i].thumbnail +'" style="width: 100px; height: 100px"></div>'+
                        ' <div class="col-10"><h4 style="padding:0px;">' +data[i].title +'</h4>'+
                        ' <h6> ' +data[i].author + '</h6></div>' +
                        '</div>'
                }

                $("#searchResult").html(html);
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
                url : "http://poly-library.com/book-service/books/list?keyword="+keyword,
                type: "get",
                success : function (data){
                    console.log(data);
                    for (let i = 0; i < data.length; i++) {
                        html += '<div class="address font-weight-bold row justify-content-between mb-4">'+
                            '<div class="col-2"><img class="bi bi-geo-alt" src="'+ data[i].thumbnail +'" style="width: 100px; height: 100px"></div>'+
                            ' <div class="col-10"><h4 style="padding:0px;">' +data[i].title +'</h4>'+
                            ' <h6> ' +data[i].author + '</h6></div>' +
                            '</div>'
                    }
                    $("#searchResult").html(html);
                }
            })
        }
    });

</script>
</body>
</html>
