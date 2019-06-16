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
.section_top{
	width: 100%;
}
.section_top > img{
	width: 100%;
}

.contentWrap{
	width: 100%;
	padding: 10px 5px;
}
.contentTitle{
	width: 99%;
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
	width: 30px;
	height: 3px;
	background: #6e6e6e;
	margin-bottom: 5px;
}
.contentTitle > .tText > p{
	font-size: 18px;
	font-weight: bold;
	color: #6e6e6e;
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
	/* height: 260px; */
}
.slideWrap{
	width: 100%;
	margin: 0 auto;
}
.slider_for{
	width: 95%;
	margin: 0 auto;
	margin-bottom: 90px;
	text-align: center;
}
.slider_for img{
	width: 100%;
	border-radius: 7px;
	border: 1px solid #efefef;
}
.slick-prev, .slick-next{
	top: 275px !important;
}
.slick-prev{
	left: 85px !important;
}
.slick-next{
	right: 85px !important;
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
.fix_img{
	width: 100%;
	margin-bottom: 30px;
}


.footerWrap{
	width: 100%;
	height: 80px;
	background: #393939;
} 
</style>
<script>
$(function(){
	$('.slider_for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		dots: false
	});
})
</script>
</head>
<body>
	<div class="allWrap">
		<div class="headerWrap">
			<div class="header_top"></div>
			<jsp:include page="../include/mHeader.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01top.png">
			</div> 
			<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>병원둘러보기</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo.png">
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