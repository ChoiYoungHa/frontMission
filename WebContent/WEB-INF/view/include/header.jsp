<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<header id="header">
    <div class="d-flex flex-column">
        <div class="profile">
            <h1 class="text-light"><a href="index.html">Polibrary</a></h1>
            <div class="social-links mt-3 text-center">
                <h2>유저닉네임</h2>
            </div>
        </div>
        <nav id="navbar" class="nav-menu navbar">
            <ul>
                <li>
                    <a href="/main.do" class="nav-link scrollto"><i class="bx bx-home"></i> <span>메인</span></a>
                </li>
                <li>
                    <a href="/book/bookSearch.do" class="nav-link scrollto"><i class="bx bx-book-content"></i><span>책 검색</span></a>
                </li>
                <li>
                    <a href="#resume" class="nav-link scrollto"><i class="bx bx-server"></i><span>채팅</span></a>
                </li>
                <li>
                    <a href="#portfolio" class="nav-link scrollto"><i class="bx bx-user"></i><span>내 대여목록</span></a>
                </li>
                <li>
                    <a href="#portfolio" class="nav-link scrollto"><i class="bx bx-envelope"></i><span>내 신청</span></a>
                </li>
                <li>
                    <a href="#portfolio" class="nav-link scrollto"><i class="bx bx-box"></i><span>내 배송</span></a>
                </li>
                <li>
                    <a href="#services" class="nav-link scrollto"><i class="bx bx-file-blank"></i><span>내 정보수정</span></a>
                </li>
                <li>
                    <a href="#contact" class="nav-link scrollto"><i class="bx bx-happy"></i><span class="black">대여희망 게시판</span></a>
                </li>
            </ul>
        </nav>
        <!-- .nav-menu -->
    </div>
</header>

<style>
    .black:hover {
        color: white;
    }
</style>