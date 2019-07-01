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
.leftMenu > ul > li:nth-child(1) > a{
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
.tblWrap > table tr:nth-child(1) > td{
	text-align: left;
	font-weight: bold;
}
.tblContent{
	width: 100%;
	padding: 30px 10px;
	border-bottom: 2px solid lightgray;
}
.prevNextBtn{
	width: 100%;
	margin: 15px 0;
}
.prevNextBtn > table{
	width: 100%;
}
.prevNextBtn > table tr > th{
	width: 70px;
	padding: 6px;
	font-size: 15px;
	color: #fff;
	letter-spacing: 1px;
	background: #91b0c4;
	border-top: 1px solid #91b0c4;
	border-bottom: 1px solid #91b0c4;
}
.prevNextBtn > table tr:nth-child(1) > th{
	border-bottom: 1px solid lightgray;
}
.prevNextBtn > table tr > td{
	padding: 6px 15px;
	font-size: 15px;
	border-top: 1px solid #91b0c4;
	border-bottom: 1px solid #91b0c4;
}


.backBtn{
	width:60px;
	padding: 5px 10px;
	margin: 15px 0;
	text-align: center;
	background: #91b0c4;
}
.backBtn > a{
	font-size: 15px;
	color: #fff;
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
				<img src="${pageContext.request.contextPath}/resources/images/menu04top.jpg">
			</div> 
			<div class="sectionContent">
				<div class="leftMenu">
					<div class="line"></div>
					<h2 style="margin-bottom: 20px;">01</h2>
					<h2>공지사항</h2>
					<div class="line"></div> 
					<ul>
						<li><a href="${pageContext.request.contextPath}/menu01_01">01. 의료진소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_02">02. 직원소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_03">03. 병원둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_04">04. 오시는 길</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_05">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_06">언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_07">비용공지</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_08">상담문의</a></li>
					</ul>
				</div><!-- leftMenu end -->
				<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>공지사항</p> 
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
									<td colspan="5">${item.title}</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td>${item.writer}</td>
									<th>등록일</th>
									<td>${item.regdate}</td>
									<th>조회</th>
									<td>${item.cnt}</td>
								</tr>
							</table>
							<div class="tblContent">
								${item.content}
							</div>
							<div class="prevNextBtn">
								<table>
									<tr>
										<th>이전글</th>
										<td>
											<c:choose>
												<c:when test="${beforeItem.no eq null}">
													존재하지 않습니다.
												</c:when>
												<c:otherwise>
													<a href="${pageContext.request.contextPath}/menu04_01Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${beforeItem.no}">${beforeItem.title}</a>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
									<tr>
										<th>다음글</th>
										<td>
											<c:choose>
												<c:when test="${afterItem.no eq null}">
													존재하지 않습니다.
												</c:when>
												<c:otherwise>
													<a href="${pageContext.request.contextPath}/menu04_01Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${afterItem.no}">${afterItem.title}</a>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</table>
							</div><!-- prevNextBtn -->
							<p class="backBtn"><a href="${pageContext.request.contextPath}/menu04_01">목 록</a></p>
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