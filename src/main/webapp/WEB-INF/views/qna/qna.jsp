
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../back.jsp" %>



<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=1100, user-scalable=yes">

<meta name="author" content="Newriver">

<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<title>BITCOFFEE</title>
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


</head>
<body>
<div>
<div id="wrap" >
	
	

	<div id="container" class="sub">
		<section class="sub-contents">
			<div class="row mt-4">
   				<div class="col-6 d-grid">
   					<a href="/board/list" class="btn btn-outline-primary">게시판</a>
   				</div>
   				<div class="col-6 d-grid">
   					<a href="/qna/qna" class="btn btn-outline-primary active">FAQ</a>
   				</div>
   			</div>
			<div class="s-title-ty1">
				<h2 class="s-title">FAQ</h2>				
			</div>	                   
			<ul class="faq-lists">
								<li>
					<button type="button" class="q-box">
						<div class="icon-cell">
							<span class="icon-q">Q</span>
						</div>
						<div class="tit-cell">선물용 선불카드 구매하고 싶어요.</div>
					</button>
					<div class="a-box">
						<div class="icon-cell">
							<span class="icon-a">A</span>
						</div>
						<div class="txt-cell"><p>비트커피에서는 3,5,10만원권의 선불카드를 판매하고 있습니다. </p><p>멤버십 앱에 등록하시면 지속적으로 앱에서 충전이 가능합니다.</p><p>충전 이벤트도 진행하고 있으니, 등록하시고 이벤트 내용도 앱 푸쉬 메시지로 받아 보세요.</p></div>
					</div>
				</li>
								<li>
					<button type="button" class="q-box">
						<div class="icon-cell">
							<span class="icon-q">Q</span>
						</div>
						<div class="tit-cell">비트데이 쿠폰이 있는데, 어떻게 사용하나요?</div>
					</button>
					<div class="a-box">
						<div class="icon-cell">
							<span class="icon-a">A</span>
						</div>
						<div class="txt-cell"><p>비트커피에는 매월 6일을 멤버십 데이로 선정하고, 멤버십 회원들에게 쿠폰을 제공하고 있습니다.</p><p>6일에만 사용이 가능하기 때문에 오늘 바로 사용하시는 게 좋습니다. 내일이면 쿠폰이 소멸되니 참고 부탁드립니다.</p></div>
					</div>
				</li>
								<li>
					<button type="button" class="q-box">
						<div class="icon-cell">
							<span class="icon-q">Q</span>
						</div>
						<div class="tit-cell">쿠폰이 바로 발생되지 않아요.</div>
					</button>
					<div class="a-box">
						<div class="icon-cell">
							<span class="icon-a">A</span>
						</div>
						<div class="txt-cell"><p>모든 쿠폰은 익일 지급됩니다.</p><p>그 다음날에도 지급이 되지 않았다면, 본사에 오류문의를 해야 하니 구매하신 날짜와 고객님의 성함과 핸드폰 번호를 알려 주세요.</p><p>(고객센터로 문의)</p></div>
					</div>
				</li>
								<li>
					<button type="button" class="q-box">
						<div class="icon-cell">
							<span class="icon-q">Q</span>
						</div>
						<div class="tit-cell">비트포인트가 적립이 되지 않았어요. </div>
					</button>
					<div class="a-box">
						<div class="icon-cell">
							<span class="icon-a">A</span>
						</div>
						<div class="txt-cell"><p>비트포인트가 적립되는 데에는 약 2분의 시간이 걸립니다.</p><p>2분이 지났음에도 적립이 되지 않았다면, 본사에 오류문의를 해야 하니 구매하신 날짜와 고객님의 이름과 핸드폰 번호를 알려 주세요.</p><p>(고객센터로 문의)</p></div>
					</div>
				</li>
								<li>
					<button type="button" class="q-box">
						<div class="icon-cell">
							<span class="icon-q">Q</span>
						</div>
						<div class="tit-cell">쿠폰을 사용하고 싶어요.</div>
					</button>
					<div class="a-box">
						<div class="icon-cell">
							<span class="icon-a">A</span>
						</div>
						<div class="txt-cell"><p>네 고객님, 멤버십 앱의 비트카드의 바코드를 보여 주세요. (찍은 후) 고객님의 쿠폰 바코드를 보여 주세요.</p></div>
					</div>
				</li>
							</ul>
						<!-- paging -->
            <!-- <div class="pagination">
                <div class="paging" id="page1" page1="1" count1="2" path1="">
                    <a href="#self" class="page_first"><span class="hide">처음</span></a>
                    <a href="#self" class="page_prev"><span class="hide">이전</span></a>
                    <span class="page">
                        <a href="#self" class="on">1</a>
                    </span>
                    <a href="#self" class="page_next"><span class="hide">다음</span></a>
                    <a href="#self" class="page_last"><span class="hide">끝</span></a>
                </div>
            </div> -->
            <!-- // -->			
					</section>	
		
	</div><!-- id : container -->

		
</div><!-- id : wrap -->
</div>
<%@ include file="../includes/footer.jsp" %> 
<script>
ui.addOnAction('.faq-lists li');
Paging.Load('1', 'pg', '5');
</script>

</body>
</html>	