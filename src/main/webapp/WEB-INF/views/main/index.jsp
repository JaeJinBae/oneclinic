<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
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
	/* background: url("${pageContext.request.contextPath}/resources/images/mainBg1.jpg") no-repeat;
	background-size: cover; */
	position: relative;
	padding-top: 50px;
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
.mainBanner{
	width: 665px;
	float:left;
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
.box > img{
	width: 100%;
	height: 100%;
	border-radius: 5px;
}
/* .box > h4{
	width: 100%;
	padding: 12px;
	font-size: 19px;
}
.box > p{
	font-size: 14px;
	font-weight: bold;
	padding: 0 10px;
	padding-bottom: 5px;
} */
.box1{
	width: 205px;
	background: url("${pageContext.request.contextPath}/resources/images/box1Bg.jpg") no-repeat;
	background-size: cover;
}
.box1 > h4{
	color: #246d8e;
}
.box2{
	width: 205px;
	background: url("${pageContext.request.contextPath}/resources/images/box2Bg.jpg") no-repeat;
	background-size: cover;
}
.box2 > h4{
	color: #fed700;
}
.box2 > p{
	color: #fff;
}
.box3{
	width: 245px;
	background: url("${pageContext.request.contextPath}/resources/images/box3Bg.jpg") no-repeat;
	background-size: cover;
}
.box3 > h4{
	color: #fed700;
}
.box3 > p{
	color: #fff;
}
.box4{
	width: 165px;
	background: url("${pageContext.request.contextPath}/resources/images/box4Bg.jpg") no-repeat;
	background-size: cover;
}
.box4 > h4{
	color: #246d8e;
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
.box7{
	width: 205px;
	background: #fff;
}




.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(function(){
	/* 메인배너 배경 */
	/* $(".mainBanner").slick({
		arrows:true,
		infinite:true,
		speed:500,
		fade:true,
		cssEase:'linear',
		autoplay:true,
		autoplaySpeed:4000,
		dots:true,
	}); */
	var height = $(window).height();
	var sectionHeight = height-189; 
	$(".sectionWrap").css("height",sectionHeight);
	console.log(height);
	$(window).resize(function(){
		height = $(window).height();
		sectionHeight = height-189; 
		$(".sectionWrap").css("height",sectionHeight);
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
			<div class="sectionBg">
				<img src="${pageContext.request.contextPath}/resources/images/mainBg2.jpg">
			</div>
			<div class="sectionContentWrap">
				<div class="mainBanner">
					<img src="${pageContext.request.contextPath}/resources/images/mainBanner2.png">
				</div>
				<div class="boxWrap">
					<div class="box1 box">
						<!-- <h4>인사말</h4>
						<p>원마취 통증의학과는 <br>항상 환자들의 통증완화에<br>앞장서며 만족도 높은<br> 서비스를 제공합니다. </p> -->
						<img src="${pageContext.request.contextPath}/resources/images/mainBox1.jpg">
					</div>
					<div class="box2 box">
						<!-- <h4>상담문의</h4>
						<p>진료 및 치료관련 궁금증을</p>
						<p>친절하게 상담해드립니다.</p> -->
						<img src="${pageContext.request.contextPath}/resources/images/mainBox2.jpg">
					</div>
					<div class="box3 box">
						<!-- <h4>병원둘러보기</h4>
						<p>원마취통증의학과의 내부 시설 및 장비를 알아볼 수 있습니다.</p> -->
						<img src="${pageContext.request.contextPath}/resources/images/mainBox3.jpg">
					</div>
					<div class="box4 box">
						<!-- <h4>오시는 길</h4>
						<p>원마취통증의학과로 오시는 길을</p>
						<p>상세하게 안내해드립니다.</p> -->
						<img src="${pageContext.request.contextPath}/resources/images/mainBox4.jpg">
					</div>
					<div class="box5 box">
						<img src="${pageContext.request.contextPath}/resources/images/mainBox5.jpg">
					</div>
					<div class="box6 box">
						<div class="box_title">
							<h4>치료후기</h4>
							<p><a href="#none">더보기</a></p>
						</div>
						<ul>
							<li>척추측만증 도수치료 후...</li>
							<li>허리디스크 재활치료 경과...</li>
							<li>척추측만증 도수치료 후...</li>
							<li>목디스크 재활치료 경과...</li>
						</ul>
					</div>
					<div class="box7 box">
						<div class="box_title">
							<h4>언론보도</h4>
							<p><a href="#none">더보기</a></p>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div class="footerWrap">
		
		</div>
	</div>
</body>
</html>