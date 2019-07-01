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
	min-height: 750px;
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
.leftMenu > ul > li:nth-child(8) > a{
	font-weight: bold;
}


.contentWrap{
	width: 820px;
	min-height: 750px;
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
function adviceRegister(vo){
	console.log(vo);
	$.ajax({
		url:"${pageContext.request.contextPath}/adviceRegister",
		type:"post",
		dataType:"text",
		data:vo,
		async:false,
		success:function(json){
			if(json == "ok"){
				alert("상담문의 등록이 완료되었습니다.");
				location.href="${pageContext.request.contextPath}/menu01_08";
			}else{
				alert("문의글 등록이 정상적으로 등록되지 않았습니다. 새로고침(F5) 후 다시 이용하세요.");
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
		var title = $(".tblWrap > table tr > td > input[name='title']").val();
		var writer = $(".tblWrap > table tr > td > input[name='writer']").val();
		var pw = $(".tblWrap > table tr > td > input[name='pw']").val();
		var pwtype = $(".tblWrap > table tr > td > label > input[name='pwtype']:checked").val();
		var content = $(".tblWrap > table tr > td > textarea").val();
		var ndate = new Date();
		var year = ndate.getFullYear();
		var month = ndate.getMonth();
		var date = ndate.getDate();
		var regdate = year+"-"+((month>9?'':"0")+month)+"-"+((date>9?'':"0")+date);
		
		if(title == ""){
			alert("제목을 입력해 주세요.");
			return false;
		}
		if(writer == ""){
			alert("작성자를 입력해 주세요.");
			return false;
		}
		if(pwtype == "o"){
			if(pw == ""){
				alert("비공개 선택시 비밀번호를 입력해주세요.");
				return false;
			}
		}
		var vo = {no:0, title:title, content:content, writer:writer, regdate:regdate, cnt:0, pwtype:pwtype, pw:pw, reply:""};
		adviceRegister(vo);
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
				<div class="leftMenu">
					<div class="line"></div>
					<h2 style="margin-bottom: 20px;">08</h2>
					<h2>상담문의</h2>
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
				</div><!-- leftMenu end -->
				<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>상담문의</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo2.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="tblWrap">
							<table>
								<tr>
									<th>제목</th>
									<td colspan="5"><input type="text" name="title"></td>
								</tr>
								<tr>
									<th>작성자</th>
									<td><input type="text" name="writer"></td>
									<th>공개</th>
									<td>
										<label><input type="radio" name="pwtype" value="x">공개</label>
										<label><input type="radio" name="pwtype" value="o" checked>비공개</label>
									</td>
									<th>비밀번호</th>
									<td><input type="text" name="pw"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="5">
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