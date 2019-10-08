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
	height: 1280px;
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
	font-size: 15px;
	width: 100%;
	height:150px;
	resize: none;
	border: 0;
}
.notice_content > .btnWrap{
	text-align: center;
	margin-top:15px;
}
/* 글쓰기 */
#form1{
	width:100%; 
	padding: 0px 20px;
	background: white;
	margin-bottom:10px;
}
.container{
	width: 100%;
	text-align: center;
}
.container > h2{
	font-size: 20px;
	text-align: left;
    font-weight: bold;
    margin-left: 15px;
    margin-bottom: 15px;
}
.container > p{
	width: 100%;
    text-align: left;
    border-top: 1px solid lightgray;
    border-bottom: 1px solid lightgray;
    padding: 10px 0;
    font-size: 15px;
    padding-left: 15px;
}
.container > p > input{
	font-size: 15px;
}
.container > textarea{
	width: 98%;
	height: 160px;
	resize: none;
	padding: 7px 5px;
	font-size: 14px;
	margin: 15px 0;
}
.container > hr{
	width:100%;
	margin:0 auto;
	border:0;
	border-top:2px solid gray;
}
.btn{
	width:300px;
	height:40px;
	font-size: 1.2em;
	margin:0 auto;
	margin-top:15px;
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
.btn > p > button{
	border: 0;
    background: #3a4652;
    color: #fff;
    font-size: 15px;
    border-radius: 3px;
    padding: 5px 10px;
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
<script>
function sendSms(info){
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/adminAdviceSendSms",
		type: "post",
		data:JSON.stringify(info),
		async:false,
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		success:function(json){
			if(json == "ok"){
				alert("문자전송이 완료되었습니다.");
			}else{
				console.log(json);
				alert("문자전송이 실패했습니다. 새로고침(F5) 후 다시 이용하세요.\n계속 실패 하는 경우 관리자에게 문의하세요.");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function sendSmsReply(info){
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/adminAdviceSendSmsReply",
		type: "post",
		data:JSON.stringify(info),
		async:false,
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		success:function(json){
			if(json == "ok"){
				alert("댓글 저장 및 문자 전송이 완료되었습니다.");
				var nowUrl = window.location.href;
				var urlArr = nowUrl.split("?");
				location.href="${pageContext.request.contextPath}/admin/adminAdviceRead?"+urlArr[1];
			}else{
				console.log(json);
				alert("문자전송이 실패했습니다. 새로고침(F5) 후 다시 이용하세요.\n계속 실패 하는 경우 관리자에게 문의하세요.");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

$(function(){
	$("#sendSmsBtn").click(function(){
		var phone = $(".smsWrap > input[name='phone']").val();
		var cont = $(".smsWrap > #smsContent").val();
		if(cont == ""){
			alert("내용이 없습니다.");
			return false;
		}
		var info = {phone:phone, content:cont};
		sendSms(info);
	});
	
	$("#sendSmsReplyBtn").click(function(){
		var no = $("input[name='no']").val();
		var phone = $(".smsWrap > input[name='phone']").val();
		var cont = $(".smsWrap > #smsContent").val();
		if(cont == ""){
			alert("내용이 없습니다.");
			return false;
		}
		var info = {no:no, phone:phone, content:cont};
		sendSmsReply(info);
	});
});
</script>
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
								<li><a href="${pageContext.request.contextPath}/admin/adminNews">- 언론보도</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminAdvice" style="font-weight:bold;color:#fff;">- 상담문의</a></li>
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
				<h1 class="boardTitle">■ 상담문의<span>Home > 게시판 > 상담문의</span></h1>
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
				<c:choose>
					<c:when test="${item.reply eq ''}">
						<div class="container smsWrap">
							<h2>문자답변</h2>
							<hr>
							<input type="hidden" name="phone" value="${item.phone}">
							<textarea id="smsContent" name="reply"></textarea>
							<hr>
							<div class="btn">
								<p><button id="sendSmsBtn" type="button">문자전송</button>&nbsp;&nbsp;<button id="sendSmsReplyBtn" type="button">문자&댓글 저장</button></p>
							</div>
						</div>
						<form id="form1" method="post" action="adminAdviceReplyRegister">
							<input type="hidden" name="no" value="${item.no}">
							<div class="container">
								<h2>댓글답변</h2>
								<hr>
								<p>작성자: <input type="text" name="replyer" value="관리자"></p>
								<input type="hidden" name="no" value="${item.no}">
								<textarea id="editor1" name="reply"></textarea>
								<hr>
								<div class="btn">
									<input type="submit" value="저장">
									<a href="${pageContext.request.contextPath}/admin/adminAdvice"><button type="button">뒤로가기</button></a>
								</div>
							</div>
						</form>
					</c:when>
					<c:otherwise>
						<div class="notice_content">
							<h2>답변</h2>
							<hr>
							<textarea class="nContent" readonly>${item.reply}</textarea>
							<hr>
							<p class="btnWrap">
								<a href="${pageContext.request.contextPath}/admin/adminAdvice${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록</button></a>
								<a href="${pageContext.request.contextPath}/admin/adminAdviceReplyUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a>
								<a href="${pageContext.request.contextPath}/admin/adminAdviceReplyDelete${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>삭제</button></a>
							</p>
						</div><!-- notice_content end -->
					</c:otherwise>
				</c:choose>
				
			</div><!-- centerMenu end -->
		</div>
	</div>
</body>
</html>