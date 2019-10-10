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
<meta name="naver-site-verification" content="d53046e7ecfe442e3b973c1baeb37ec7fc75031d"/>
<meta name="description" content="대구 북구 침산동, 비수술클리닉, 성장클리닉, 교정클리닉, 도수치료">
<meta property="og:type" content="website">
<meta property="og:title" content="원통증의학과">
<meta property="og:description" content="대구 북구 침산동, 비수술클리닉, 성장클리닉, 교정클리닉, 도수치료">
<meta property="og:image" content="http://www.1clinic.co.kr/logo.png">
<meta property="og:url" content="http://www.1clinic.co.kr">
<link rel="canonical" href="http://www.1clinic.co.kr/">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/vTicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style>
.popup{
	/* display: none; */
}
.allWrap{
	width:100%;
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
	min-width: 1200px;
	height: 100%;
}
.popup{
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

.sectionContentWrap{
	width: 100%;
}
.mainBannerWrap{
	width: 100%;
	position: relative;
	overflow: hidden;
}
.mainBanner{
	width: 100%;
	margin: 0 auto;
	text-align: center;
	overflow: hidden;
}
.mainBanner div{
	overflow: hidden;
}
.mainBanner div.bannerImgBox{
	overflow: hidden;
	position: relative;
}
.mainBanner img.bannerImg{
	width: 100%;
	height: auto;
	display: block;
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-o-transform: scale(1.1);
	-ms-transform: scale(1.1);
	transform-origin: 50% 60%;
	-webkit-transform-origin: 50% 60%;
	-o-transform-origin: 50% 60%;
	-moz-transform-origin: 50% 60%;
	-ms-transform-origin: 50% 60%;
}
.mainBanner div.bannerImgBox img.bannerTxt{
	width: 40%;
	position: absolute;
}
.slick-slide{
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-o-transform: scale(1.1);
	-ms-transform: scale(1.1);
	transform-origin: 50% 60%;
	-webkit-transform-origin: 50% 60%;
	-o-transform-origin: 50% 60%;
	-moz-transform-origin: 50% 60%;
	-ms-transform-origin: 50% 60%;
	overflow: hidden;
}
.slick-slider { overflow: hidden; }
.slick-active .bannerImg{
  -webkit-animation: myMove 5s ease-in-out;
  -moz-animation: myMove 5s ease-in-out;
  -o-animation: myMove 5s ease-in-out;
  -ms-animation: myMove 5s ease-in-out;
  animation: myMove 5s ease-in-out;
}
@keyframes myMove {
  from { transform: scale(1.0,1.0); transform-origin: 50% 50%; }
  to { transform: scale(1.1,1.1); transform-origin: 50% 60%; }
}
@-webkit-keyframes myMove {
  from { -webkit-transform: scale(1.0,1.0); -webkit-transform-origin: 50% 50%; }
  to { -webkit-transform: scale(1.1,1.1); -webkit-transform-origin: 50% 60%;  }
}
@-o-keyframes myMove {
  from { -o-transform: scale(1.0,1.0); -o-transform-origin: 50% 50%; }
  to { -o-transform: scale(1.1,1.1); -o-transform-origin: 50% 60%;  }
}
@-moz-keyframes myMove {
  from { -moz-transform: scale(1.0,1.0); -moz-transform-origin: 50% 50%; }
  to { -moz-transform: scale(1.1,1.1); -moz-transform-origin: 50% 60%; }
}
@-ms-keyframes myMove {
  from { -ms-transform: scale(1.0,1.0); -ms-transform-origin: 50% 50%; }
  to { -ms-transform: scale(1.1,1.1); -ms-transform-origin: 50% 60%; }
}

.slick-dots{
	bottom: 20px !important;
}
.slick-dots li.slick-active button:before{
	color: skyblue !important;
}
.slick-dots li button:before{
	color: lightgray;
}
.slick-dotted.slick-slider{
	margin-bottom: 0 !important;
}
.sectionContentWrap{
	width: 100%;
	/* background: url("${pageContext.request.contextPath}/resources/images/mainSectionBg.png") no-repeat;
	background-size: cover; */
	background: #e7e7e7; /* Old browsers */
	background: -moz-linear-gradient(bottom,  #e7e7e7 0%, #ffffff 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(bottom,  #e7e7e7 0%,#ffffff 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to top,  #e7e7e7 0%,#ffffff 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e7e7e7', endColorstr='#ffffff',GradientType=0 ); /* IE6-9 */
}
.hosTitle{
	width: 100%;
	margin: 0 auto;
	padding: 25px 0;
	text-align: center;
	font-weight: bold;
	font-family: NanumSB;
	font-size: 35px;
	color: #4a4a4a;
	letter-spacing: 2px;
}
.content{
	width: 1200px;
	margin: 0 auto;
	padding-bottom: 40px;
}
.boxWrap1{
	width: 100%;
	padding: 7px;
	overflow: hidden;
}
.boxWrap1 > .box1{
	width: 380px;
	height: 279px;
	overflow: hidden;
	margin-bottom: 15px;
	float:left;
	box-shadow: 4px 3px 10px 0px gray;
	cursor: pointer;
}
/* .boxWrap1 > .box1 >{
	padding: 10px 15px;
} */
.boxWrap1 > .box1 > h4{
	width: 100%;
	text-align: center;
	font-size: 26px;
	color: #fff;
	padding: 15px 0;
	text-shadow: 2px 2px 1px #444;
}
.boxWrap1 > .box1:nth-child(1) > h4{
	background: url("${pageContext.request.contextPath}/resources/images/mainLoc.jpg") no-repeat;
	background-size: cover;
}
.boxWrap1 > .box1:nth-child(1) > h4 > img{
	width: 100px;
	margin-top: 10px;
}
.locText{
	width: 100%;
	text-align: center;
	padding: 15px 0;
}
.boxWrap1 > .box1:nth-child(1) > .locText > p{
	width: 100%;
	font-size: 20px;
	font-weight: bold;
	font-family: NanumSR;
}
.boxWrap1 > .box1:nth-child(1) > .locText > span{
	width: 100%; 
	font-size: 19px;
	font-weight: bold;
	font-family: NanumSR;
}
.boxWrap1 > .box1:nth-child(2){
	margin: 0 18px;
	position: relative; 
}
.boxWrap1 > .box1:nth-child(2) > h4{
	background: url("${pageContext.request.contextPath}/resources/images/mainVideo.jpg") no-repeat;
	background-size: cover;
}
.box1_videoWrap{
	width: 100%;
	overflow: hidden;
}
.box1_videoWrap > video{
	width: 102%;	
}
.boxWrap1 > .box1:nth-child(3) > h4{
	background: url("${pageContext.request.contextPath}/resources/images/mainDul.jpg") no-repeat;
	background-size: cover;
}
.dulBannerWrap{
	width: 100%;
	height: 218px;
	overflow: hidden;
}
.dulBannerWrap div{
	width: 100%;
	height: 100%;
	overflow: hidden;
}
.dulBannerWrap div img{
	transform: scale(1.0);
	-webkit-transform: scale(1.0);
	-moz-transform: scale(1.0);
	-o-transform: scale(1.0);
	-ms-transform: scale(1.0);
}
.boxWrap1 > .box1 > img{
	width: 100%;
}

.boxWrap2{
	width: 100%;
	padding: 7px;
	padding-bottom: 15px;
	overflow: hidden;
}
.box2{
	
}
.box2_1{
	width: 780px;
	float: left;
}
.box2_1_top{
	width: 100%;
	box-shadow: 4px 3px 10px 0px gray;
	overflow: hidden;
	margin-bottom: 28px;
}
.box2_1_top > .b2t_title{
	width: 250px;
	float: left; 
}
.box2_1_top > .b2t_title > h4{
	width: 100%;
	text-align: center;
	font-size: 26px;
	color: #fff;
	padding: 15px 0;
	text-shadow: 2px 2px 1px #444;
	background: url("${pageContext.request.contextPath}/resources/images/mainNotice.jpg") no-repeat;
	background-size: cover;
}
.box2_1_top > .b2t_title > h4 > a{
	color: #fff;
}
.box2_1_top > .b2t_title > h4 > a > img{
	width: 70px;
}
.box2_1_top > .b2t_title > h4 > a > span{
	display: inline-block;
	padding-top: 20px;
	margin-left: 10px;
}
.box2_1_top > .b2t_content{
	width: 530px;
	padding: 38px 15px;
	float:left;
}
.box2_1_top > .b2t_content > .updownBanner{
	width: 100%;
}
.box2_1_top > .b2t_content > .updownBanner > ul > li{
	font-size: 18px;
}
.box2_1_top > .b2t_content > .updownBanner a{
	font-size: 20px;
}
.box2_1_bottom{
	width: 100%;
	box-shadow: 4px 3px 10px 0px gray;
	overflow: hidden;
}
.box2_1_bottom > .b2b_content{
	width: 70%;
	float: left;
	background: url("${pageContext.request.contextPath}/resources/images/mainSangdam.jpg") no-repeat;
	background-size: cover;
}
.box2_1_bottom > .b2b_content > .b2b_c_title{
	width: 100%;
	padding: 15px 25px;
}
.box2_1_bottom > .b2b_content > .b2b_c_title > p{
	font-size: 24px;
	color: #fff;
	line-height: 36px;
	font-family: NanumSR;
}
.box2_1_bottom > .b2b_content > .b2b_c_title > p:nth-child(2){
	font-size: 28px;
}
.box2_1_bottom > .b2b_content > .b2b_c_title > p:nth-child(2) > span{
	font-weight: bold;
}
.box2_1_bottom > .b2b_content > .formWrap{
	width: 100%;
	padding: 10px 25px;
}
.box2_1_bottom > .b2b_content > .formWrap > table{
	width: 100%;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td{
	width: 100%;
	font-size: 16px;
	padding: 5px;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > input{
	font-size: 16px;
	padding:2px;
	border: 1px solid lightgray;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > input[name='title']{
	width: 250px;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > input[name='name']{
	width: 70px;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > input[name='phone']{
	width: 140px;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > input[name='replyTime']{
	width: 170px;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > input[name='pw']{
	width: 80px;
}

.box2_1_bottom > .b2b_content > .formWrap > table tr > td > select{
	font-size: 16px;
	padding: 2px;
	border: 1px solid lightgray;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > span{
	font-size: 15px;
	color: #0e3bcc;
	font-weight: bold;
	font-family: NanumSR;
}
.box2_1_bottom > .b2b_content > .formWrap > table tr > td > textarea{
	width: 100%;
	height: 80px;
	resize: none;
	font-size: 15px;
	padding: 5px;
	border: 1px solid lightgray;
}
 input::-webkit-input-placeholder {
	color: #aaaaaa;
} 
input:-ms-input-placeholder {
	color: #aaaaaa;
}
textarea::-webkit-input-placeholder {
	color: #aaaaaa;
}
textarea:-ms-input-placeholder {
	color: #aaaaaa;
}
input::placeholder {
	color: #aaaaaa;
}
textarea::placeholder {
	color: #aaaaaa;
}
#privacyAgreementWrap{
	font-size: 15px;
	padding-left: 10px;
	margin-bottom: 18px;
	font-family: NanumSR;
}
#privacyAgreementWrap > label{
	vertical-align: middle;
}
#privacyAgreementWrap > label > input{
	margin-right: 5px;
	vertical-align: middle;
}
#privacyAgreementWrap > span{
	display: inline-block;
	margin-left: 10px;
	cursor: pointer;
	vertical-align: middle;
}
.submitBtn{
	width: 100%;
}
.submitBtn > p{
	width: 155px;
	text-align: center;
	margin: 0 auto;
	font-size: 18px;
	color: #fff;
	padding: 8px 0; 
	cursor: pointer;
	background: url("${pageContext.request.contextPath}/resources/images/mainSubmitBtnBg.jpg");
	background-position: center;
}
.submitBtn > p > img{
	width: 25px;
	padding-left: 5px;
	vertical-align: middle;
}
.box2_1_bottom > .b2b_img{
	width: 30%;
	float: right;
	text-align: center;
}
.box2_1_bottom > .b2b_img > img{
	width: 80%;
	margin-top: 110px;
}

.box2_2{
	width: 380px;
	float: right;
	margin-right: 7px;
	box-shadow: 4px 3px 10px 0px gray;
}
.box2_2 > h4{
	width: 100%;
	text-align: center;
	font-size: 26px;
	color: #fff;
	padding: 15px 0;
	text-shadow: 2px 2px 1px #444;
	background: url("${pageContext.request.contextPath}/resources/images/mainTime.jpg") no-repeat;
	background-size: cover;
}
.box2_2 > h4 > img{
	width: 100px;
	margin-top: 10px;
}
.box2_2 > .b2_2_content{
	width: 100%;
	padding: 23px 19px;
}
.box2_2 > .b2_2_content > table{
	width: 100%;
}
.box2_2 > .b2_2_content > table tr{
	display: inline-block;
	margin-bottom:15px;
}
.box2_2 > .b2_2_content > table  tr > th{
	width: 100px;
	background: #5eaebf;
	font-size: 18px;
	font-weight: bold;
	color: #fff;
	border-radius: 8px;
	font-family: NanumSR;
}
.box2_2 > .b2_2_content > table  tr > td{
	font-size: 20px;
	padding: 7px 5px;
	padding-left: 9px;
	font-weight: bold;
	font-family: NanumSR;
	letter-spacing: 0.4px;
}
.box2_2 > .b2_2_content > .phoneNumberWrap{
	width: 100%;
	text-align: center;
	margin-top: 20px;
}
.box2_2 > .b2_2_content > .phoneNumberWrap > img{
	width: 35px;
	vertical-align: bottom;
}
.box2_2 > .b2_2_content > .phoneNumberWrap > .fs23{
	font-size: 30px;
	font-weight: bold;
}
.box2_2 > .b2_2_content > .phoneNumberWrap > .fs30{
	font-size: 39px;
	font-weight: bold;
}

.content2{
	width: 100%;
}
.con2Title{
	width: 100%;
	background: url("${pageContext.request.contextPath}/resources/images/mainSpecialBg.jpg");
	padding: 75px 0;
}
.con2Title > h2{
	width: 100%;
	font-size: 35px;
	text-align: center;
	font-weight: bold;
	font-family: NanumSR;
	color: #00557b;
	letter-spacing: 8px;
	margin-bottom: 20px;
}
.con2Title > p{
	width: 100%;
	text-align: center;
	font-size: 23px;
	color: #8c8c8c;
	font-weight: bold;
	font-family: NanumSR;
	letter-spacing: 1px;
}
.con2BoxWrap{
	width: 100%;
	overflow:hidden;
}
.con2BoxWrap > .con2Box{
	width: 25%;
	float:left;
}
.con2BoxWrap > .con2Box > a > img{
	width: 100%;
}
.cooperationWrap{
	width: 100%;
	padding: 40px 100px;
	background: #cccccc;
}
.cooperationWrap > .cooContent{
	width: 100%;
	overflow: hidden;
}
.cooperationWrap > .cooContent > span{
	display: inline-block;
	width: 85px;
	margin-left: 100px;
	font-size: 25px;
	font-weight: bold;
	line-height: 60px;
	float: left;
	color: #505050;
}
.cooperationWrap > .cooContent > .cooBanner{
	width: 80%;
	float: left;
}
.cooperationWrap > .cooContent > .cooBanner img{
	margin: 0 30px;
}

.footerWrap{
	width: 100%;
	height: 80px;
	background: #393939;
} 
</style>
<script>
function inputPhoneNumber(obj) {
	var number = obj.value.replace(/[^0-9]/g, "");
	var phone = "";
	
	if(number.length < 4) {
		return number;
	} else if(number.length < 7) {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3);
	} else if(number.length < 11) {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3, 3);
		phone += "-";
		phone += number.substr(6);
	} else {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3, 4);
		phone += "-";
		phone += number.substr(7);
	}
	obj.value = phone;
}

function post_adviceRegister(info){
	$.ajax({
		url:"${pageContext.request.contextPath}/adviceRegister",
		type: "post",
		data:JSON.stringify(info),
		async:false,
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		success:function(json){
			if(json == "ok"){
				alert("상담문의 등록이 완료되었습니다.\n문의하신 내용은 문의상담 메뉴에서 확인 가능합니다.");
				$(".formWrap > table tr:nth-child(1) > td > input[name='title']").val("");
				$(".formWrap > table tr:nth-child(1) > td > input[name='name']").val("");
				$(".formWrap > table tr:nth-child(1) > td > input[name='phone']").val("");
				$(".formWrap > table tr:nth-child(2) > td > select[name='replyType'] > option:nth-child(1)").prop("selected", true);
				$(".formWrap > table tr:nth-child(2) > td > input[name='replyTime']").val("");
				$(".formWrap > table tr:nth-child(2) > td > select[name='pwType'] > option:nth-child(1)").prop("selected", true);
				$(".formWrap > table tr:nth-child(2) > td > input[name='pw']").val("");
				$(".formWrap > table tr:nth-child(3) > td > textarea[name='content']").val("");
			}else{
				alert("문의글 등록이 정상적으로 등록되지 않았습니다. 새로고침(F5) 후 다시 이용하세요.");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

$(function(){
	
	$(".mainBanner").slick({
		arrows:false,
		infinite:true,
		speed:1000,
		fade:true,
		cssEase:'linear',
		autoplay:true,
		autoplaySpeed:5000,
		dots:true,
	});
	
	$(".popup > .popup_closeBtn > p").click(function(){
		$(".popup").css("display","none");
	});
	
	$(".box1").click(function(){
		var num = $(this).index();
		if(num == 0){
			location.href='${pageContext.request.contextPath}/menu01_04';
		}else if(num == 2){
			location.href='${pageContext.request.contextPath}/menu01_03';
		}else{
			return false;
		}
	});
	
	$(".dulBannerWrap").slick({
		arrows:false,
		infinite:true,
		speed:1000,
		fade:true,
		cssEase:'linear',
		autoplay:true,
		autoplaySpeed:1000,
		dots:false,
	})
	
	$(".updownBanner").vTicker();
	
	$(".cooBanner").slick({
		arrows: false,
		dots: false,
		infinite: true,
		slidesToShow: 4,
		slidesToScroll: 1,
		speed:4000,
		autoplay:true,
		autoplaySpeed:1000,
		centerPadding: '100px',
	});
	
	$("#privacyAgreementWrap > span").click(function(){
		window.open("${pageContext.request.contextPath}/privacy_popup", "_blank", "width=600px, height=700px, scrollbars=no, resizable=no, directories=no")
	});
	
	$(".submitBtn > p").click(function(){
		var title = $(".formWrap > table tr:nth-child(1) > td > input[name='title']").val();
		var name = $(".formWrap > table tr:nth-child(1) > td > input[name='name']").val();
		var phone = $(".formWrap > table tr:nth-child(1) > td > input[name='phone']").val();
		var replyType = $(".formWrap > table tr:nth-child(2) > td > select[name='replyType']").val();
		var replyTime = $(".formWrap > table tr:nth-child(2) > td > input[name='replyTime']").val();
		var pwType = $(".formWrap > table tr:nth-child(2) > td > select[name='pwType']").val();
		var pw = $(".formWrap > table tr:nth-child(2) > td > input[name='pw']").val();
		var content = $(".formWrap > table tr:nth-child(3) > td > textarea[name='content']").val();
		var privacyState = $("#privacyAgreementWrap > label > input").prop("checked");
		
		if(title == ""){
			alert("제목을 입력해주세요.");
			return false;
		}
		if(name == ""){
			alert("이름을 입력해주세요.");
			return false;
		}
		if(phone == ""){
			alert("연락처를 입력해주세요.");
			return false;
		}
		if(pwType == "n"){
			alert("공개여부를 선택해주세요.");
			return false;
		}else if(pwType == "o"){
			if(pw == ""){
				alert("비공개를 원하는 경우 비밀번호를 입력해주세요.");
				return false;
			}
		}else if(pwType == "x"){
			pw = "x";
		}
		if(replyType == "n"){
			alert("답변방법을 선택해주세요.");
			return false;
		}
		if(replyTime == ""){
			replyTime = "미입력";
		}
		if(content == ""){
			alert("문의내용을 입력해주세요.");
			return false;
		}
		if(privacyState == false){
			alert("개인정보제공에 동의해야 상담등록이 진행됩니다.");
			return false;
		}
		
		var ndate = new Date();
		var year = ndate.getFullYear();
		var month = ndate.getMonth()+1;
		var date = ndate.getDate();
		var regdate = year+"-"+((month>9?'':"0")+month)+"-"+((date>9?'':"0")+date);
		
		var info = {title:title, writer:name, phone:phone, replyType:replyType, replyTime:replyTime, pwType:pwType, pw:pw, content:content, regdate:regdate};
		
		post_adviceRegister(info);
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
				<img src="${pageContext.request.contextPath}/resources/popup/popup_20191010.jpg">
				<div class="popup_closeBtn">
					<p>닫기</p>
				</div>
			</div>
			<div class="mainBannerWrap">
				<div class="mainBanner">
					<div class="bannerImgBox">
						<img class="bannerImg" src="${pageContext.request.contextPath}/resources/images/mainBanner1.jpg">
						<img class="bannerTxt" src="${pageContext.request.contextPath}/resources/images/mainBannerTxt1.png" style="top: 25%; right: 10%;">
					</div>
					<div class="bannerImgBox">
						<img class="bannerImg" src="${pageContext.request.contextPath}/resources/images/mainBanner2.jpg">
						<img class="bannerTxt" src="${pageContext.request.contextPath}/resources/images/mainBannerTxt2.png" style="bottom:5%; left: 50%;transform:translate(-50%, 0);">
					</div>
					<div class="bannerImgBox">
						<img class="bannerImg" src="${pageContext.request.contextPath}/resources/images/mainBanner3.jpg">
						<img class="bannerTxt" src="${pageContext.request.contextPath}/resources/images/mainBannerTxt3.png" style="top:25%; right: 10%;">
					</div>
				</div>
			</div><!-- mainBannerWrap end -->
			<div class="sectionContentWrap">
				<h2 class="hosTitle">About Onepain Clinic</h2>
				<div class="content">
					<div class="boxWrap1">
						<div class="box1">
							<h4>오시는 길<br><img src="${pageContext.request.contextPath}/resources/images/icon_mainLoc.png"></h4>
							<div class="locText">
								<p>대구광역시 북구 침산로 124, 4층</p>
								<p>(침산동, P&A빌딩)</p>
								<br>
								<span>- 건물주차가능 -</span>
							</div>
						</div>
						<div class="box1">
							<h4>원내영상</h4>
							<div class="box1_videoWrap">
								<video loop autoplay src="${pageContext.request.contextPath}/resources/video/v1.mp4"></video>
							</div>
						</div> 
						<div class="box1">
							<h4>병원둘러보기</h4>
							<div class="dulBannerWrap">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_1.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_2.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_3.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_4.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_5.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_6.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_7.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_8.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_9.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/menu01_03_10.jpg">
							</div>
						</div>
					</div><!-- boxWrap1 end -->
					<div class="boxWrap2">
						<div class="box2 box2_1">
							<div class="box2_1_top">
								<div class="b2t_title">
									<h4><a href="${pageContext.request.contextPath}/menu01_05"><img src="${pageContext.request.contextPath}/resources/images/icon_mainNotice.png"><span>공지사항</span></a></h4>
								</div>
								<div class="b2t_content">
									<div class="updownBanner">
										<ul>
											<c:choose>
											    <c:when test="${fn:length(noticeList) == 0}">
										        		<li>등록된 게시물이 없습니다.</li>
											    </c:when>
											    <c:otherwise>
											        <c:forEach var="item" items="${noticeList}">
														<li><a href="${pageContext.request.contextPath}/menu01_05Read?no=${item.no}">${item.title}</a></li>
													</c:forEach>
												</c:otherwise> 
											</c:choose> 
										</ul>
									</div>
									
								</div>
							</div>
							<div class="box2_1_bottom">
								<div class="b2b_content">
									<div class="b2b_c_title">
										<p>궁금한 모든 질문은</p>
										<p><span>1:1 맞춤상담</span>을 통해 해결하세요!</p>
									</div>
									<div class="formWrap">
										<table>
											<tr>
												<td>
													<input type="text" name="title" placeholder="불편한 곳은 어디신가요?" autocomplete="off">
													<input type="text" name="name" value="" placeholder="이름" autocomplete="off">
													<input type="text" name="phone" value="" placeholder="연락처" onKeyup="inputPhoneNumber(this);" maxlength="13" autocomplete="off">
												</td>
											</tr>
											<tr>
												<td>
													<select name="pwType">
														<option value="n">공개여부</option>
														<option value="x">공개</option>
														<option value="o">비공개</option>
													</select>
													<input type="password" name="pw" placeholder="비밀번호" autocomplete="off">
													<select name="replyType">
														<option value="n">답변방법</option>
														<option value="sms">문자</option>
														<option value="call">전화</option>
														<option value="all">상관없음</option>
													</select>
													<input type="text" name="replyTime" value="" placeholder="연락가능 시간" autocomplete="off">
													<!-- <span>문의 내용은 상담문의 메뉴에서 확인 가능합니다.</span> -->
												</td>
											</tr>
											<tr>
												<td colspan="5"><textarea name="content" placeholder="증상을 상세히 기입해주세요."></textarea></td>
											</tr>
										</table>
										<p id="privacyAgreementWrap"><label><input type="checkbox" value="">개인정보제공에 동의합니다.</label><span>[자세히]</span></p>
										<div class="submitBtn">
											<p>상담문의하기<img src="${pageContext.request.contextPath}/resources/images/icon_arrow.png"></p>
										</div>
									</div>
								</div>
								<div class="b2b_img">
									<img src="${pageContext.request.contextPath}/resources/images/icon_monitor.png">
								</div>
							</div>
						</div>
						<div class="box2 box2_2">
							<h4>진료안내<br><img src="${pageContext.request.contextPath}/resources/images/icon_mainTime.png"></h4>
							<div class="b2_2_content">
								<table>
									<tr>
										<th>평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</th>
										<td>오전 10:00 ~ 오후 08:00</td>
									</tr>
									<tr>
										<th>토·공휴일</th>
										<td>오전 09:00 ~ 오후 01:00</td>
									</tr>
									<tr>
										<th>점 심 시 간</th>
										<td>오후 01:00 ~ 오후 02:00</td>
									</tr> 
									<tr>
										<th>휴&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;진</th>
										<td>(매월) 2째주 토요일</td>
									</tr>
								</table>
								<div class="phoneNumberWrap">
									<img src="${pageContext.request.contextPath}/resources/images/icon_phone.png">
									<span class="fs23">053.</span>
									<span class="fs30">269.7575</span>
								</div>
							</div><!-- b2_2_content end -->
						</div><!-- box2_2 end -->
					</div><!-- boxWrap2 end -->
				</div><!-- content end -->
				<div class="content2">
					<div class="con2Title">
						<h2>원통증의학과만의 Special Clinic</h2>
						<p>다년간의 노하우로 최상의 진료를 선사합니다!</p>
					</div>
					<div class="con2BoxWrap">
						<div class="con2Box">
							<a href="${pageContext.request.contextPath}/menu02_01">
								<img src="${pageContext.request.contextPath}/resources/images/mainSpecial1.jpg">
							</a>
						</div>
						<div class="con2Box">
							<a href="${pageContext.request.contextPath}/menu04_01">
								<img src="${pageContext.request.contextPath}/resources/images/mainSpecial2.jpg">
							</a>
						</div>
						<div class="con2Box">
							<a href="${pageContext.request.contextPath}/menu03_01">
								<img src="${pageContext.request.contextPath}/resources/images/mainSpecial3.jpg">
							</a>
						</div>
						<div class="con2Box">
							<a href="${pageContext.request.contextPath}/menu01_08">
								<img src="${pageContext.request.contextPath}/resources/images/mainSpecial4.jpg">
							</a>
						</div>
					</div><!-- con2BoxWrap end -->
				</div><!-- content2 end -->
				<div class="cooperationWrap">
					<div class="cooContent">
						<span>협&nbsp;&nbsp;력</span>
						<div class="cooBanner">
							<img src="${pageContext.request.contextPath}/resources/images/ch1.png">
							<img src="${pageContext.request.contextPath}/resources/images/ch2.png">
							<img src="${pageContext.request.contextPath}/resources/images/ch3.png">
							<img src="${pageContext.request.contextPath}/resources/images/ch4.png">
							<img src="${pageContext.request.contextPath}/resources/images/ch5.png">
							<img src="${pageContext.request.contextPath}/resources/images/ch6.png">
							<img src="${pageContext.request.contextPath}/resources/images/ch7.png">
						</div>
					</div>
				</div>
			</div><!-- sectionContentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/pcFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>