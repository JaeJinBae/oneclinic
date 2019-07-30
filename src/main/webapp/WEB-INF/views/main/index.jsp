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
}
.popup{
	display: none;
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

.sectionContentWrap{
	width: 100%;
}
.mainBannerWrap{
	width: 100%;
	position: relative;
}
.mainBanner{
	width: 100%;
	margin: 0 auto;
	text-align: center;
	overflow: hidden;
}
.mainBanner img{
	width: 100%;
	height: auto;
}
.mainBanner img:after{
	width: 100%;
	height: auto;
	transform: scale(1.1); 
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
	transition: all 1s ease-in-out;
}
.mainBanner video{
	width: 100%;
}
.slick-dots{
	bottom: 20px !important;
}
.slick-dots li.slick-active button:before{
	color: skyblue !important;
}
.slick-dots li button:before{
	color: lightgray;
}
.sectionContentWrap{
	width: 100%;
	background: url("${pageContext.request.contextPath}/resources/images/mainSectionBg.png") no-repeat;
	background-size: cover;
}
.hosTitle{
	width: 100%;
	margin: 50px auto;
	text-align: center;
	font-weight: bold;
	font-family: NanumSB;
	font-size: 35px;
	color: #4a4a4a;
	letter-spacing: 2px;
}
.content{
	width: 1200px;
	margin: 0 auto;
}
.boxWrap1{
	width: 100%;
	padding: 7px;
	overflow: hidden;
}
.boxWrap1 > .box1{
	width: 380px;
	margin-bottom: 15px;
	float:left;
	box-shadow: 4px 3px 10px 0px gray;
}
.boxWrap1 > .box1 >{
	padding: 10px 15px;
}
.boxWrap1 > .box1 > h4{
	width: 100%;
	text-align: center;
	font-size: 26px;
	color: #fff;
	padding: 15px 0;
	text-shadow: 2px 2px 2px gray;
}
.boxWrap1 > .box1:nth-child(1) > h4{
	background: url("${pageContext.request.contextPath}/resources/images/mainLoc.jpg") no-repeat;
	background-size: cover;
}
.boxWrap1 > .box1:nth-child(1) > h4 > img{
	width: 100px;
	margin-top: 10px;
}
.locText{
	width: 100%;
	text-align: center;
	padding: 15px 0;
}
.boxWrap1 > .box1:nth-child(1) > .locText > p{
	width: 100%;
	font-size: 20px;
	font-weight: bold;
	font-family: NanumSR;
}
.boxWrap1 > .box1:nth-child(1) > .locText > span{
	width: 100%; 
	font-size: 19px;
	font-weight: bold;
	font-family: NanumSR;
}
.boxWrap1 > .box1:nth-child(2){
	margin: 0 18px;
	position: relative; 
}
.boxWrap1 > .box1:nth-child(2) > h4{
	background: url("${pageContext.request.contextPath}/resources/images/mainVideo.jpg") no-repeat;
	background-size: cover;
}
.box1_videoWrap{
	width: 100%;
	overflow: hidden;
}
.box1_videoWrap > video{
	width: 102%;	
}
.boxWrap1 > .box1:nth-child(3) > h4{
	background: url("${pageContext.request.contextPath}/resources/images/mainDul.jpg") no-repeat;
	background-size: cover;
}
.dulBannerWrap{
	width: 100%;
	height: 218px;
	overflow: hidden;
}
.boxWrap1 > .box1 > img{
	width: 100%;
}

.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(function(){
	
	$(".mainBanner").slick({
		arrows:false,
		infinite:true,
		speed:1000,
		fade:true,
		cssEase:'linear',
		autoplay:false,
		autoplaySpeed:7000,
		dots:true,
	});
	
	$(".popup > .popup_closeBtn > p").click(function(){
		$(".popup").css("display","none");
	});
	
	$(".dulBannerWrap").slick({
		arrows:false,
		infinite:true,
		speed:1000,
		fade:true,
		cssEase:'linear',
		autoplay:true,
		autoplaySpeed:1000,
		dots:false,
	})
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
			<div class="mainBannerWrap">
				<div class="mainBanner">
					<img src="${pageContext.request.contextPath}/resources/images/mainBanner1.jpg">
					<img src="${pageContext.request.contextPath}/resources/images/mainBanner2.jpg">
					<img src="${pageContext.request.contextPath}/resources/images/mainBanner3.jpg">
				</div>
			</div><!-- mainBannerWrap end -->
			<div class="sectionContentWrap">
				<h2 class="hosTitle">About Onepain Clinic</h2>
				<div class="content">
					<div class="boxWrap1">
						<div class="box1">
							<h4>오시는 길<br><img src="${pageContext.request.contextPath}/resources/images/icon_mainLoc.png"></h4>
							<div class="locText">
								<p>대구광역시 북구 침산로 124, 4층</p>
								<p>(침산동, P&A빌딩)</p>
								<br>
								<span>- 건물주차가능 -</span>
							</div>
						</div>
						<div class="box1">
							<h4>원내영상</h4>
							<div class="box1_videoWrap">
								<video loop autoplay src="${pageContext.request.contextPath}/resources/video/v1.mp4"></video>
							</div>
						</div>
						<div class="box1">
							<h4>병원둘러보기</h4>
							<div class="dulBannerWrap">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_1.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_2.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_3.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_4.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_5.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_6.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_7.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_8.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_9.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_10.jpg">
							</div>
						</div>
					</div>
					<div class="boxWrap2">
						
					</div>
				</div>
			</div><!-- sectionContentWrap end -->
		</div><!-- sectionWrap end -->
		<%-- <div class="footerWrap">
			<jsp:include page="../include/pcFooter.jsp"></jsp:include>
		</div> --%>
	</div>
</body>
</html>