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
.contentTitle > table tr:nth-child(2) > td:nth-child(4){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 20px;
	letter-spacing: 1px;
}
.contentTitle > table tr:nth-child(2) > td:nth-child(4) > a{
	color: #fff;
	font-weight: bold;
}

.content{
	width: 100%;
	padding: 0 38px;
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
	text-align: center;
	padding: 7px 10px;
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
.tblWrap > table tr > td > input{
	width: 100%;
	font-size: 15px;
	vertical-align: middle;
	padding: 2px 5px;
}
.tblWrap > table tr > td > label > input{
	vertical-align: middle;
}
.tblWrap > table tr > td > label:nth-child(2) > input{
	margin-left:5px;
}
.tblWrap > table tr > td > select{
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
	margin-top: 30px;
}
.btnWrap > p{
	display: inline-block;
	text-align: center;
	font-size: 17px;
	color: #fff;
	padding: 10px 15px;;
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
				location.href="${pageContext.request.contextPath}/menu01_08";
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
	
	$(".btnWrap > p:nth-child(1)").click(function(){
		var title = $(".tblWrap > table tr:nth-child(1) > td > input[name='title']").val();
		var name = $(".tblWrap > table tr:nth-child(2) > td > input[name='writer']").val();
		var phone = $(".tblWrap > table tr:nth-child(2) > td > input[name='phone']").val();
		var replyType = $(".tblWrap > table tr:nth-child(2) > td > select[name='replyType']").val();
		var replyTime = $(".tblWrap > table tr:nth-child(2) > td > input[name='replyTime']").val();
		var pwType = $(".tblWrap > table tr:nth-child(2) > td > select[name='pwType']").val();
		var pw = $(".tblWrap > table tr:nth-child(2) > td > input[name='pw']").val();
		var content = $(".tblWrap > table tr:nth-child(3) > td > textarea[name='content']").val();
		
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
			<jsp:include page="../include/pcHeader.jsp"></jsp:include>
		</div> 
		<div class="mg_top_135"></div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/menu01top.jpg">
			</div> 
			<div class="sectionContent">
				<jsp:include page="../include/quickMenu.jsp"></jsp:include>
				<div class="contentWrap">
					<div class="contentTitle">
						<table>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu01_01">의료진소개</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_02">직원소개</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_03">병원둘러보기</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_04">오시는길</a></td>
							</tr>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu01_05">공지사항</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_06">언론보도</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_07">비급여</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_08">상담문의</a></td>
							</tr>
						</table>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="tblWrap">
							<table>
								<tr>
									<th>제목</th>
									<td colspan="6"><input type="text" name="title"></td>
								</tr>
								<tr>
									<th>정보</th>
									<td><input type="text" name="writer" placeholder="작성자"></td>
									<td><input type="text" name="phone" value="" placeholder="연락처" onKeyup="inputPhoneNumber(this);" maxlength="13" autocomplete="off"></td>
									<td>
										<select name="pwType">
											<option value="n">공개여부</option>
											<option value="x">공개</option>
											<option value="o">비공개</option>
										</select>
									</td>
									<td>
										<input type="password" name="pw" placeholder="비밀번호" autocomplete="off">
									</td>
									<td>
										<select name="replyType">
											<option value="n">답변방법</option>
											<option value="sms">문자</option>
											<option value="call">전화</option>
											<option value="all">상관없음</option>
										</select>
									</td>
									<td>
										<input type="text" name="replyTime" value="" placeholder="연락가능 시간" autocomplete="off">
									</td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="6"> 
										<textarea></textarea>
									</td>
								</tr>
							</table>
							<div class="btnWrap">
								<p>문의등록</p>
								<p><a href="${pageContext.request.contextPath}/menu01_08">뒤로가기</a></p>
							</div>
						</div><!-- tblWrap end -->
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