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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
.contentTitle > table tr:nth-child(2) > td:nth-child(4){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 14px;
}
.contentTitle > table tr:nth-child(2) > td:nth-child(4) > a{
	color: #fff;
	font-weight: bold;
}
.content{
	width: 100%;
}
.privateWrap{
	width: 100%;
	padding: 10px;
	height: 100px;
	border: 1px solid gray;
	overflow: scroll;
}
.privateWrap > .privateTxt{
	width: 100%;
}
.privateAgreeBtn{
	width: 100%;
	font-size: 13px;
	margin-top: 10px;
	margin-bottom: 30px;
}
.privateAgreeBtn > label > input{
	vertical-align: middle;
}
.tblWrap{
	width: 100%;
}
.tblWrap > table{
	width: 100%;
	border-right: 1px solid #417ca6;
}
.tblWrap > table tr{

}
.tblWrap > table tr > th{
	width: 75px;
	color: #fff;
	font-size: 17px;
	text-align: center;
	background: #417ca6;
	padding: 6px 0;
	letter-spacing: 1px;
	border-top: 1px solid #417ca6;
	border-bottom: 1px solid #417ca6;
}
.tblWrap > table tr > td{
	font-size: 15px;
	padding: 5px;
	border-top: 1px solid #417ca6;
	border-bottom: 1px solid #417ca6;
}
.tblWrap > table tr:nth-child(1) > th{
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr:nth-child(2) > th:nth-child(1){
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr:nth-child(1) > td{
	text-align: left;
}
.tblWrap > table tr:nth-child(1) > td > input{
	width: 100%;
}
.tblWrap > table tr > td > input{
	font-size: 15px;
	vertical-align: middle;
	padding: 2px 5px;
}
.tblWrap > table tr:nth-child(2) > td > input[name='writer']{
	width: 88px;
}
.tblWrap > table tr:nth-child(2) > td > input[name='phone']{
	width: 50%;
}
.tblWrap > table tr > td > select{
	width: 88px;
	font-size: 15px;
	padding: 2px 5px;
}
.tblWrap > table tr > td > textarea{
	width: 100%;
	height:350px;
	resize: none;
	font-size: 15px;
	padding:8px;
}
.btnWrap{
	width: 100%;
	text-align: center;
	margin-top: 20px;
}
.btnWrap > p{
	display: inline-block;
	text-align: center;
	font-size: 15px;
	color: #fff;
	padding: 12px;;
	cursor: pointer;
}
.btnWrap > p:nth-child(1){
	background: #417ca6;
}
.btnWrap > p:nth-child(2){
	background: #91b0c4;
}
.btnWrap > p > a{
	color: #fff;
}


.footerWrap{
	width: 100%;
	height: 70px;
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
				alert("상담문의 등록이 완료되었습니다.");
				location.href="${pageContext.request.contextPath}/mMenu01_08";
			}else{
				alert("문의글 등록이 정상적으로 등록되지 않았습니다. 새로고침(F5) 후 다시 이용하세요.");
				console.log(json);
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
}

$(document).ready(function(){
	var height = $(".sectionContent").outerHeight();
	$(".sectionContent > .leftMenu").css("height", height);
	
	$(".btnWrap > p:nth-child(1)").click(function(){
		var title = $(".tblWrap > table tr:nth-child(1) > td > input[name='title']").val();
		var name = $(".tblWrap > table tr:nth-child(2) > td > input[name='writer']").val();
		var phone = $(".tblWrap > table tr:nth-child(2) > td > input[name='phone']").val();
		var replyType = $(".tblWrap > table tr:nth-child(2) > td > select[name='replyType']").val();
		var replyTime = $(".tblWrap > table tr:nth-child(2) > td > input[name='replyTime']").val();
		var pwType = $(".tblWrap > table tr:nth-child(2) > td > select[name='pwType']").val();
		var pw = $(".tblWrap > table tr:nth-child(2) > td > input[name='pw']").val();
		var content = $(".tblWrap > table tr:nth-child(3) > td > textarea[name='content']").val();
		var privateAgree = $(".privateAgreeBtn > label > input").prop("checked");
		
		if(privateAgree != true){
			alert("개인정보제공에 동의하지 않으면 상담문의를 진행할 수 없습니다.");
			return false;
		}
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
					<div class="privateWrap">
						<div class="privateTxt">
							원마취통증의학과(이하 병원 이라 함)은 귀하의 개인정보보호를 매우 중요시하며, 『개인정보보호법』을 준수하고 있습니다.<br>
							시행일자 : 2019년 8월 5일 <br>
							이 개인정보처리방침의 순서는 다음과 같습니다.<br>
							<br>
							1. 수집하는 개인정보의 항목 및 수집방법<br>
							2. 개인정보의 수집 및 이용목적<br>
							3. 개인정보의 보유 및 이용기간<br>
							4. 개인정보의 파기절차 및 그 방법<br>
							5. 개인정보 제공 및 공유<br>
							6. 수집한 개인정보의 취급위탁<br> 
							7. 이용자 및 법정대리인의 권리와 그 행사방법<br>
							8. 동의철회 / 회원탈퇴 방법<br>
							9. 개인정보 자동 수집 장치의 설치/운영 및 그 거부에 관한 사항<br>
							10. 개인정보관리책임자<br>
							11. 개인정보의 안전성 확보조치<br>
							12. 정책 변경에 따른 공지의무<br>
							<br>
							1. 수집하는 개인정보의 항목 및 수집방법<br>
							<br>
							병원은 상담 시 서비스 이용을 위해 필요한 최소한의 개인정보만을 수집합니다. 귀하가 병원의 서비스를 이용하기 위해서는 상담 시 입력항목이 있는데,이메일이나, 연락처 등은 입력하지 않더라도 서비스 이용에는 제한이 없습니다.<br>
							<br>
							[진료정보]<br>
							- 수집항목 : 성명, 주민등록번호, 주소, 연락처, 진료기록<br>
							 ※ 의료법에 의해 고유식별정보 및 진료정보를 의무적으로 보유하여야 하여야 함(별도 동의 불필요)<br>
							<br>
							[홈페이지 상담시 시 수집항목]<br>
							- 필수항목 : 성명, 아이디, 비밀번호, 이메일, 연락처(전화번호, 휴대폰번호)<br>
							- 선택항목 : 메일수신여부<br>
							- 서비스 이용 과정이나 서비스 제공 업무 처리 과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. : 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보<br>
							<br>
							[개인정보 수집방법]<br>
							- 다음과 같은 방법으로 개인정보를 수집합니다.<br>
							  홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일<br> 
							<br>
							2. 개인정보의 수집 및 이용목적<br>
							병원은 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
							이용자가 제공한 모든 정보는 하기 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 것입니다.<br>
							<br>
							[진료정보]<br>
							- 진단 및 치료를 위한 진료서비스와 청구, 수납 및 환급 등의 원무서비스 제공<br>
							<br>
							[홈페이지 상담정보]<br>
							- 상담 서비스 제공, 이메일을 통한 병원소식, 질병정보 등의 안내, 설문조사<br>
							<br>
							3. 개인정보의 보유 및 이용기간<br>
							 병원은 개인정보의 수집목적 또는 제공받은 목적이 달성된 때에는 귀하의 개인정보를 지체 없이 파기합니다.<br>
							<br>
							[진료정보]<br>
							- 의료법에 명시된 진료기록 보관 기준에 준하여 보관<br>
							<br>
							[홈페이지 상담정보]<br>
							- 수집목적 또는 제공받은 목적이 달성된 경우에도 상법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 귀하의 개인정보를 보유할 수 있습니다.<br>
							- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률) <br>
							- 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률) <br>
							- 본인 확인에 관한 기록 : 6개월 (정보통신망 이용촉진 및 정보보호 등에 관한 법률)<br>
							- 방문에 관한 기록 : 3개월 (통신비밀보호법)<br>
							<br>
							4. 개인정보의 파기절차 및 그 방법<br>
							병원은 『개인정보의 수집 및 이용목적』이 달성된 후에는 즉시 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br>
							<br>
							[파기절차]<br> 
							이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 파기방법에 의하여 즉시 파기합니다.<br>
							<br>
							[파기방법]<br> 
							전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br>
							종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.  <br>
							<br>
							5. 개인정보 제공 및 공유<br>
							병원은 귀하의 동의가 있거나 관련법령의 규정에 의한 경우를 제외하고는 어떠한 경우에도 『개인정보의 수집 및 이용목적』에서 고지한 범위를 넘어 귀하의 개인정보를 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다.<br>
							- 국민건강보험법에 의해 건강보험심사평가원에 요양급여비용 청구를 위한 진료기록 제출<br>
							- 통계작성ㆍ학술연구를 위하여 필요한 경우 특정 개인을 알아볼 수 없는 형태로 가공하여 제공<br>
							- 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우 제출 등<br>
							<br>
							6. 수집한 개인정보의 취급위탁<br>
							병원은 서비스 이행을 위해 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.<br>
							본원의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다.<br>
							<br>
							-수탁업체 : 나우디자인<br>
							-위탁업무내용 : 홈페이지관리 운영 및 유지보수<br>
							-위탁 개인정보 항목 : 홈페이지 내 고객 개인정보<br>
							-개인정보 보유 및 이용기간 : 위탁계약 종료 시까지<br>
							<br>
							7. 이용자 및 법정대리인의 권리와 그 행사방법<br>
							 만14세 미만 아동(이하 "아동"이라 함)의 회원가입은 아동이 이해하기 쉬운 평이한 표현으로 작성된 별도의 양식을 통해 이루어지고 있으며 개인정보 수집시 반드시 법정대리인의 동의를 구하고 있습니다.<br>
							 병원은 법정대리인의 동의를 받기 위하여 아동으로부터 법정대리인의 성명과 연락처 등 최소한의 정보를 수집하고 있으며, 개인정보취급방침에서 규정하고 있는 방법에 따라 법정대리인의 동의를 받고 있습니다.<br>
							 아동의 법정대리인은 아동의 개인정보에 대한 열람, 정정 및 삭제를 요청할 수 있습니다. 아동의 개인정보를 열람·정정, 삭제하고자 할 경우에는 회원정보수정을 클릭하여 법정대리인 확인 절차를 거치신 후 아동의 개인정보를 법정대리인이 직접 열람·정정, 삭제하거나, 개인정보보호책임자로 서면, 전화, 또는 Fax등으로 연락하시면 필요한 조치를 취합니다.<br>
							 병원은 아동에 관한 정보를 제3자에게 제공하거나 공유하지 않으며, 아동으로부터 수집한 개인정보에 대하여 법정대리인이 오류의 정정을 요구하는 경우 그 오류를 정정할 때까지 해당 개인정보의 이용 및 제공을 금지합니다.<br>
							 ※ 법에 의해 보관이 의무화된 개인정보는 요청이 있더라도 보관기간내에 수정·삭제할 수 없습니다.<br>
							<br>
							8. 동의철회 / 회원탈퇴 방법<br>
							귀하는 회원가입 시 개인정보의 수집ㆍ이용 및 제공에 대해 동의하신 내용을 언제든지 철회하실 수 있습니다.<br> 
							 회원탈퇴는 병원 홈페이지 마이페이지의 『회원탈퇴』를 클릭하여 본인 확인 절차를 거치신 후 직접 회원탈퇴를 하시거나, 개인정보관리책임자로 서면, 전화 또는 Fax 등으로 연락하시면 지체 없이 귀하의 개인정보를 파기하는 등 필요한 조치를 하겠습니다.<br>
							<br>
							9. 개인정보 자동 수집 장치의 설치/운영 및 그 거부에 관한 사항<br>
							<br>
							병원은 귀하의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)'를 운용합니다. 쿠키란 병원의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 병원은 다음과 같은 목적을 위해 쿠키를 사용합니다.<br>
							귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br>
							회원님께서 쿠키 설치를 거부하셨을 경우 일부 서비스 제공에 어려움이 있습니다.<br>
							<br>
							10. 개인정보관리책임자<br>
							귀하의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 병원은 아래와 같이 개인정보관리책임자를 두고 있습니다.<br>
							<br>
							[개인정보 관리책임자]<br> 
							이름 : 장현지<br>
							소속: 원마취통증의학과<br>
							직위 : 개인정보관리책임자<br>
							전화번호 : 053-269-7575<br>
							메일 : jmary@naver.com<br>
							<br>
							귀하께서는 병원의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자로 신고하실 수 있습니다. 병원은 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>
							<br>
							개인분쟁조정위원회 (http://www.1336.or.kr / 1336)<br> 
							대검찰청 사이버범죄수사단 (http://www.spo.go.kr / (02) 3480-3573)<br>
							경찰청 사이버테러대응센터 (http://www.ctrc.go.kr / (02) 392-0330)<br>
							<br>
							11. 개인정보의 안전성 확보조치<br>
							 병원은 이용자의 개인정보보호를 위한 기술적 대책으로서 여러 보안장치를 마련하고 있습니다. 이용자께서 보내시는 모든 정보는 방화벽장치에 의해 보호되는 보안시스템에 안전하게 보관/관리되고 있습니다.<br>
							 또한 병원은 이용자의 개인정보보호를 위한 관리적 대책으로서 이용자의 개인정보에 대한 접근 및 관리에 필요한 절차를 마련하고, 이용자의 개인정보를 취급하는 인원을 최소한으로 제한하여 지속적인 보안교육을 실시하고 있습니다. 또한 개인정보를 처리하는 시스템의 사용자를 지정하여 사용자 비밀번호를 부여하고 이를 정기적으로 갱신하겠습니다.<br> 
							<br>
							12. 정책 변경에 따른 공지의무<br> 
							 이 개인정보취급방침은 2018년 7월 6일에 제정되었으며 법령ㆍ정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 변경되는 개인정보취급방침을 시행하기 최소 7일전에 병원 홈페이지를 통해 변경이유 및 내용 등을 공지하도록 하겠습니다.<br>
							<br>
							공고일자 : 2018년 8월 1일<br>
							시행일자 : 2018년 8월 5일 <br>
						</div>
					</div>
					<div class="privateAgreeBtn">
							<label><input type="checkbox"> 개인정보제공에 동의합니다.</label>
						</div>
					<div class="tblWrap">
						<table>
							<tr>
								<th>제목</th>
								<td><input type="text" name="title"></td>
							</tr>
							<tr>
								<th>정보</th>
								<td>
									<input type="text" name="writer" placeholder="작성자">
									<input type="text" name="phone" value="" placeholder="연락처" onKeyup="inputPhoneNumber(this);" maxlength="13" autocomplete="off">
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
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td> 
									<textarea></textarea>
								</td>
							</tr>
						</table>
						<div class="btnWrap">
							<p>문의등록</p>
							<p><a href="${pageContext.request.contextPath}/mMenu01_08">뒤로가기</a></p>
						</div>
					</div><!-- tblWrap end -->
				</div><!-- content end -->
			</div><!-- contentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/mFooter.jsp"></jsp:include>
		</div>
	</div><!-- allWrap end -->
</body>
</html>