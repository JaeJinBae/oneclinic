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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorFull/ckeditor.js"></script>
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

/* 공지사항 */
.tbl_board{
	width:90%;
	margin:0 auto;
	padding-top:30px;
	position:relative;
}
.tbl_board table{
	width:800px;
	margin:0 auto;
	border-collapse: collapse; 
}
.tbl_board table .tbl_header th{
	border-top:2px solid #e3e3e3;
	border-bottom:2px solid #5c4530;
	padding:8px 13px;
	font-size:15px;
}
.tbl_board table .tbl_header th:nth-child(2){
	width:400px;
}
.tbl_board table td{
	padding:8px 13px;
	border-bottom:1px solid #e3e3e3;
	font-size:15px;
}
.tbl_board table td a{
	font-size:15px;
}
.tbl_board table tr:not(first-child) td:nth-child(2){
	text-align: left;
}
.tbl_board table td:not(.title){
	text-align: center;
}
.replyCnt{
	font-weight: 600;
}
.title>a:hover{
	color:red;
}
.title>img{
	width:12px;
}
.page{
	clear:both;
	width:626px; 
	margin:70px auto;
	text-align: center;
}
.page ul li{
	width:45px;
	height:40px;
	margin:0 auto;
	list-style: none;
	display: inline-block;
	text-align:center;
	border:1px solid #e9e9e9;
}
.active1{
	background: #5c4530;
}
.active2{
	font-weight: bold;
	color:white;
}
.page ul li a{
	font-size:1.1em;
	line-height: 40px;
}
/* 글쓰기 */
#container{
	width:900px;
	margin:0 auto;
}
#header{
	width:100%;
	margin-bottom:30px;
}
#title{
	width:50%;
	line-height: 20px;
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
/* 이미지 업로드 설명서 */
.howToUpload{
	width:225px;
	position:absolute;
	top:400px;
	left:17px;
	padding:15px;
	background: white;
	text-align: center;
	border-radius: 10px;
}
.howToUpload>h3{
	font-size:20px;
	margin-bottom:20px;
}
.howToUpload ol{
	text-align: left;
	margin-left:30px;
}
.howToUpload ol li{
	list-style: decimal;
}
.howToUpload ol li img{
	width:20px;
}
</style>
<script type="text/javascript">
	$(function(){		
      //예외처리
    	$("#form1").submit(function(){

    		if($("input[name='writer']").val()==""||$("input[name='writer']").val()==null){
    			alert("작성자를 입력해주세요.");
    			return false;
    		}else if($("input[name='title']").val()==""||$("input[name='title']").val()==null){
    			alert("제목을 입력해주세요.");
    			return false;
    		}
    	})
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
				<form id="form1" method="post" action="adminAdviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}">
					<div id="container">
						<%-- <input type="hidden" value="${pageMaker.cri.page}" name="page">
						<input type="hidden" value="${pageMaker}" name="pageMaker"> --%> 
						<input type="hidden" value="${item.no}" name="no">
						<p>작성자: <input type="text" name="writer" value="${item.writer}"></p>
						<br> 
						<div id="header">
							<span>제목:</span>
							<input id="title" type="text" name="title" value="${item.title}">
						</div>
						
						<textarea id="editor1" name="content">
						    ${item.content}
						</textarea>
						<script>
							CKEDITOR.replace('content',{filebrowserUploadUrl:"/admin/imgUpload",height:500});
						</script>
						<div class="btn">
							<input type="submit" value="저장">
							<a href="${pageContext.request.contextPath}/admin/adminAdvice"><button type="button">뒤로가기</button></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>