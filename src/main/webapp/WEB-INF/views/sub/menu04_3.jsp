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
	height: 750px;
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
.leftMenu > ul > li:nth-child(3) > a{
	font-weight: bold;
}


.contentWrap{
	width: 820px;
	height: 750px;
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
.searchWrap{
	width: 100%;
	text-align: right;
	margin-bottom: 13px;
}
.searchWrap > select{
	
	font-size: 15px;
	padding: 2px 3px;
	letter-spacing: 1px;
}
.searchWrap > input{
	
	width: 200px;
	padding: 2px 4px;
	font-size: 15px;
}
.searchWrap > p{
	display: inline-block;
	width: 55px;
	font-size: 15px;
	text-align: center;
	letter-spacing: 1.5px;
	color: #fff;
	background: #4a7899;
	padding: 4px;
	cursor: pointer;
}
.tblWrap{
	width: 100%;
}
.tblWrap > table{
	width: 100%;
	border-top: 8px solid #417ca6; 
}
.tblWrap > table tr{
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr > th{
	color: #fff;
	font-size: 17px;
	text-align: center;
	background: #91b0c4;
	padding: 6px 0;
}
.tblWrap > table tr > th:nth-child(1){
	width: 50px;
}
.tblWrap > table tr > th:nth-child(2){
	width: 411px;
}
.tblWrap > table tr > th:nth-child(3){
	width: 70px;
}
.tblWrap > table tr > th:nth-child(4){
	width: 70px;
}
.tblWrap > table tr > th:nth-child(5){
	width: 90px;
}
.tblWrap > table tr > td{
	font-size: 15px;
	text-align: center;
	padding: 7px 0;
}
.tblWrap > table tr > td:nth-child(2){
	text-align: left;
	padding: 7px 10px;
}
.tblWrap > table tr > td > p{
	font-size: 15px;
	text-align: center;
	color: #fff;
	padding: 3px 0;
	border-radius: 5px;
}
.tblWrap > table tr > td > .reply_o{
	background: #3e7395;
}
.tblWrap > table tr > td > .reply_x{
	background: #fe5003;
}
.registerBtn{
	width: 100%;
	overflow: hidden;
	margin-top: 20px;
}
.registerBtn > p{
	width: 70px;
	float: right;
	background: #3e7395;
	padding: 5px;
	text-align: center;
}
.registerBtn > p > a{
	width: 100%;
	display: inline-block;
	color: #fff;
	font-size: 15px;
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
				<img src="${pageContext.request.contextPath}/resources/images/menu04top.png">
			</div> 
			<div class="sectionContent">
				<div class="leftMenu">
					<div class="line"></div>
					<h2 style="margin-bottom: 20px;">03</h2>
					<h2>상담문의</h2>
					<div class="line"></div> 
					<ul>
						<li><a href="${pageContext.request.contextPath}/menu04_01">01. 공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_02">02. 언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_03">03. 상담문의</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_04">04. 치료후기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_05">05. 비용공지</a></li>
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
						<%-- <img class="fix_img" src="${pageContext.request.contextPath}/resources/images/fix_img.jpg"> --%>
						<div class="searchWrap">
							<select>
								<option>선 택</option>
								<option>제 목</option>
								<option>번 호</option>
								<option>작성자</option>
							</select>
							<input type="text" name="">
							<p>검색</p>
						</div>
						<div class="tblWrap">
							<table>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>상태</th>
									<th>작성자</th>
									<th>등록일</th>
								</tr>
								<tr>
									<td>4553</td>
									<td><a href="${pageContext.request.contextPath}/menu04_03Read"><img style="width:15px;" src="${pageContext.request.contextPath}/resources/images/lock1.png">원마취통증의학과공지사항 테스트 입니다. 오픈을 축하합니다.</a></td>
									<td><p class="reply_o">답변완료</p></td>
									<td>홍길동</td>
									<td>2018-12-31</td>
								</tr>
								<tr>
									<td>4552</td>
									<td><a href="${pageContext.request.contextPath}/menu04_03Read"><img style="width:15px;" src="${pageContext.request.contextPath}/resources/images/lock1.png">원마취통증의학과공지사항 테스트 입니다. 오픈을 축하합니다.</a></td>
									<td><p class="reply_o">답변완료</p></td>
									<td>이순신</td>
									<td>2018-12-31</td>
								</tr>
								<tr>
									<td>4551</td>
									<td><a href="${pageContext.request.contextPath}/menu04_03Read"><img style="width:15px;" src="${pageContext.request.contextPath}/resources/images/lock1.png">원마취통증의학과공지사항 테스트 입니다. 오픈을 축하합니다.</a></td>
									<td><p class="reply_x">답변대기</p></td>
									<td>장보고</td>
									<td>2018-12-31</td>
								</tr>
							</table>
							<div class="registerBtn">
								<p><a href="${pageContext.request.contextPath}/menu04_03Register">글쓰기</a></p>
							</div>
							<div class="pageWrap">
							
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