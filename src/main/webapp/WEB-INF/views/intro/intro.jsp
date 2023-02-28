<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header.jsp" %>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
 
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=1100, user-scalable=yes">
<meta name="title" content="CAFFEBENE">
<meta name="description" content="Hello Again 우리동네 카페베네 공식홈페이지입니다.">
<meta name="keywords" content="카페베네, CAFFEBENE, caffebene, 카페베네메뉴, 빙수, 커피, 우리동네, 카페베네창업, 카페창업, 프랜차이즈, 커피창업, 카페">
<meta name="author" content="Newriver">
<meta property="og:type" content="website">
<meta property="og:title" content="CAFFEBENE">
<meta property="og:description" content="Hello Again 우리동네 카페베네 공식홈페이지입니다.">
<meta property="og:image" content="http://www.caffebene.co.kr/images/common/share_image.jpg?20200625">
<meta property="og:url" content="http://www.caffebene.co.kr">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<title>CAFFEBENE</title>
<link rel="apple-touch-icon" sizes="180x180" href="http://www.caffebene.co.kr/apple-touch-icon.png?20200625">
<link rel="icon" type="image/png" sizes="32x32" href="http://www.caffebene.co.kr/favicon-32x32.png?20200625">
<link rel="icon" type="image/png" sizes="16x16" href="http://www.caffebene.co.kr/favicon-16x16.png?20200625">
<link rel="manifest" href="http://www.caffebene.co.kr/site.webmanifest?20200625">
<link rel="stylesheet" href="http://www.caffebene.co.kr/common/css/style.css?2022062901">
<script src="http://www.caffebene.co.kr/common/js/jquery-3.2.1.min.js"></script>
<script src="http://www.caffebene.co.kr/common/js/jquery.cookie.js"></script>
<script src="http://www.caffebene.co.kr/common/js/mobile-detect.min.js"></script>
<script src="http://www.caffebene.co.kr/common/js/bodyScrollLock.js"></script>
<script src="http://www.caffebene.co.kr/common/js/masonry.pkgd.min.js"></script>
<!-- <script src="http://www.caffebene.co.kr/common/js/jquery.masonry.min.js"></script> -->
<!-- <script src="http://www.caffebene.co.kr/common/js/imagesloaded.pkgd.js"></script> -->
<script src="http://www.caffebene.co.kr/common/js/imagesloaded.pkgd.min.js"></script>
<script src="http://www.caffebene.co.kr/common/js/slick.js"></script>
<script src="http://www.caffebene.co.kr/common/js/ui.js?20220826"></script>
<script src="http://www.caffebene.co.kr/common/js/common.js?20200625"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-170605154-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-170605154-2');
</script>
<script type="text/javascript">
var md = new MobileDetect(window.navigator.userAgent);
if(md.mobile()){
    if(!$.cookie('pc') || $.cookie('pc') == undefined){
        switch(location.search){
            case "?pc=1": $.cookie('pc', '1', {expires: 1, path: '/'}); location.href="http://www.caffebene.co.kr"+location.pathname; break;
            default: location.href = "http://www.caffebene.co.kr/m"+location.pathname+location.search;
        }
    }
}
</script>

</head>
<body>

	

	<div id="container" class="sub">
		<section class="sub-top">
			<div class="sub-visual-bene">
				<div class="bene-story-slider">
                    <div>
                        <img src="/resources/assets/images/6.jpg" alt="">
                        
                    </div>
                    <div>
                        <img src="/resources/assets/images/7.jpg" alt="">
                        
                    </div>
                    <div>
                        <img src="/resources/assets/images/8.jpg" alt="">
                       
                    </div>
                    
                </div>
			</div>	
				
		</section>
		<section class="sub-contents wide">
            <div class="bene-story">
                <div class="sect1 txts">
                    <p class="t1 n-motion n-bottom n-delay1">한 사람을 위한<br>커피를 준비하는</p>   
                    <p class="t2 n-motion n-bottom n-delay2">비트커피의 과정은 길고 엄격합니다.</p>
                </div>
                <div class="sect2">
                    <img src="/resources/assets/images/coffeebean.jpg" alt="커피콩" class="n-motion n-bottom">
                    <p class="txts n-motion n-bottom n-delay2">다양한 산지의 커피들 중-<br>
                        매력적인 커피 생두를 찾아내고,<br>
                        한 알 한 알 정성스럽게 골라내고,</p>
                    <div class="sect2-1">
                        <img src="/resources/assets/images/roasting.jpg" alt="로스팅" style="width:700px; height:700px;" class="n-motion n-bottom">
                        <div class="txts n-motion n-bottom n-delay4">
                           <p>최적의 맛을 만나기 위해 볶고 또 볶고,</p>
                            <p>마지막 한 잔이 당신 앞에 놓이기까지<br>그 모든 순간에 정성과 바람을 담습니다.</p>
                            <p>부디 이 한 잔의 커피로 당신이 행복해지기를…</p>
                        </div>
                    </div>    
                </div>
                <div class="after n-motion n-bottom n-delay4"></div>                
            </div>  
        </section>		
	</div><!-- id : container -->

	

</div><!-- id : wrap -->
<%-- <%@ include file="../includes/footer.jsp" %>  --%>
<script>ui.slider.beneVisual();</script>	

</body>
</html>	
        <!-- 지도 -->
        <section class="py-5 bg-dark" id="about">
        	<h2 class="text-white mt-0 text-center">오시는 길</h2>
            <hr class="divider divider-dark" />
            <!-- google지도 -->
			<iframe class="mt-5" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.56319499316!2d127.02543101550178!3d37.49463293600002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15a8df30f01%3A0x44f6db1c2b6c3bf7!2z67mE7Yq46rWQ7Jyh7IS87YSw!5e0!3m2!1sko!2skr!4v1666176814184!5m2!1sko!2skr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			<div class="text-center text-white" style="margin-top:50px;">
				<!-- <a href="#" style="color:white; text-decoration:none;">이용안내</a> |
				<a href="#" style="color:white; text-decoration:none;">서비스 이용안내</a> |
				<a href="#" style="color:white; text-decoration:none;">개인정보 취급방침</a> |
				<a href="#" style="color:white; text-decoration:none;">이메일 무단수집거부</a> |
				<a href="#" style="color:white; text-decoration:none;">공지사항</a><br> -->
				<button type="button" class="btn-top">Top</button>
			</div>                 
        </section>
        

