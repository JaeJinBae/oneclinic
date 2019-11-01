<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원통증의학과</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-148485495-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-148485495-1');
</script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap{
	width:100%;
	position: relative;
	padding-top: 114px;
}
.headerWrap{
	width:100%;
	position: fixed;
	top:0;
	z-index: 99;
}


.sectionWrap{
	width:100%;
}
.section_top{
	width: 100%;
}
.section_top > img{
	width: 100%;
}

.contentWrap{
	width: 100%;
	padding: 10px 5px;
	margin-bottom: 50px;
}
.contentTitle{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 50px;
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
	padding: 10px 0;
	border: 1px solid #4f4f4f;
} 
.contentTitle > table tr:nth-child(1) > td:nth-child(3){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 14px;
}
.contentTitle > table tr:nth-child(1) > td:nth-child(3) > a{
	color: #fff;
	font-weight: bold;
}
.content{
	width: 100%;
	/* height: 260px; */
}
.slideWrap{
	width: 100%;
	margin: 0 auto;
}
.slider_for{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 30px;
	text-align: center;
}
.slider_for img{
	width: 100%;
	border-radius: 7px;
	border: 1px solid #efefef;
}
.slick-prev, .slick-next{
	top: -170% !important;
}
.slick-prev{
	left: 5px !important;
}
.slick-next{
	right: 5px !important;
}
.slick-dots{
	bottom: -100px !important;
}
.slick-dots li{
	margin: 0 3px !important;
}
.slick-dots li button:before{
	font-size: 14px !important;
}
.slick-prev:before, .slick-next:before{
	-webkit-appearance:none;
}
.slider_nav{
	width: 100%;
	margin: 0 auto;
	text-align: center;
}
.slider_nav img{
	width: 98%;
	border: 1px solid gray;
}

.footerWrap{
	width: 100%;
	height: 90px; 
	background: #393939;
} 
</style>
<script>
$(function(){
	/* $('.slider_for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		dots: false
	}); */
	
	$('.slider_for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.slider_nav'
	});
	$('.slider_nav').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		asNavFor: '.slider_for',
		dots: false,
		focusOnSelect: true
	});
})
</script>
</head>
<body>
	<div class="allWrap">
		<div class="headerWrap">
			<div class="header_top"></div>
			<jsp:include page="../include/mHeader2.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01top.jpg">
			</div> 
			<div class="contentWrap">
					<div class="contentTitle">
						<table>
							<tr>
								<td><a href="${pageContext.request.contextPath}/mMenu01_01">의료진소개</a></td>
								<td><a href="${pageContext.request.contextPath}/mMenu01_02">치료사소개</a></td>
								<td><a href="${pageContext.request.contextPath}/mMenu01_03">병원둘러보기</a></td>
								<td><a href="${pageContext.request.contextPath}/mMenu01_04">오시는길</a></td>
							</tr>
							<tr>
								<td><a href="${pageContext.request.contextPath}/mMenu01_05">공지사항</a></td>
								<td><a href="${pageContext.request.contextPath}/mMenu01_06">언론보도</a></td>
								<td><a href="${pageContext.request.contextPath}/mMenu01_07">비급여항목</a></td>
								<td><a href="${pageContext.request.contextPath}/mMenu01_08">상담문의</a></td>
							</tr>
						</table>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="slideWrap">
							<div class="slider_for slider">
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_1.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_2.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_12.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_3.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_4.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_5.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_6.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_7.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_8.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_11.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_13.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_10.jpg"></div>
							</div>
							<div class="slider_nav slider">
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_1.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_2.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_12.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_3.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_4.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_5.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_6.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_7.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_8.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_11.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_13.jpg"></div>
								<div><img src="${pageContext.request.contextPath}/resources/images/menu01_03_10.jpg"></div>
							</div>
						</div>
					</div><!-- content end -->
				</div><!-- contentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/mFooter.jsp"></jsp:include>
		</div>
	</div><!-- allWrap end -->
</body>
</html>