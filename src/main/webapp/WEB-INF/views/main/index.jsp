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
	height:135px;
}
.sectionWrap{
	width:100%;
	height: 100%;
	min-height: 600px;
	/* background: url("${pageContext.request.contextPath}/resources/images/mainBg1.jpg") no-repeat;
	background-size: cover; */
	position: relative;
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
	height:500px;
	margin: 0 auto;
	background: red;
}


.footerWrap{
	width: 100%;
	height: 90px;
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
	var sectionHeight = height-225; 
	$(".sectionWrap").css("height",sectionHeight);
	console.log(height);
	$(window).resize(function(){
		height = $(window).height();
		sectionHeight = height-225; 
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
				
				</div>
				<div class="boxWrap">
				
				</div>
			</div>
		</div>
		<div class="footerWrap">
		
		</div>
	</div>
</body>
</html>