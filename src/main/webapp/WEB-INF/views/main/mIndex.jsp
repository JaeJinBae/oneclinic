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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.popup{
	display: none;
}
.allWrap{
	width:100%;
	background: #f2f6f8;
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
.popup{
	position: fixed;
	top: 135px;
	left: 10px;
	z-index: 99;
	width: 95%;
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
	margin-left: 84%;
	color: #fefefe;
	cursor: pointer;
	padding: 10px;
	font-size: 15px;
	letter-spacing: 2px;
}
.sectionContentWrap{
	width: 100%;
	margin: 0 auto;
	overflow: hidden;
}
.mainBannerWrap{
	width: 100%;
	padding: 5px;
}
.mainBanner{
	width: 100%;
	box-shadow: 1px 1px 5px 1px gray;
}
.mainBanner > img{
	width: 100%;
}
.slick-dots{
	bottom: 2px !important;
}
.slick-dotted.slick-slider{
	margin-bottom: 5px !important;
}
.boxWrap{
	width: 100%;
	overflow: hidden;
}
.box{
	width: 100%;
	padding: 0 5px;
}
.box > a{
	width: 100%;
}
.box > a > img{
	width: 100%;
}
.box1{
	width: 100%;
} 
.box1 > img{
	width: 100%;
	border-radius: 5px;
}
.box2{
	width: 100%;
}
.box2 > .b2b_content{
	width: 100%;
	background: url("${pageContext.request.contextPath}/resources/images/mainSangdam.jpg") no-repeat;
	background-size: cover;
}
.box2 > .b2b_content > .b2b_c_title{
	width: 100%;
	padding: 15px 6px;
	overflow: hidden;
}
.box2 > .b2b_content > .b2b_c_title > .b2b_c_title_img{
	width: 65px;
	float: left;
}
.box2 > .b2b_content > .b2b_c_title > .b2b_c_title_img > img{
	width: 100%;
}
.box2 > .b2b_content > .b2b_c_title > .b2b_c_title_txt{
	float:left;
	margin-left: 7px;
}
.box2 > .b2b_content > .b2b_c_title > .b2b_c_title_txt > p{
	font-size: 18px;
	color: #fff;
	line-height: 30px;
	font-family: NanumSR;
}
.box2 > .b2b_content > .b2b_c_title > .b2b_c_title_txt > p:nth-child(2){
	font-size: 21px;
}
.box2 > .b2b_content > .b2b_c_title > .b2b_c_title_txt > p:nth-child(2) > span{
	font-weight: bold;
}
.box2 > .b2b_content > .formWrap{
	width: 100%;
	padding: 10px 5px;
}
.box2 > .b2b_content > .formWrap > table{
	width: 100%;
}
.box2 > .b2b_content > .formWrap > table tr > td{
	width: 100%;
	font-size: 16px;
	padding: 5px;
}
.box2 > .b2b_content > .formWrap > table tr > td > input{
	font-size: 14px;
	padding:2px;
	border: 1px solid lightgray;
}
.box2 > .b2b_content > .formWrap > table tr > td > input[name='title']{
	width: 100%;
	margin-bottom:10px;
}
.box2 > .b2b_content > .formWrap > table tr > td > input[name='name']{
	width: 70px;
}
.box2 > .b2b_content > .formWrap > table tr > td > input[name='phone']{
	width: 140px;
}
.box2 > .b2b_content > .formWrap > table tr > td > input[name='replyTime']{
	width: 90px;
}
.box2 > .b2b_content > .formWrap > table tr > td > input[name='pw']{
	width: 60px;
}

.box2 > .b2b_content > .formWrap > table tr > td > select{
	font-size: 14px;
	padding: 2px 0;
	border: 1px solid lightgray;
}
.box2 > .b2b_content > .formWrap > table tr > td > span{
	font-size: 15px;
	color: #0e3bcc;
	font-weight: bold;
	font-family: NanumSR;
}
.box2 > .b2b_content > .formWrap > table tr > td > textarea{
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
	width: 145px;
	text-align: center;
	margin: 0 auto;
	font-size: 15px;
	color: #fff;
	padding: 7px 0;
	cursor: pointer;
	background: url("${pageContext.request.contextPath}/resources/images/mainSubmitBtnBg.jpg");
	background-position: center;
}
.submitBtn > p > img{
	width: 22px;
	padding-left: 5px;
	vertical-align: middle;
}
.box3{
	width: 100%;
	background: url("/oneclinic/resources/images/mainSpecialBg.jpg");
	padding: 0;
}
.box3Title{
	width: 100%;
	background: url("${pageContext.request.contextPath}/resources/images/mainSpecialBg.jpg");
	padding: 35px 0;
}
.box3Title > h2{
	width: 100%;
	font-size: 22px;
	text-align: center;
	font-weight: bold;
	font-family: NanumSR;
	color: #00557b;
	margin-bottom: 10px;
}
.box3Title > p{
	width: 100%;
	text-align: center;
	font-size: 17px;
	color: #8c8c8c;
	font-weight: bold;
	font-family: NanumSR;
}
.box3Img{
	width: 100%;
	overflow: hidden;
}
.box3Img > a{
	width: 50%;
}
.box3Img > a > img{
	width: 50%;
	float: left;
}
.box4{
	padding: 0;
	background: #cccccc;
}
.box4 > .cooContent{
	width: 100%;
	overflow: hidden;
}
.box4 > .cooContent > span{
	display: inline-block;
	margin-left: 10px;
	font-size: 15px;
	font-weight: bold;
	line-height: 55px;
	float: left; 
	color: #505050;
	font-family: NanumSR;
}
.box4 > .cooContent > .cooBanner{
	width: 85%;
	float: right;
	margin-top: 7px;
}
.box4 > .cooContent > .cooBanner img{
	margin: 0 5px;
}

.footerWrap{
	width: 100%;
	height: 90px; 
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
	/* 메인배너 배경 */
	$(".mainBanner").slick({
		arrows: false,
		infinite: true,
		speed: 500,
		fade: true,
		cssEase: 'linear',
		autoplay: true,
		autoplaySpeed: 4000,
		dots: true,
	});
	//팝업 닫기
	$(".popup > .popup_closeBtn > p").click(function(){
		$(".popup").css("display","none");
	});
	
	$(".cooBanner").slick({
		arrows: false,
		dots: false,
		infinite: true,
		slidesToShow: 2,
		slidesToScroll: 1,
		speed:2000,
		autoplay:true,
		autoplaySpeed:1,
		centerPadding: '50px',
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
			<jsp:include page="../include/mHeader.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="popup">
				<img src="${pageContext.request.contextPath}/resources/popup/popup_20191010.jpg">
				<div class="popup_closeBtn">
					<p>닫기</p>
				</div>
			</div>
			<div class="sectionContentWrap">
				<div class="mainBannerWrap">
					<div class="mainBanner">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainBanner1.jpg">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainBanner2.jpg">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainBanner3.jpg">
					</div>
				</div>
				<div class="boxWrap">
					<div class="box1 box">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainTime.png">
					</div>
					<div class="box2 box">
						<div class="b2b_content">
							<div class="b2b_c_title">
								<div class="b2b_c_title_img">
									<img src="${pageContext.request.contextPath}/resources/images/icon_monitor2.png">
								</div>
								<div class="b2b_c_title_txt">
									<p>궁금한 모든 질문은</p>
									<p><span>1:1 맞춤상담</span>을 통해 해결하세요!</p>
								</div>
							</div>
							<div class="formWrap">
								<table>
									<tr>
										<td>
											<input type="text" name="title" placeholder="불편한 곳은 어디신가요?"><br>
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
											<input type="text" name="replyTime" value="" placeholder="연락가능시간" autocomplete="off">
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
					</div><!-- box2 end -->
					<div class="box3 box">
						<div class="box3Title">
							<h2>원통증의학과만의 Special Clinic</h2>
							<p>다년간의 노하우로 최상의 진료를 선사합니다!</p>
						</div>
						<div class="box3Img">
							<a href="${pageContext.request.contextPath}/mMenu02_01"><img src="${pageContext.request.contextPath}/resources/images/mainSpecial1.jpg"></a>
							<a href="${pageContext.request.contextPath}/mMenu04_01"><img src="${pageContext.request.contextPath}/resources/images/mainSpecial2.jpg"></a>
							<a href="${pageContext.request.contextPath}/mMenu01_08"><img src="${pageContext.request.contextPath}/resources/images/mainSpecial4.jpg"></a>
							<a href="${pageContext.request.contextPath}/mMenu03_01"><img src="${pageContext.request.contextPath}/resources/images/mainSpecial3.jpg"></a>
						</div>
					</div>
					<div class="box4 box"> 
						<div class="cooContent">
							<span>협력</span>
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
				</div><!-- boxWrap end -->
			</div><!-- sectionContentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/mFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>