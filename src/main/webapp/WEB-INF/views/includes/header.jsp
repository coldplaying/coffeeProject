<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <style>
        #navbarResponsive { margin-left:90px;}
        @media all and (max-width:991px){
            .loginNav .nav-item, .loginNav a { float: left;}
            #navbarResponsive { margin-left:30px;}
        }
    </style>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top" id="mainNav">
            <div class="container px-1 px-lg-1">
                <a class="navbar-brand me-5 text-center" href="/" style="display:inline-block;">
                    <img src="/resources/assets/images/logo.png" alt="logo" style="width:128px;">
                </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav  my-2 my-lg-0">
                        <li class="nav-item menu" style="margin-right:30px;"><a class="nav-link" style="font-size: 1em;color:black;" href="/intro/intro">비트커피</a></li>
                        <li class="nav-item menu" style="margin-right:30px;"><a class="nav-link" style="font-size: 1em;color:black;" href="/store/store">스토어</a></li>
                        <li class="nav-item menu" style="margin-right:30px;"><a class="nav-link" style="font-size: 1em;color:black;" href="/cate/cate">원두추천</a></li>
                        <li class="nav-item menu" style="margin-right:30px;"><a class="nav-link" style="font-size: 1em;color:black;" href="/board/list">게시판</a></li>
                    </ul>
                    
                   	<c:if test="${member.userId == null }">
                    <ul class="navbar-nav ms-auto loginNav" style="padding-bottom: 1.5em;">
                        <li class="nav-item"><a class="nav-link px-0" style="font-size: 0.7em;color:black;" href="/member/login">&nbsp;로그인 |</a></li>
                        <li class="nav-item"><a class="nav-link px-0" style="font-size: 0.7em;color:black;" href="/member/join">&nbsp;회원가입</a></li>
                    </ul>
                    </c:if>
                  	<c:if test="${member.userId != null }">
                    <ul class="navbar-nav ms-auto loginNav" style="padding-bottom: 1.5em;">
                        <li class="nav-item"><a class="nav-link px-0" style="font-size: 0.7em;color:black;" href="/member/mypage?userId=${member.userId }">&nbsp;내정보수정 |</a></li>
                        <li class="nav-item"><a class="nav-link px-0" style="font-size: 0.7em;color:black;" href="/member/cart">&nbsp;장바구니 |</a></li>
                        <li class="nav-item"><a class="nav-link px-0" style="font-size: 0.7em;color:black;" href="/member/logout">&nbsp;로그아웃</a></li>
                    </ul>
                  	</c:if>
                    
                    <!-- <ul class="navbar-nav ms-auto loginNav" style="padding-bottom: 1.5em;">
                        <li class="nav-item"><a class="nav-link px-0" style="font-size: 0.5em;" href="/admin/main">&nbsp;관리자</a></li>
                    </ul> -->
                    
                </div>
            </div>
        </nav>
    <body>