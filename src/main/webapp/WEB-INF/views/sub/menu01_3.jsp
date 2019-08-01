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
	background: #5ac2cb;
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
}


.contentWrap{
	width: 100%;
	padding: 20px 10px;
}
.contentTitle{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 50px;
	padding-bottom: 10px;
}
.contentTitle > table{
	width: 100%;
}
.contentTitle > table tr{
	width: 100%;
}
.contentTitle > table tr > td{
	width: 25%;
	text-align: center;
	padding: 20px 0;
	border: 1px solid #4f4f4f;
} 
.contentTitle > table tr:nth-child(1) > td:nth-child(3){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 20px;
	letter-spacing: 1px;
}
.contentTitle > table tr:nth-child(1) > td:nth-child(3) > a{
	color: #fff;
	font-weight: bold;
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
				<div class="contentWrap">
					<div class="contentTitle">
						<table>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu01_01">의료진소개</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_02">직원소개</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_03">병원둘러보기</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_04">오시는길</a></td>
							</tr>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu01_05">공지사항</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_06">언론보도</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_07">비급여</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_08">상담문의</a></td>
							</tr>
						</table>
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