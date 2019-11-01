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
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-148485495-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-148485495-1');
</script>

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
	margin-bottom: 100px;
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
.contentTitle > table tr:nth-child(2) > td:nth-child(1){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 20px;
	letter-spacing: 1px;
}
.contentTitle > table tr:nth-child(2) > td:nth-child(1) > a{
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
								<td><a href="${pageContext.request.contextPath}/menu01_02">치료사소개</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_03">병원둘러보기</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_04">오시는길</a></td>
							</tr>
							<tr>
								<td><a href="${pageContext.request.contextPath}/menu01_05">공지사항</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_06">언론보도</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_07">비급여항목</a></td>
								<td><a href="${pageContext.request.contextPath}/menu01_08">상담문의</a></td>
							</tr>
						</table>
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
													<a href="${pageContext.request.contextPath}/menu01_05Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${beforeItem.no}">${beforeItem.title}</a>
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
													<a href="${pageContext.request.contextPath}/menu01_05Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${afterItem.no}">${afterItem.title}</a>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</table>
							</div><!-- prevNextBtn -->
							<p class="backBtn"><a href="${pageContext.request.contextPath}/menu01_05">목 록</a></p>
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