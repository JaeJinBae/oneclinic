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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
	background: #477a9b;
	padding: 20px 35px;
}
.leftMenu > .line{
	width: 100px;
	height:3px;
	background: #eaeaea;
	margin: 50px 0;
}
.leftMenu > h2{
	color: #fff;
	font-weight: bold;
	font-family: sans-serif;
}
.leftMenu > ul{

}
.leftMenu > ul > li{
	padding: 13px 0;
}
.leftMenu > ul > li > a{
	color: #fff;
	font-size: 18px;
	font-family: sans-serif;
}
.leftMenu > ul > li:nth-child(2) > a{
	font-weight: bold;
}


.contentWrap{
	width: 820px;
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
.empWrap{
	width: 600px;
	margin: 20px auto;
	overflow: hidden;
}
.empWrap > .empImg{
	float: left;
	width: 195px;
	height: 250px;
	border: 1px solid gray;
}
.empWrap > .empCareer{
	float: right;
}
.empCareer > .ecTitle{
	width: 100%;
	overflow: hidden;
}
.empCareer > .ecTitle > h3{
	float: left;
	font-size: 23px;
	font-family: sans-serif;
}
.empCareer > .ecTitle > .bline{
	float:left;
	width: 200px; 
	height: 2px;
	background: #333333;
	margin: 15px 0 15px 10px;
}
.empCareer > ul{
	margin: 20px 0;
}
.empCareer > ul > li{
	font-size: 17px;
	padding: 5px; 
}



.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(document).ready(function(){
	var height = $(".sectionContent").outerHeight();
	$(".sectionContent > .leftMenu").css("height", height);
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
				<img src="${pageContext.request.contextPath}/resources/images/menu01_1top.png">
			</div> 
			<div class="sectionContent">
				<div class="leftMenu">
					<div class="line"></div>
					<h2 style="margin-bottom: 20px;">02</h2>
					<h2>직원소개</h2>
					<div class="line"></div> 
					<ul>
						<li><a href="${pageContext.request.contextPath}/menu01_01">01. 의료진소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_02">02. 직원소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_03">03. 병원둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_04">04. 오시는 길</a></li>
					</ul>
				</div><!-- leftMenu end -->
				<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>직원소개</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="empWrap">
							<div class="empImg">
								
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>경력활동</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대한마취통증학회 정회원</li>
									<li>- &nbsp;대한통증학회 정회원</li>
									<li>- &nbsp;대한척추통증학회 정회원</li>
									<li>- &nbsp;대한임상노인의학회 정회원</li>
									<li>- &nbsp;대한약물영양의학회 정회원</li>
									<li>- &nbsp;대한성장의학회 정회원</li>
									<li>- &nbsp;대한비만체형학회 정회원</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>경력활동</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대한마취통증학회 정회원</li>
									<li>- &nbsp;대한통증학회 정회원</li>
									<li>- &nbsp;대한척추통증학회 정회원</li>
									<li>- &nbsp;대한임상노인의학회 정회원</li>
									<li>- &nbsp;대한약물영양의학회 정회원</li>
									<li>- &nbsp;대한성장의학회 정회원</li>
									<li>- &nbsp;대한비만체형학회 정회원</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>경력활동</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대한마취통증학회 정회원</li>
									<li>- &nbsp;대한통증학회 정회원</li>
									<li>- &nbsp;대한척추통증학회 정회원</li>
									<li>- &nbsp;대한임상노인의학회 정회원</li>
									<li>- &nbsp;대한약물영양의학회 정회원</li>
									<li>- &nbsp;대한성장의학회 정회원</li>
									<li>- &nbsp;대한비만체형학회 정회원</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
					</div><!-- content end -->
				</div><!-- contentWrap end -->
			</div><!-- sectionContent end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
		
		</div>
	</div>
</body>
</html>