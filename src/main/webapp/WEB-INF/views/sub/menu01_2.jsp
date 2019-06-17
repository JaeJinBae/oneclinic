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
	width: 720px;
	margin: 20px auto;
	margin-bottom: 50px;
	overflow: hidden;
}
.empWrap > .empImg{
	float: left;
	width: 195px;
}
.empWrap > .empImg > img{
	width: 100%;
	border: 1px solid lightgray;
	border-radius: 5px;
	margin-bottom: 15px;
}
.empWrap > .empImg > p{
	width: 100%;
	font-size: 18px;
	text-align: center;
}
.empWrap > .empCareer{
	float: right;
	width: 485px;
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
	font-size: 16px;
	padding: 5px; 
}
.fix_img{
	width: 72%;
	display: block;
	margin: 0 auto;
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
							<img src="${pageContext.request.contextPath}/resources/images/tlogo2.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="empWrap">
							<div class="empImg">
								<img src="${pageContext.request.contextPath}/resources/images/therapist1.jpg">
								<p><b>김종혁</b> 물리치료사</p>
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>주요약력</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대구보건대학 물리치료과 전문학사</li>
									<li>- &nbsp;Pre Med Training School asistant instructor</li>
									<li>- &nbsp;PMT Spine contrology course 수료</li>
									<li>- &nbsp;PMT Rehab specialist course 수료</li>
									<li>- &nbsp;PMT Weight training specialist course 수료</li>
									<li>- &nbsp;Kaltenborn-Evjenth OMT(독일정형도수치료) 정회원</li>
									<li>- &nbsp;International Schroth 3Dscoliosis(측만증) Therapy, Korea-part1 이수</li>
									<li>- &nbsp;MTT-International Medical Training Therapy(의학적 운동처방) 수료</li>
									<li>- &nbsp;Soft tissue&Nerve Mobilization Techniques(KCI) 수료</li>
									<li>- &nbsp;The Redcord Education program-Neurac 1 이수</li>
									<li>- &nbsp;운동처방사 1급, 스포츠 테이핑 1급</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								<img src="${pageContext.request.contextPath}/resources/images/therapist5.jpg">
								<p><b>이민기</b> 물리치료사</p>
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>주요약력</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대구과학대학교 물리치료과 전문학사</li>
									<li>- &nbsp;영남이공대학교 물리치료과 학사</li>
									<li>- &nbsp;DGMM-FAC certified Manual Therapist(독일인증 도수치료사)</li>
									<li>- &nbsp;대한기능도수치료학회(FMT) - 240시간 이수</li>
									<li>- &nbsp;Pre Med Training school(Spine Contrology) - 카이로프래틱 수료</li>
									<li>- &nbsp;International Schroth 3D scoliosis(측만증) Therapy, Korea-part1 이수</li>
									<li>- &nbsp;KEMA-Advanced course 수료</li>
									<li>- &nbsp;필라테스지도자 자격증 - 사단법인 한국스포츠인재개발</li>
									<li>- &nbsp;국민체육진흥공단 생활스포츠지도자 2급(보디빌딩)</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								<img src="${pageContext.request.contextPath}/resources/images/therapist2.jpg">
								<p><b>박수용</b> 물리치료사</p>
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>주요약력</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대구대학교 물리치료학과 학사</li>
									<li>- &nbsp;Pre Med Training school Rehab specialist Upper, Lower part 수료</li>
									<li>- &nbsp;Korea Nerve Entrapment Syndrome Society 수료</li>
									<li>- &nbsp;KAOMPT 정회원</li>
									<li>- &nbsp;Kaltenborm-Evjenth OMT(독일정형도수치료) 정회원</li>
									<li>- &nbsp;국민체육진흥공단 생활스포츠지도자 2급(보디빌딩)</li>
									<li>- &nbsp;더 필라테스 재활 교육협회-The Pilates Instructor Course 수료</li>
									<li>- &nbsp;중소기업청 맞춤형 건강 전문가과정 수료</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								<img src="${pageContext.request.contextPath}/resources/images/therapist4.jpg">
								<p><b>손민지</b> 물리치료사</p>
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>주요약력</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대구보건대학교 물리치료과 전문학사</li>
									<li>- &nbsp;대구보건대학교 물리치료과 학사</li>
									<li>- &nbsp;Pre Med Training school(Spine Contrology)-카이로프래틱 수료</li>
									<li>- &nbsp;PMT Rehab specialist Lower part 이수</li>
									<li>- &nbsp;PMT pilates specialist Upper, Lower 수료</li>
									<li>- &nbsp;International Schroth 3D scoliosis(측만증) Therapy, Korea-part1 이수</li>
									<li>- &nbsp;The Redcord Education program-Neurac 1 이수</li>
									<li>- &nbsp;STM(Soft Tissue Mobilization Technic) level 1 이수</li>
									<li>- &nbsp;더 필라테스 재활 교육협회-The Pilates Instructor Course 수료</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								<img src="${pageContext.request.contextPath}/resources/images/therapist3.jpg">
								<p><b>서대원</b> 물리치료사</p>
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>주요약력</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;호산대학교 물리치료과 전문학사</li>
									<li>- &nbsp;호산대학교 물리치료과 학사</li>
									<li>- &nbsp;The Redcord Education program-Neurac 1 이수</li>
									<li>- &nbsp;임상 발란스 테이핑 물리치료학회 - Part 1, 3 이수</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
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