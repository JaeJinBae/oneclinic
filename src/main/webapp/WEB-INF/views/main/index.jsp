<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원마취통증의학과</title>
<meta name="naver-site-verification" content="d53046e7ecfe442e3b973c1baeb37ec7fc75031d"/>
<meta name="description" content="대구 북구 침산동, 비수술클리닉, 성장클리닉, 교정클리닉, 도수치료">
<meta property="og:type" content="website">
<meta property="og:title" content="원마취통증의학과">
<meta property="og:description" content="대구 북구 침산동, 비수술클리닉, 성장클리닉, 교정클리닉, 도수치료">
<meta property="og:image" content="http://www.1clinic.co.kr/logo.png">
<meta property="og:url" content="http://www.1clinic.co.kr">
<link rel="canonical" href="http://www.1clinic.co.kr/">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style>
.allWrap{
	width:100%;
	height: 100%;
}
.headerWrap{
	width:100%;
	min-width:1100px;
	background: url("${pageContext.request.contextPath}/resources/images/subNavBg.png");
	background-size: cover;
	position: absolute;
	top:0; 
	z-index: 99;
}
.header_top{
	width:100%;
	height:20px;
	background: #276f90;
}
.mg_top_135{
	height:120px;
}
.sectionWrap{
	width:100%;
	height: 100%;
	min-height: 650px;
	position: relative;
	padding-top: 50px;
}
.popup{
	position: fixed;
	top: 140px;
	right: 500px;
	z-index: 99;
	width: 550px;
	border: 1px solid lightgray;
}
.popup > img{
	width: 100%;
}
.popup > .popup_closeBtn{
	width: 100%;
	background: #999;
}
.popup > .popup_closeBtn > p{
	margin-left: 87%;
	color: #fefefe;
	cursor: pointer;
	padding: 10px;
	font-size: 15px;
	letter-spacing: 2px;
}
.popup > .popup_closeBtn > p:hover{
	font-weight: bold;
}
.sectionBg{
	position: absolute;
	top:0;
	left:0;
	z-index: -1;
	width: 100%;
	height: 100%;
}
.sectionBg > img{
	width: 100%;
	height: 100%;
}
.sectionContentWrap{
	width: 1100px;
	height:600px;
	margin: 0 auto;
	overflow: hidden;
}
.mainBannerWrap{
	width: 665px;
	float:left;
}
.mainBanner{
	width: 100%;
}
.mainBanner img{
	width: 100%;
}
.slick-dots{
	bottom: 0 !important;
}
.slick-dots li.slick-active button:before{
	color: skyblue !important;
}
.slick-dots li button:before{
	color: lightgray;
}
.boxWrap{
	width:420px;
	float: right;
} 
.box{
	height: 143px;
	float: left;
	margin-left:5px;
	margin-top: 5px;
	border: 1px solid lightgray;
	border-radius: 5px;
}
.box > a{
	width: 100%;
}
.box > a > img{
	width: 100%;
	height: 100%;
	border-radius: 5px;
}
.box{
	width: 100%;
}
.box > img{
	width: 100%;
	height: 100%;
	border-radius: 5px;
}
.box1{
	width: 205px;
}

.box2{
	width: 205px;
}

.box3{
	width: 245px;
}

.box4{
	width: 165px;
}

.box5{
	width: 416px;
}
.box5 > img{
	width: 100%;
}
.box6{
	width: 205px;
	background: #fff;
}
.box6 > .box_title{
	border-bottom: 2px solid #8754c7;
}
.box6 > .box_title > h4{
	color: #8754c7;
}

.box7{
	width: 205px;
	background: #fff;
}
.box7 > .box_title{
	border-bottom: 2px solid #ed933a;
}
.box7 > .box_title > h4{
	color: #ed933a;
}
.box_title{
	width: 100%;
	padding: 5px 10px;
	padding-top: 10px;
	overflow: hidden;
}
.box_title > h4{
	font-size: 18px;
	float:left;
}
.box_title > p{
	float: right;
	font-size: 15px;
	padding-top: 3px;
}
.box > ul{
	
}
.box> ul > li{
	padding: 8px;
}
.box> ul > li > p{
	text-align: center;
	font-size: 15px;
}
.box> ul > li > a{
	font-size: 15px;
}

.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(function(){
	
	var height = $(window).height();
	var sectionHeight = height-189; 
	$(".sectionWrap").css("height",sectionHeight);
	console.log(height);
	$(window).resize(function(){
		height = $(window).height();
		sectionHeight = height-189; 
		$(".sectionWrap").css("height",sectionHeight);
	});
	
	$(".mainBanner").slick({
		arrows:false,
		infinite:true,
		speed:1000,
		fade:true,
		cssEase:'linear',
		autoplay:true,
		autoplaySpeed:7000,
		dots:true,
	});
	
	$(".popup > .popup_closeBtn > p").click(function(){
		$(".popup").css("display","none");
	});
});
</script>
</head>
<body>
	<div class="allWrap">
		<div class="headerWrap">
		<div class="header_top"></div>
			<jsp:include page="../include/pcHeader.jsp"></jsp:include>
		</div>
		<div class="mg_top_135"></div>
		<div class="sectionWrap">
			<div class="popup">
				<img src="${pageContext.request.contextPath}/resources/images/popup20190522.png">
				<div class="popup_closeBtn">
					<p>닫기</p>
				</div>
			</div>
			<div class="sectionBg">
				<img src="${pageContext.request.contextPath}/resources/images/mainBg.jpg">
			</div>
			<div class="sectionContentWrap">
				<div class="mainBannerWrap">
					<div class="mainBanner">
						<img src="${pageContext.request.contextPath}/resources/images/mainBanner1.png">
						<img src="${pageContext.request.contextPath}/resources/images/mainBanner2.png">
						<img src="${pageContext.request.contextPath}/resources/images/mainBanner3.png">
					</div>
				</div>
				<div class="boxWrap">
					<div class="box1 box">
						<img src="${pageContext.request.contextPath}/resources/images/mainBox1.png">
					</div>
					<div class="box2 box">
						<a href="${pageContext.request.contextPath}/menu04_03"><img src="${pageContext.request.contextPath}/resources/images/mainBox2.png"></a>
					</div>
					<div class="box3 box">
						<a href="${pageContext.request.contextPath}/menu01_03"><img src="${pageContext.request.contextPath}/resources/images/mainBox3.png"></a>
					</div>
					<div class="box4 box">
						<a href="${pageContext.request.contextPath}/menu01_04"><img src="${pageContext.request.contextPath}/resources/images/mainBox4.png"></a>
					</div>
					<div class="box5 box">
						<img src="${pageContext.request.contextPath}/resources/images/mainBox5.png">
					</div>
					<div class="box6 box">
						<div class="box_title">
							<h4>치료후기</h4>
							<p><a href="${pageContext.request.contextPath}/menu04_04">더보기</a></p>
						</div>
						<ul>
							<!-- <li><a href="">- 척추측만증 도수치료 후...</a></li>
							<li><a href="">- 허리디스크 재활치료 경과...</a></li>
							<li><a href="">- 척추측만증 도수치료 후...</a></li> -->
							<li><p>등록된 게시물이 없습니다.</p></li>
						</ul>
					</div><!-- box6 end -->
					<div class="box7 box">
						<div class="box_title">
							<h4>언론보도</h4>
							<p><a href="${pageContext.request.contextPath}/menu04_02">더보기</a></p>
						</div>
						<ul>
							<li><p>등록된 게시물이 없습니다.</p></li>
						</ul>
					</div><!-- box7 end -->
				</div><!-- boxWrap -->
			</div><!-- sectionContentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/pcFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>