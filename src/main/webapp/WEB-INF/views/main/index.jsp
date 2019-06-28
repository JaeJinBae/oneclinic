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
<meta name="naver-site-verification" content="d53046e7ecfe442e3b973c1baeb37ec7fc75031d"/>
<meta name="description" content="대구 북구 침산동, 비수술클리닉, 성장클리닉, 교정클리닉, 도수치료">
<meta property="og:type" content="website">
<meta property="og:title" content="원마취통증의학과">
<meta property="og:description" content="대구 북구 침산동, 비수술클리닉, 성장클리닉, 교정클리닉, 도수치료">
<meta property="og:image" content="http://www.1clinic.co.kr/logo.png">
<meta property="og:url" content="http://www.1clinic.co.kr">
<link rel="canonical" href="http://www.1clinic.co.kr/">
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
	height:120px;
}
.sectionWrap{
	width:100%;
	height: 100%;
	min-height: 650px;
	position: relative;
	padding-top: 50px;
}
.popup{
	display: none;
	position: fixed;
	top: 140px;
	right: 500px;
	z-index: 99;
	width: 550px;
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
	margin-left: 87%;
	color: #fefefe;
	cursor: pointer;
	padding: 10px;
	font-size: 15px;
	letter-spacing: 2px;
}
.popup > .popup_closeBtn > p:hover{
	font-weight: bold;
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
	height:600px;
	position: absolute;
	top:50%;
	left:50%;
	margin-top: -300px;
	margin-left: -550px;
}
.mainBannerWrap{
	width: 665px;
	float:left;
}
.mainBanner{
	width: 100%;
}
.mainBanner img{
	width: 100%;
}
.slick-dots{
	bottom: 0 !important;
}
.slick-dots li.slick-active button:before{
	color: skyblue !important;
}
.slick-dots li button:before{
	color: lightgray;
}
.boxWrap{
	width:420px;
	float: right;
} 
.box{
	height: 143px;
	float: left;
	margin-left:5px;
	margin-top: 5px;
	border: 1px solid lightgray;
	border-radius: 5px;
}

.box > a{
	width: 100%;
}
.box > a > img{
	width: 100%;
	height: 100%;
	border-radius: 5px;
}
.box > img{
	width: 100%;
	height: 100%;
	border-radius: 5px;
}
.box2, .box3, .box4{
	cursor: pointer;
}
.box1{
	width: 205px;
	background: url("${pageContext.request.contextPath}/resources/images/mainBox1bg.jpg") no-repeat;
	background-size: cover;
	padding: 15px 10px;
}
.box1 > h4{
	font-size: 20px;
	margin-bottom: 10px;
	color: #0f657e;
}
.box1 > p{
	font-size: 15px;
	margin-top: 2px;
}

.box2{
	width: 205px;
	background: url("${pageContext.request.contextPath}/resources/images/mainBox2bg.jpg") no-repeat;
	background-size: cover;
	padding: 15px 10px;
}
.box2 > h4{
	font-size: 20px;
	color: #ffdd00;
	margin-bottom: 10px;
}
.box2 > p{
	font-size: 15px;
	margin-top: 2px;
	color: #fff;
}

.box3{
	width: 245px;
	background: url("${pageContext.request.contextPath}/resources/images/mainBox3bg.jpg") no-repeat;
	background-size: cover;
	padding-top: 35px;
}
.box3 > h4{
	width: 100%;
	font-size: 20px;
	text-align: center;
	color: #ffdd00;
	margin-bottom: 10px;
}
.box3 > p{
	width: 100%;
	text-align: center;
	font-size: 15px;
	color: #fff;
	margin-top: 2px;
}

.box4{
	width: 165px;
	background: url("${pageContext.request.contextPath}/resources/images/mainBox4bg.jpg") no-repeat;
	background-size: cover;
	padding-top: 25px;
}
.box4 > h4{
	width: 100%;
	font-size: 20px;
	color: #0f657e;
	text-align: center;
	margin-bottom: 10px;
}
.box4 > p{
	width: 100%;
	text-align: center;
	font-size: 15px;
	margin-top: 2px;
}

.box5{
	width: 416px;
}
.box5 > img{
	width: 100%;
}
.box6{
	width: 205px;
	background: #fff;
}
.box6 > .box_title{
	border-bottom: 2px solid #8754c7;
}
.box6 > .box_title > h4{
	color: #8754c7;
}

.box7{
	width: 205px;
	background: #fff;
}
.box7 > .box_title{
	border-bottom: 2px solid #ed933a;
}
.box7 > .box_title > h4{
	color: #ed933a;
}
.box_title{
	width: 100%;
	padding: 5px 10px;
	padding-top: 10px;
	overflow: hidden;
}
.box_title > h4{
	font-size: 18px;
	float:left;
}
.box_title > p{
	float: right;
	font-size: 15px;
	padding-top: 3px;
}
.box8{
	float: left;
	margin-left: 5px;
	margin-top: 5px;
	width: 416px;
	height: 298px;
	background: #fff;
	border: 1px solid lightgray;
	border-radius: 5px; 
}
.box8 > .box_title{
	width: 100%;
	border-bottom: 1px solid lightgray;
}
.box8 > .box_title > h4{
	font-size: 20px;
}
.box8 > table{
	width: 100%;
}
.box8 > table tr{
	
}
.box8 > table tr > th{
	width: 90px;
	font-size: 15px;
	color: #fff;
	background: #276f90;
	padding: 5px 0;
	border-bottom: 1px solid #efefef;
}
.box8 > table tr > td{
	padding: 0 2px;
	border-bottom: 1px solid lightgray;
}
.box8 > table tr > td > label{
	font-size: 15px;
	margin-left: 3px;
}
.box8 > table tr:nth-child(4) > td > label{
	margin-right: 10px;
}
.box8 > table tr > td > label > input{
	vertical-align: middle;
	margin-right: 1px;
}
.box8 > table tr > td > input{
	width: 100%;
	font-size: 15px;
	padding: 1px 2px;
	border: 1px solid #ccc;
}
.box8 > table tr > td > textarea{
	width: 100%;
	height: 90px;
	resize: none;
	border: 1px solid #efefef;
}
.box8 > .agreementChkWrap{
	width: 100%;
	text-align: center;
	padding: 3px 0;
	font-size: 15px;
}
.box8 > .agreementChkWrap > label{
	width: 100%;
	text-align: center;
	font-size: 15px;
}
.box8 > .agreementChkWrap > span{
	cursor: pointer;
}
.box8 > .adviceBtnWrap{
	width: 100%;
	text-align: center;
}
.box8 > .adviceBtnWrap > p{
	width: 50px;
	margin: 0 auto;
	color: #fff;
	font-size: 15px;
	background: #276f90;
	padding: 5px;
	border-radius: 5px;
}

.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(function(){
	
	var height = $(window).height();
	var sectionHeight = height-189; 
	$(".sectionWrap").css("height",sectionHeight);
	console.log(height);
	$(window).resize(function(){
		height = $(window).height();
		sectionHeight = height-189; 
		$(".sectionWrap").css("height",sectionHeight);
	});
	
	$(".mainBanner").slick({
		arrows:false,
		infinite:true,
		speed:1000,
		fade:true,
		cssEase:'linear',
		autoplay:true,
		autoplaySpeed:7000,
		dots:true,
	});
	
	$(".popup > .popup_closeBtn > p").click(function(){
		$(".popup").css("display","none");
	});
	
	$(".box2").click(function(){
		location.href="${pageContext.request.contextPath}/menu04_03";
	});
	$(".box3").click(function(){
		location.href="${pageContext.request.contextPath}/menu01_03";
	});
	$(".box4").click(function(){
		location.href="${pageContext.request.contextPath}/menu01_04";
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
			<div class="popup">
				<img src="${pageContext.request.contextPath}/resources/images/popup20190522.png">
				<div class="popup_closeBtn">
					<p>닫기</p>
				</div>
			</div>
			<div class="sectionBg">
				<img src="${pageContext.request.contextPath}/resources/images/mainBg.jpg">
			</div>
			<div class="sectionContentWrap">
				<div class="mainBannerWrap">
					<div class="mainBanner">
						<img src="${pageContext.request.contextPath}/resources/images/mainBanner2.png">
						<img src="${pageContext.request.contextPath}/resources/images/mainBanner1.png">
						<img src="${pageContext.request.contextPath}/resources/images/mainBanner3.png">
					</div>
				</div>
				<div class="boxWrap">
					<div class="box3 box">
						<h4>병원둘러보기</h4>
						<p>원마취통증의학과의 내부 시설 및</p>
						<p>장비를 알아볼 수 있습니다.</p>
					</div>
					<div class="box4 box">
						<h4>오시는 길</h4>
						<p>원마취통증의학과로</p>
						<p>오시는 길을 상세하게</p>
						<p>안내해드립니다.</p>
					</div>
					<div class="box5 box">
						<img src="${pageContext.request.contextPath}/resources/images/mainBox5.png">
					</div>
					<div class="box8">
						<div class="box_title">
							<h4>상담문의</h4>
						</div>
						<table>
							<tr>
								<th>제목</th>
								<td colspan="3"><input type="text" name="title"></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" name="writer"></td>
								<th>연락처</th>
								<td><input type="text" name="phone"></td>
							</tr>
							<tr>
								<th>공개여부</th>
								<td>
									<label><input type="radio" name="pwtype">공개</label>
									<label><input type="radio" name="pwtype">비공개</label>
								</td>
								<th>비밀번호</th>
								<td><input type="password" name="pw"></td>
							</tr>
							<tr>
								<th>답변방법</th>
								<td colspan="3">
									<label><input type="checkbox" name="replyType">문자</label>
									<label><input type="checkbox" name="replyType">전화</label>
									<label><input type="checkbox" name="replyType">댓글</label>
								</td>
							</tr>
							<tr>
								<th>문의내용</th>
								<td colspan="3"><textarea name="content"></textarea></td>
							</tr>
						</table>
						<div class="agreementChkWrap">
							<label>
								<input type="checkbox" name="agreement">개인정보제공에 동의합니다.
							</label>
							<span>[자세히 보기]</span>
						</div>
						<div class="adviceBtnWrap">
							<p>등록</p>
						</div>
					</div>
				</div><!-- boxWrap -->
			</div><!-- sectionContentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/pcFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>