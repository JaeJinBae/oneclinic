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
.contentAside1{
	width: 100%;
	text-align: center;
}
.contentAside1 > img{
	width: 60%;
}
.contentAside1 > p{
	width: 100%;
	text-align: center;
	font-size: 15px;
}
.contentAside1 > p > b{
	font-size: 20px;
}
.contentAside2{
	width: 100%;
	margin-top: 20px;
}
.contentAside2 > .aside2Title{
	width: 100%;
	overflow: hidden;
}
.contentAside2 > .aside2Title > h3{
	float: left;
	font-size: 20px;
	font-family: sans-serif;
}
.contentAside2 > .aside2Title > .bline{
	float:left;
	width: 90px; 
	height: 2px;
	background: #333333;
	margin: 15px 22px;
} 
.contentAside2 > ul{
	margin: 15px 0;
	margin-left: 36px;
}
.contentAside2 > ul > li{
	font-size: 14px;
	padding: 3px 5px;
	overflow: hidden; 
}
.contentAside2 > ul > li > p{
	float:left;
	font-size: 13px;
}
.contentAside2 > ul > li > p:nth-child(2){
	/* width: 210px; */
	margin-left: 2px;
}


.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>

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
							<p>의료진소개</p>
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="contentAside1">
							<%-- <img src="${pageContext.request.contextPath}/resources/images/menu01_01img.png"> --%>
							<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01_01doctorimg.png">
							<p>마취통증의학과 전문의 <b>한윤진</b> 원장</p>
						</div>
						<div class="contentAside2">
							<div class="aside2Title">
								<div class="bline"></div>
								<h3>학회활동</h3>
								<div class="bline"></div>
							</div>
							<ul>
								<li><p>-</p><p>대한마취통증학회 정회원</p></li>
								<li><p>-</p><p>대한통증학회 정회원</p></li>
								<li><p>-</p><p>대한척추통증학회 정회원</p></li>
								<li><p>-</p><p>대한성장의학회 정회원</p></li>
								<li><p>-</p><p>대한비만체형학회 정회원</p></li>
								<li><p>-</p><p>대한임상노인의학회 정회원</p></li>
								<li><p>-</p><p>대한약물영양의학회 정회원</p></li>
								<li><p>-</p><p>재활운동학회 프리메드스쿨 자문위원</p></li>
							</ul>
							<ul>
								<li><p>-</p><p>Preventive medical training school 수료</p></li>
								<li><p>-</p><p>M-puncture 척추-관절 만성통증 치료 전문가 과정 수료</p></li>
								<li><p>-</p><p>Neural prolotherapy 수료</p></li>
								<li><p>-</p><p>TPI 교육 이수</p></li>
								<li><p>-</p><p>중재적 신경블록 교육 이수</p></li>
							</ul>
							<ul>
								<li><p>-</p><p>계명대학교 의과대학교</p></li>
								<!-- <li><p>-</p><p>가톨릭대학교 중앙의료원 인턴 수료</p> </li>
								<li><p>-</p><p>가톨릭대학교 중앙의료원 마취통증의학과 레지던트 수료</p></li> -->
								<li><p>-</p><p>서울 가톨릭대학교 중앙의료원 마취통증의학과 전문의 수료</p></li>
								<li><p>-</p><p>서울 여의도 성모병원 마취통증의학과 임상교수</p></li>
								<li><p>-</p><p>통증의학 고위자 과정 이수</p></li>
							</ul>
							<ul>
								<li><p>-</p><p>서울 올림픽병원 마취통증의학과 과장</p></li>
								<li><p>-</p><p>대전 유성선병원 마취통증의학과 과장</p></li>
								<li><p>-</p><p>S중앙병원 마취통증의학과 과장</p></li>
								<li><p>-</p><p>봄길의원 원장</p></li>
								<li><p>-</p><p>가톨릭대학교 성빈센트 병원 진료교수</p></li>
							</ul>
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