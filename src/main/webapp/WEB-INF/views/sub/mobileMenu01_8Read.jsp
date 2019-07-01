<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap{
	width:100%;
	background: #f2f6f8;
	position: relative;
	padding-top: 131px;
}
.headerWrap{
	width:100%;
	height: 132px;
	position: fixed;
	top:0;
	z-index: 99;
}
.header_top{
	width: 100%;
	height: 20px;
	background: #276f90;
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
}
.contentTitle{
	width: 99%;
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
	width: 30px;
	height: 3px;
	background: #6e6e6e;
	margin-bottom: 5px;
}
.contentTitle > .tText > p{
	font-size: 18px;
	font-weight: bold;
	color: #6e6e6e;
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
	font-size: 14px;
	text-align: center;
	background: #417ca6;
	padding: 5px 0;
	letter-spacing: 1px;
	border-top: 1px solid #417ca6;
	border-bottom: 1px solid #417ca6;
	
}
.tblWrap > table tr > td{
	font-size: 14px;
	text-align: center;
	padding: 5px 10px;
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
	padding: 20px 10px;
	border-bottom: 2px solid lightgray;
	font-size: 14px;
}
.replyWrap{
	width: 100%;
	margin-top: 20px;
}
.replyWrap > table{
	width: 100%;
	border-top: 1px solid #91b0c4;
	border-bottom: 1px solid #91b0c4;
}
.replyWrap > table tr > th{
	width: 58px;
	padding: 10px 0;
	background: #91b0c4;
	color: #fff;
	font-size: 14px;
}
.replyWrap > table tr > td{
	padding: 5px;
	font-size: 14px;
}
.replyWrap > table tr > td > p{
	font-size: 15px;
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
			<jsp:include page="../include/mHeader.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01top.jpg">
			</div> 
			<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>상담문의</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="tblWrap">
							<table>
								<tr>
									<th>제목</th>
									<td colspan="5">
										<c:if test="${item.pwtype eq 'o'}">
											<img style="width:15px;" src="${pageContext.request.contextPath}/resources/images/lock1.png">
										</c:if>
										${item.title}
									</td>
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
							<div class="replyWrap">
								<table>
									<tr>
										<th>답변</th>
										<td>
											<c:choose>
												<c:when test="${item.reply eq ''}">
													<p>답변대기 중 입니다. 빠른 시일 내 문의하신 내용에 대한 답변을 드리겠습니다.</p> 
												</c:when>
												<c:otherwise>
													${item.reply}
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</table>
							</div>
							<p class="backBtn"><a href="${pageContext.request.contextPath}/mMenu01_08">목 록</a></p>
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