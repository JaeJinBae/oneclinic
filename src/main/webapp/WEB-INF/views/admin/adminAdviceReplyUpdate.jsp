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
	overflow: scroll;
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
	font-size:22px;
	color: #eeeeee;
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
	color: #eeeeee;
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
}

/* readNotice */
.notice_content{
	width:100%;
	margin: 10px auto;
	padding: 20px;
	background: white;
}
.notice_content > h2{
	font-size:20px;
	font-weight: bold;
	margin-left:15px;
	margin-bottom:15px;
}
.notice_content hr{
	width:100%;
	margin:0 auto;
	border:0;
	border-top:2px solid gray;
}
.notice_content .nTitle{
    font-size: 20px;
    text-align: left;
    font-weight: bold;
    padding: 15px;
}
.notice_content .nRegdate{
	width:100%;
	text-align:left;
	border-top:1px solid lightgray;
	border-bottom:1px solid lightgray;
	padding: 10px 0;	
}
.notice_content .nRegdate span{
	margin-left:15px;
	font-size: 15px;
}
.notice_content .nContent{
	padding: 20px 15px;
	max-height: 200px;
	overflow: scroll;
	overflow-x: hidden;
	width: 100%;
	height:150px;
	resize: none;
	border: 0;
}
.notice_content > .btnWrap{
	text-align: center;
	margin-top:30px;
}
/* 글쓰기 */
#form1{
	width:100%; 
	padding: 0px 20px;
	background: white;
	margin-bottom:10px;
}
#container{
	width: 100%;
	text-align: center;
}
#container > h2{
	font-size: 20px;
	text-align: left;
    font-weight: bold;
    margin-left: 15px;
    margin-bottom: 15px;
}
#container > p{
	width: 100%;
	padding: 10px 15px;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;
	text-align: left;
	font-size: 15px;
}
#container > p > input{
	font-size: 15px;
}
#container > textarea{
	width: 98%;
	height: 200px;
	resize: none;
	padding: 7px 5px;
	font-size: 14px;
}

.btn{
	width:300px;
	height:40px;
	font-size: 1.2em;
	margin:0 auto;
	margin-top:40px;
	margin-bottom:50px;
	text-align: center;
}
.btn > input{
	border: 0;
    background: #3a4652;
    color: #fff;
    border-radius: 3px;
    font-size: 15px;
    border-radius: 3px;
    padding: 5px 10px;
    vertical-align: middle;
}
.btn > a > button{
	border: 0;
    background: #3a4652;
    color: #fff;
    font-size: 15px;
    border-radius: 3px;
    padding: 5px 10px;
}
.btnWrap > a > button{
	border: 0;
    background: #3a4652;
    color: #fff;
    font-size: 15px;
    border-radius: 3px;
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
								<li><a href="${pageContext.request.contextPath}/admin/adminNotice" style="font-weight:bold;">- 공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminNews">- 언론보도</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminAdvice">- 상담문의</a></li>
							</ul>
						</div>
					</li>
					<li>
						<p><a href="statistics" title="통계" id="statistics">통 계</a></p>
						<div class="subMenu">
							<ul> 
								<li> <a href="#" id="statisticsDate" style="font-weight:bold;"> 날짜별 방문 통계</a></li>
								<li> <a href="#" id="goBrowser"> 브라우저 통계</a></li>
								<li> <a href="#" id="goOs"> OS 통계</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div><!-- leftMenu end -->
			<div class="centerMenu">
				<h1 class="boardTitle">■ 상담문의</h1>
				<div class="notice_content">
					<h2>게시글</h2>
					<hr>
					<p class="nTitle">제목: ${item.title}</p>
					<p class="nRegdate">
						<span>작성자: ${item.writer}</span>
						<span>연락처: ${item.phone}</span>
						<span>답변: 
							<c:choose>
								<c:when test="${item.replytype eq 'sms'}">
									문자
								</c:when>
								<c:when test="${item.replytype eq 'call'}">
									전화
								</c:when>
								<c:when test="${item.replytype eq 'all'}">
									상관없음
								</c:when>
							</c:choose>
						</span>
						<span></span>
						<span>작성일: ${item.regdate}</span>
						
						<span>조회수: ${item.cnt}</span>
					</p>
					<div class="nContent">${item.content}</div>
					<hr>
					<p class="btnWrap">
						<a href="${pageContext.request.contextPath}/admin/adminAdvice${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록</button></a>
						<%-- <a href="${pageContext.request.contextPath}/admin/adminAdviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a> --%>
						<a href="${pageContext.request.contextPath}/admin/adminAdviceDelete${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>삭제</button></a>
					</p>
				</div><!-- notice_content end -->
					<form id="form1" method="post" action="adminAdviceReplyRegister">
						<input type="hidden" name="no" value="${item.no}">
						<div id="container">
							<h2>답변</h2>
							<p>작성자: <input type="text" name="replyer" value="관리자"></p>
							<br> 
							<input type="hidden" name="no" value="${item.no}">
							<textarea id="editor1" name="reply">${item.reply}</textarea>
							<div class="btn">
								<input type="submit" value="저장">
								<a href="${pageContext.request.contextPath}/admin/adminAdvice"><button type="button">뒤로가기</button></a>
							</div>
						</div>
					</form>
			</div><!-- centerMenu end -->
		</div>
	</div>
</body>
</html>