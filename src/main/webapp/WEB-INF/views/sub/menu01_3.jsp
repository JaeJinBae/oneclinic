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
	margin: 0 auto;
}
.section_top{
	width: 100%;
}
.section_top > img{
	width: 100%;
}
.sectionContent{
	width: 1100px;
	margin: 0 auto;
	overflow: hidden;
}
.sectionContent > .leftMenu{
	float: left;
	width: 233px;
	height: 750px;
	background: #5c9bb8;
	padding: 20px 0px;
}
.leftMenu > .line{
	width: 100px;
	height:3px;
	background: #eaeaea;
	margin: 50px 0;
	margin-left: 35px;
}
.leftMenu > h2{
	color: #fff;
	font-weight: bold;
	font-family: sans-serif;
	padding-left: 35px;
}
.leftMenu > ul{
	padding-left: 35px;
}
.leftMenu > ul > li{
	padding: 13px 0;
}
.leftMenu > ul > li > a{
	color: #fff;
	font-size: 18px;
	font-family: sans-serif;
}
.leftMenu > ul > li:nth-child(3) > a{
	font-weight: bold;
}
.leftMenu > .hosInfo{
	width: 100%;
	margin-top: 50px;
}
.leftMenu > .hosInfo > img{
	width: 100%;
}


.contentWrap{
	width: 820px;
	height: 750px;
	float:left;
	padding: 20px 10px;
	border: 1px solid lightgray;
}
.contentTitle{
	width: 90%;
	margin: 0 auto;
	margin-bottom: 50px;
	padding-bottom: 10px;
	border-bottom: 2px solid #91afc3;
	overflow: hidden;
}
.contentTitle > .tText{
	float:left;
	padding-top: 25px;
}
.contentTitle > .tText > .shortLine{
	width: 35px;
	height: 3px;
	background: #6e6e6e;
	margin-bottom: 5px;
}
.contentTitle > .tText > p{
	font-size: 20px;
	font-weight: bold;
	color: #6e6e6e;
	/* font-family: sans-serif; */
}

.contentTitle > .tLogo{
	float:right;
	width: 70px;
} 
.contentTitle > .tLogo > img{
	width: 100%;
}
.content{
	width: 100%;
}
.slideWrap{
	width: 100%;
	margin: 0 auto;
}
.slider_for{
	width: 600px;
	margin: 0 auto;
	margin-bottom: 90px;
}
.slider_for img{
	width: 100%;
	height: 320px;
}
.slider_nav{
	width: 100%;
}
.slider_nav img{
	width: 190px;
	text-align: center;
	margin:10px;
}
.fix_img{
	width: 72%;
	display: block;
	margin: 0 auto;
}
/* slick css */
.slick-prev, .slick-next{
	top: -240px !important;
}
.slick-dots{
	bottom: 190px !important;
}

.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(document).ready(function(){
	var height = $(".contentWrap").height();
	//$(".sectionContent > .leftMenu").css("height", height);
	console.log(height);
	$('.slider_for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.slider_nav'
	});
	$('.slider_nav').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		asNavFor: '.slider_for',
		dots: true,
		focusOnSelect: true
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
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/menu01top.jpg">
			</div> 
			<div class="sectionContent">
				<jsp:include page="../include/quickMenu.jsp"></jsp:include>
				<div class="leftMenu">
					<div class="line"></div>
					<h2 style="margin-bottom: 20px;">03</h2>
					<h2>병원둘러보기</h2>
					<div class="line"></div> 
					<ul>
						<li><a href="${pageContext.request.contextPath}/menu01_01">01. 의료진소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_02">02. 직원소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_03">03. 병원둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_04">04. 오시는 길</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_05">05. 공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_06">06. 언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_07">07. 비용공지</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_08">08. 상담문의</a></li>
					</ul>
					<div class="hosInfo">
						<img src="${pageContext.request.contextPath}/resources/images/leftMenuInfo.png">
					</div>
				</div><!-- leftMenu end -->
				<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>병원둘러보기</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo2.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="slideWrap">
							<div class="slider_for slider">
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_1.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_2.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_3.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_4.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_5.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_6.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_7.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_8.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_9.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_10.jpg"></div>
							</div>
							<div class="slider_nav slider">
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_1.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_2.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_3.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_4.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_5.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_6.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_7.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_8.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_9.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_10.jpg"></div>
							</div>
						</div>
					</div><!-- content end -->
				</div><!-- contentWrap end -->
			</div><!-- sectionContent end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/pcFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>