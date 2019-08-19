<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원마취통증의학과 관리자 모드</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap{
	width: 100%;
	height: 100%;
	overflow: hidden;
	background: #fff;
}
.contentWrap{
	width:100%;
	min-width:1280px;
	min-height: 100%;
	margin:0 auto;
	overflow: hidden;
	position: relative;
}
.leftMenu{
	width: 250px;
	height: 1080px;
	position: absolute;
	left: 0;
	padding: 25px 0;
	text-align: center;
	background: #3a4652;
}
.leftMenu > h2{
	width: 100%;
	text-align: center;
	padding-bottom: 25px;
	margin-bottom: 30px;
	border-bottom: 1px solid lightgray;
}
.leftMenu > h2 > a{
	color: #fff;
	font-weight: bold;
}
.leftMenu > ul{
	width: 100%;
	text-align: left;
}
.leftMenu > ul > li{
	
}
.leftMenu > ul > li > p{
	padding: 10px 0;
	padding-left: 15px;
}
.leftMenu > ul > li > p > a{
	font-size:20px;
	color: #cccccc;
}
.leftMenu > ul > li:nth-child(1) > p > a{
	color: #ffffff;
}
.leftMenu > ul > li > .subMenu{
	display: none;
	width: 100%;
	background: #56626f;
	padding-left: 25px;
}
.subMenu > ul{
	width: 100%;
}
.subMenu > ul > li{
	width: 100%;
	padding: 10px 5px;
}
.subMenu > ul > li > a{
	color: #cccccc;
	font-size: 17px;
}
.centerMenu{
	width: 100%;
	min-width: 900px;
	padding-left: 270px;
	padding-right: 30px;
}
.boardTitle{
	width:100%;
	font-size:20px;
	margin-top:33px;
	overflow: hidden;
}
.boardTitle > span{
	font-size: 12px;
	font-weight: 300;
	color: gray;
	float: right;
	vertical-align: bottom;
}

/* readNotice */
.notice_content{
	width:100%;
	margin:10px auto;
	padding:60px 20px;
	background: white;
}
.notice_content hr{
	width:100%;
	margin:0 auto;
	border:0;
	border-top:2px solid gray;
}
.notice_content .nTitle{
	font-size:20px;
	text-align: left;
	font-weight: bold;
	padding:15px;
}
.notice_content .nRegdate{
	width:100%;
	text-align:left;
	border-top:1px solid lightgray;
	border-bottom:1px solid lightgray;
	padding:10px 0;	
	margin-bottom:50px;
}
.notice_content .nRegdate span{
	margin-left:15px;
	font-size: 15px;
}
.notice_content .nContent{
	margin-bottom:50px;
	padding:0 15px;
}
.btnDiv{
	text-align: right;
	margin-top:20px;
}
.btnDiv > a > button{
	border: 0;
    background: #3a4652;
    color: #fff;
    border-radius: 3px;
    font-size: 15px;
    padding: 5px 10px;
}
</style>
</head>
<body>
	<div class="allWrap">
		<jsp:include page="include/header.jsp"/>
		<div class="contentWrap">
			<div class="leftMenu">
				<ul>
					<li>
						<p><a href="${pageContext.request.contextPath}/admin/adminNotice" style="font-weight:bold;">게시판</a></p>
						<div class="subMenu">
							<ul> 
								<li><a href="${pageContext.request.contextPath}/admin/adminNotice">- 공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminNews" style="font-weight:bold;color:#fff;">- 언론보도</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminAdvice">- 상담문의</a></li>
							</ul>
						</div>
					</li>
					<li>
						<p><a href="${pageContext.request.contextPath}/admin/adminStatistic" title="통계" id="statistics">통 계</a></p>
						<div class="subMenu">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/adminStatistic" id="statisticsDate">- 날짜별 방문 통계</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div><!-- leftMenu end -->
			<div class="centerMenu">
				<h1 class="boardTitle">■ 언론보도<span>Home > 게시판 > 언론보도</span></h1>
				<div class="notice_content">
					<hr>
					<p class="nTitle">제목: ${item.title}</p>
					<p class="nRegdate"><span>작성일: ${item.regdate}</span></p>
					<div class="nContent">
						${item.content}
					</div>
					<hr>
					<p class="btnDiv">
						<a href="${pageContext.request.contextPath}/admin/adminNews${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록</button></a>
						<a href="${pageContext.request.contextPath}/admin/adminNewsUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a>
						<a href="${pageContext.request.contextPath}/admin/adminNewsDelete${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>삭제</button></a>
					</p>
				</div><!-- notice_content end -->
			</div><!-- centerMenu end -->
		</div><!-- contentWrap end -->
	</div><!-- allWrap end -->
</body>
</html>