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
<script src="${pageContext.request.contextPath}/resources/js/jquery.rwdImageMaps.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-148485495-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-148485495-1');
</script>

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
.contentTitle > table tr:nth-child(1) > td:nth-child(1){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 20px;
	letter-spacing: 1px;
}
.contentTitle > table tr:nth-child(1) > td:nth-child(1) > a{
	color: #fff;
	font-weight: bold;
}


.content{
	width: 100%;
	text-align: center;
}
.content > .imgBox{
	width: 90%;
	margin: 0 auto;
}
.content > .imgBox:nth-child(2){
	position: relative;
}
.content > .imgBox > img{
	width: 100%;
}
.content > .imgBox > #img00{
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
}
.content > .imgBox > #img0{
	position: relative;
	z-index: 5;
}
.content > .imgBox > .txtImg{
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 3;
}


.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
}
</style>
<script>
$(document).ready(function(){
	
	$("img[usemap]").rwdImageMaps();
	
	$(".imgBox > map > area").hover(function(){
		var altVal = $(this).attr("alt");
		if(altVal == "area1"){
			$("#img1").fadeIn();
		}else if(altVal == "area2"){
			$("#img2").fadeIn();
		}else if(altVal == "area3"){
			$("#img3").fadeIn();
		}else if(altVal == "area4"){
			$("#img4").fadeIn();
		}
	}, function(){
		$(".txtImg").fadeOut();
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
				<img src="${pageContext.request.contextPath}/resources/images/menu03top.jpg">
			</div> 
			<div class="sectionContent">
				<jsp:include page="../include/quickMenu.jsp"></jsp:include>
				<div class="contentWrap">
					<div class="contentTitle">
						<table>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu03_01">재활도수치료</a></td>
								<td><a href="${pageContext.request.contextPath}/menu03_02">충격파치료</a></td>
								<td><a href="${pageContext.request.contextPath}/menu03_03">측만증</a></td>
							</tr>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu03_04">스포츠재활</a></td>
								<td><a href="${pageContext.request.contextPath}/menu03_05">수술후재활</a></td>
								<td><a href="${pageContext.request.contextPath}/menu03_06">산전/산후재활</a></td>
							</tr>
						</table>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="imgBox">
							<img src="${pageContext.request.contextPath}/resources/images/menu03_1img01.jpg">
						</div>
						<div class="imgBox">
							<img id="img0" name="img0" usemap="#img0" src="${pageContext.request.contextPath}/resources/images/menu03_1img02_0.png">
							<map id="img0" name="img0">
								<area shape="circle" alt="area1" title="" coords="595,302,140" href="#none" target="" />
								<area shape="circle" alt="area2" title="" coords="222,680,139" href="#none" target="" />
								<area shape="circle" alt="area3" title="" coords="963,679,139" href="#none" target="" />
								<area shape="circle" alt="area4" title="" coords="595,1047,139" href="#none" target="" />
								<!-- <area shape="rect" alt="" title="" coords="458,157,733,438" href="" target="" />
								<area shape="rect" alt="" title="" coords="76,541,360,819" href="" target="" />
								<area shape="rect" alt="" title="" coords="824,541,1101,819" href="" target="" />
								<area shape="rect" alt="" title="" coords="457,908,730,1185" href="" target="" /> -->
							</map>
							<img id="img00" src="${pageContext.request.contextPath}/resources/images/menu03_1img02_00.png">
							<img id="img1" class="txtImg" src="${pageContext.request.contextPath}/resources/images/menu03_1img02_1.png">
							<img id="img2" class="txtImg" src="${pageContext.request.contextPath}/resources/images/menu03_1img02_2.png">
							<img id="img3" class="txtImg" src="${pageContext.request.contextPath}/resources/images/menu03_1img02_3.png">
							<img id="img4" class="txtImg" src="${pageContext.request.contextPath}/resources/images/menu03_1img02_4.png">
						</div>
						<div class="imgBox">
							<img src="${pageContext.request.contextPath}/resources/images/menu03_1img03.jpg">
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