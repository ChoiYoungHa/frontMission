<!-- Vendor JS Files -->
<script src="/resource/assets/vendor/aos/aos.js"></script>
<script src="/resource/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resource/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/resource/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/resource/assets/vendor/php-email-form/validate.js"></script>
<script src="/resource/assets/vendor/purecounter/purecounter.js"></script>
<script src="/resource/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/resource/assets/vendor/typed.js/typed.min.js"></script>
<script src="/resource/assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="/resource/assets/js/main.js"></script>

<!-- jquery (cdn 사용) -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script type="text/javascript">
    // 학번에 숫자 형태만 입력되도록 함수 작성(numberOnly=true 속성)
    $(document).on("keyup", "input:text[numberOnly]", function() {
        $(this).val( $(this).val().replace(/[^0-9]/gi,"") );
    });
</script>