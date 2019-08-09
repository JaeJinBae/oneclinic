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
	*{ 
		margin:0;
		padding:0;
	}
	a{
		display:inline-block;
		color:black;
		text-decoration: none;
	}
	#headerDiv #headerMenu #boardCtr{
		background: white;
		color:black;
	}
	.contentWrap{
		width:100%;
		min-width:1280px;
		margin:0 auto;
		padding:20px;
		background: lightgray;
		overflow: hidden;
	}
	.contentWrap .leftMenu{
		width:250px; 
		margin-right:20px;
		padding-top:15px;
		padding-bottom:15px;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:white;;
	}
	.contentWrap .leftMenu h2{
		width:220px;
		margin:0 auto;
		margin-bottom:15px;
		background: url('${pageContext.request.contextPath}/resources/images/arrow2.gif') no-repeat 10px center;
		font-size:26px;
		font-weight:bold;
	}
	.contentWrap .leftMenu ul{
		width:80%;
		margin-left:40px;
		text-align: left;
	}
	.contentWrap .leftMenu ul li{
		list-style:none;
		margin-bottom:10px;
	}
	.contentWrap .leftMenu ul li:before{
		content:">";
	}
	.contentWrap .leftMenu ul li a{
		font-size:17px;
	}
	.contentWrap .leftMenu ul li:last-child a{
		font-weight:bold;
	}
	.contentWrap .centerMenu{
		width:70%;
		min-width:700px;
		border-radius:10px;
		float:left;
		background:white;
	}
	.boardTitle{
		width:90%;
		max-width:860px;
		margin:0 auto;
		font-size:20px;
		margin-top:33px;
	}
	
	/* readNotice */
	.notice_content{
		width:90%;
		margin:10px auto;
		padding:15px 20px;
		padding-bottom:30px;
		background: white;
	}
	.notice_content > h2{
		font-size:25px;
		margin-left:15px;
		margin-bottom:15px;
	}
	.notice_content hr{
		width:100%;
		margin:0 auto;
		border:0;
		border-top:2px solid #5c4530;
	}
	.notice_content .nTitle{
		font-size:25px;
		text-align: left;
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
	}
	.notice_content .nContent{
		margin-bottom:50px;
		padding:0 15px;
	}
	.notice_content > .btnWrap{
		text-align: center;
		margin-top:30px;
	}
	/* 글쓰기 */
	#form1{
		width:90%;
		margin:0 auto; 
		padding:30px 20px;
		background: white;
		margin-bottom:10px;
	}
	#container{
		width:95%;
		margin:0 auto;
		text-align: center;
	}
	#container>h2{
		font-size:30px;
		margin-bottom:30px;
		margin-top:20px;
		text-align: left;
	}
	#container > p{
		width: 100%;
		padding: 10px 15px;
		border-top: 1px solid lightgray;
		border-bottom: 1px solid lightgray;
		text-align: left;
	}
	#container > textarea{
		width: 97%;
		height: 200px;
		resize: none;
		padding: 7px 5px;
	}
	
	.btn{
		width:300px;
		height:40px;
		font-size: 1.2em;
		margin:0 auto;
		margin-top:30px;
		margin-bottom:50px;
		text-align: center;
	}
	.btn > a > button{
		border: 0;
	    background: #5c4530;
	    color: #fff;
	    border-radius: 3px;
	    width: 35px;
	    height:23px;
	}
	.btn > input{
		border: 0;
	    background: #5c4530;
	    color: #fff;
	    border-radius: 3px;
	    width: 35px;
	    height:23px;
	}
	.btnWrap > a > button{
		border: 0;
	    background: #5c4530;
	    color: #fff;
	    border-radius: 3px;
	    width: 35px;
	    height:23px;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>게시판 리스트</h2>
			<ul> 
				<li> <a href="${pageContext.request.contextPath}/admin/adminNotice"> 공지사항</a></li>
				<li> <a href="${pageContext.request.contextPath}/admin/adminNews"> 언론보도</a></li>
				<li> <a href="${pageContext.request.contextPath}/admin/adminAdvice"> 진료/비용 상담</a></li>
			</ul>
		</div>
		<div class="centerMenu">
			<h1 class="boardTitle">&lt;진료/비용상담 관리&gt;</h1>
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
				<div class="nContent">
					${item.content}
				</div>
				<hr>
				<p class="btnWrap">
					<a href="${pageContext.request.contextPath}/admin/adminAdvice${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록</button></a>
					<a href="${pageContext.request.contextPath}/admin/adminAdviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a>
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
</body>
</html>