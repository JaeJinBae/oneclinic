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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap{
	width:100%;
	background: #f2f6f8;
	position: relative;
	padding-top: 131px;
}
.headerWrap{
	width:100%;
	height: 132px;
	position: fixed;
	top:0;
	z-index: 99;
}
.header_top{
	width: 100%;
	height: 20px;
	background: #276f90;
}

.sectionWrap{
	width:100%;
}
.popup{
	position: fixed;
	top: 135px;
	left: 10px;
	z-index: 99;
	width: 95%;
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
	margin-left: 84%;
	color: #fefefe;
	cursor: pointer;
	padding: 10px;
	font-size: 15px;
	letter-spacing: 2px;
}
.sectionContentWrap{
	width: 100%;
	margin: 0 auto;
	overflow: hidden;
}
.mainBannerWrap{
	width: 100%;
}
.mainBanner{
	width: 100%;
}
.mainBanner > img{
	width: 100%;
}
.slick-dots{
	bottom: 2px !important;
}
.slick-dotted.slick-slider{
	margin-bottom: 5px !important;
}
.boxWrap{
	width: 100%;
	overflow: hidden;
	padding: 10px 5px;
}
.box{
	float:left;
	border:1px solid lightgray;
	border-radius: 13px;
	width: 49%;
}
.box > a{
	width: 100%;
}
.box > a > img{
	width: 100%;
	border-radius: 10px;
}
.box1{
	width: 100%;
} 
.box1 > img{
	width: 100%;
	border-radius: 5px;
}
.box2{
	margin: 0 1.6px;
}
.box4{
	margin: 0 1.6px;
}
.box5{
	margin: 0 1.6px;
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
	$(".mainBanner").slick({
		arrows: false,
		infinite: true,
		speed: 500,
		fade: true,
		cssEase: 'linear',
		autoplay: true,
		autoplaySpeed: 4000,
		dots: true,
	});
	//팝업 닫기
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
			<jsp:include page="../include/mHeader.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="popup">
				<img src="${pageContext.request.contextPath}/resources/images/popup20190522.png">
				<div class="popup_closeBtn">
					<p>닫기</p>
				</div>
			</div>
			<div class="sectionContentWrap">
				<div class="mainBannerWrap">
					<div class="mainBanner">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainBanner1.png">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainBanner2.png">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainBanner3.png">
					</div>
				</div>
				<div class="boxWrap">
					<div class="box1 box">
						<img src="${pageContext.request.contextPath}/resources/images/mainBox5.png">
					</div>
					<div class="box2 box">
						<a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mobileMainBox2.jpg"></a>
					</div>
					<div class="box3 box">
						<a href="${pageContext.request.contextPath}/mMenu04_03"><img src="${pageContext.request.contextPath}/resources/images/mobileMainBox3.jpg"></a>
					</div>
					<div class="box4 box"> 
						<a href="${pageContext.request.contextPath}/mMenu01_04"><img src="${pageContext.request.contextPath}/resources/images/mobileMainBox4.jpg"></a>
					</div>
					<div class="box5 box">
						<a href="${pageContext.request.contextPath}/mMenu01_03"><img src="${pageContext.request.contextPath}/resources/images/mobileMainBox5.jpg"></a>
					</div>
					<div class="box6 box">
					
					</div>
					<div class="box7 box">
					
					</div>
				</div>
			</div>
		</div>
		<div class="footerWrap">
			<jsp:include page="../include/mFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>