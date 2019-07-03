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
	position: relative;
}
.quickMenu{
	position: fixed;
	/* top: 122px; */
	bottom: 10px;
	right: 0px;
	width: 200px;
	overflow: hidden;
}
.quickMenu > h4{
	float: left;
	font-size: 30px;
	width: 50px;
	background: gray;
	color: #fff;
	line-height: 76px;
	text-align: center;
	cursor: pointer;
}
.quickMenu > p{
	float:right;
	width: 150px;
	background: #5c9bb8;
	color: #fff;
	font-size: 20px;
	text-align: center;
	padding: 15px 0;
}
.quickMenu > ul{
	width: 150px;
	float: right;
	background: #fff;
	border-left: 1px solid #efefef;
}
.quickMenu > ul > li{
	width: 100%;
	border-bottom: 1px solid lightgray;
	padding: 10px 0px;
}
.quickMenu > ul > li > a{
	font-size: 17px;
}
.quickMenu > ul > li > a > img{
	width: 50px;
	margin-right: 8px;
	margin-left: 12px;
	vertical-align: middle;
}
.quickMenu > ul > li:first-child > p{
	width: 100%;
	text-align: center;
	font-size: 17px;
	padding: 7px 0;
}
.quickMenu > ul > li:first-child > h5{
	width: 100%;
	text-align: center;
	font-size: 20px;
}
.quickMenu > ul > li:last-child{
	text-align: center;
	font-weight: bold;
	cursor: pointer;
	font-size: 20px;
	color: #5c9bb8;
}

.sectionContent > .leftMenu{
	float: left;
	width: 233px;
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
.leftMenu > ul > li:first-child > a{
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
	float:left;
	padding: 20px 10px;
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
	overflow:hidden;
}
.contentAside1{
	float:left;
	padding-left: 15px;
}
.contentAside1 > img{
	width: 350px;
	border-radius: 10px;
}
.contentAside1 > p{
	font-size: 22px;
	text-align: center;
	margin-top: 30px;
	letter-spacing: -1px;
}
.contentAside1 > p > b{
	font-size: 28px;
	letter-spacing: -3px;
}
.contentAside2{
	float:right;
}
.contentAside2 > .aside2Title{
	width: 100%;
	overflow: hidden;
}
.contentAside2 > .aside2Title > h3{
	float: left;
	font-size: 23px;
	font-family: sans-serif;
}
.contentAside2 > .aside2Title > .bline{
	float:left;
	width: 200px; 
	height: 2px;
	background: #333333;
	margin: 15px 0 15px 10px;
}
.contentAside2 > ul{
	margin: 20px 0;
}
.contentAside2 > ul > li{
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
				<img src="${pageContext.request.contextPath}/resources/images/menu01top.jpg">
			</div> 
			<div class="sectionContent">
				<div class="quickMenu">
					<h4>◀</h4>
					<p>Quick<br>Menu</p>
					<ul>
						<li>
							<p><img src="${pageContext.request.contextPath}/resources/images/icon_call.png"></p>
							<p>전화문의</p>
							<h5>053.269.7575</h5>
						</li>
						<li><a href="${pageContext.request.contextPath}/menu01_08"><img src="${pageContext.request.contextPath}/resources/images/icon_chat.png">상담문의</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_04"><img src="${pageContext.request.contextPath}/resources/images/icon_location.png">오시는길</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_07"><img src="${pageContext.request.contextPath}/resources/images/icon_hand.png">비급여</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_05"><img src="${pageContext.request.contextPath}/resources/images/icon_speaker.png">공지사항</a></li>
						<li>▲<br>TOP</li>
					</ul>
				</div>
				<div class="leftMenu">
					<div class="line"></div>
					<h2 style="margin-bottom: 20px;">01</h2>
					<h2>의료진소개</h2>
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
							<p>의료진소개</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo2.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="contentAside1">
							<img src="${pageContext.request.contextPath}/resources/images/menu01_01doctorimg.jpg">
							<p>마취통증의학과 전문의 <b>한윤진</b> 원장</p>
						</div>
						<div class="contentAside2">
							<div class="aside2Title">
								<h3>학회활동</h3>
								<div class="bline"></div>
							</div>
							<ul>
								<li>- &nbsp;대한마취통증학회 정회원</li>
								<li>- &nbsp;대한통증학회 정회원</li>
								<li>- &nbsp;대한척추통증학회 정회원</li>
								<li>- &nbsp;대한성장의학회 정회원</li>
								<li>- &nbsp;대한비만체형학회 정회원</li>
								<li>- &nbsp;대한임상노인의학회 정회원</li>
								<li>- &nbsp;대한약물영양의학회 정회원</li>
								<li>- &nbsp;재활운동학회 프리메드스쿨 자문위원</li>
							</ul>
							<ul>
								<li>- &nbsp;Preventive medical training school 수료</li>
								<li>- &nbsp;M-puncture 척추-관절 만성통증 치료 전문가 과정 수료</li>
								<li>- &nbsp;Neural prolotherapy 수료</li>
								<li>- &nbsp;TPI 교육 이수</li>
								<li>- &nbsp;중재적 신경블록 교육 이수</li>
							</ul>
							<ul>
								<li>- &nbsp;계명대학교 의과대학교</li>
								<!-- <li>- &nbsp;서울 가톨릭대학교 중앙의료원 인턴 수료 </li>
								<li>- &nbsp;서울 가톨릭대학교 중앙의료원 마취통증의학과 레지던트 수료</li> -->
								<li>- &nbsp;서울 가톨릭대학교 중앙의료원 마취통증의학과 전문의 수료</li>
								<li>- &nbsp;서울 여의도 성모병원 마취통증의학과 임상교수</li>
								<li>- &nbsp;통증의학 고위자 과정 이수</li>
							</ul>
							<ul>
								<li>- &nbsp;서울 올림픽병원 마취통증의학과 과장</li>
								<li>- &nbsp;대전 유성선병원 마취통증의학과 과장</li>
								<li>- &nbsp;봄길의원 원장</li>
								<li>- &nbsp;가톨릭대학교 성빈센트 병원 진료교수</li>
							</ul>
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