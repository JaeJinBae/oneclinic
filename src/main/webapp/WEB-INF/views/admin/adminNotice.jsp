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
	height: 1480px;
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
	width:100%;
	padding-top:30px;
}
.tbl_board table{
	width: 100%;
	border-collapse: collapse; 
}
.tbl_board table .tbl_header th{
	border-top:2px solid gray;
	border-bottom:2px solid gray;
	padding:8px 13px;
	font-size:15px;
}
.tbl_board table .tbl_header th:nth-child(1){
	width: 70px;
}
.tbl_board table .tbl_header th:nth-child(3){
	width: 80px;
}
.tbl_board table .tbl_header th:nth-child(4){
	width: 110px;
}
.tbl_board table .tbl_header th:nth-child(5){
	width: 70px;
}
.tbl_board table .tbl_header th:nth-child(6){
	width: 115px;
}
.tbl_board table td{
	padding:8px 13px;
	border-bottom:1px solid lightgray;
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
.tbl_board table td button{
	border: 0;
    background: #3a4652;
    color: #fff;
    border-radius: 3px;
    font-size: 14px;
    padding: 5px;
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
	background: #3a4652;
}
.active2{
	font-weight: bold;
	color:white;
}
.page ul li a{
	font-size:1.1em;
	line-height: 40px;
}
.registerBtn{
	float:right;
	margin-right:35px;
	margin-top:31px;
}
.registerBtn > a > button{
	border: 0;
    background: #3a4652;
    color: #fff;
    border-radius: 3px;
    font-size: 15px;
    padding: 5px 10px;
}
.box-body > select{
	font-size: 15px;
	padding: 2px;
	vertical-align: middle;
}
.box-body > input{
	font-size: 15px;
	padding: 2px;
	vertical-align: middle;
}
#searchBtn{ 
	border: 0;
    background: #3a4652;
    color: #fff;
    border-radius: 3px;
    font-size: 15px;
    padding: 5px 10px;
}
</style>
<script type="text/javascript">
	$(function(){		
		//게시판 검색
        $("#searchBtn").click(function(){
        	var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
    		var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="adminNotice${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
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
								<li><a href="${pageContext.request.contextPath}/admin/adminNotice" style="font-weight:bold;color:#fff;">- 공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminNews">- 언론보도</a></li>
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
				<h1 class="boardTitle">■ 공지사항<span>Home > 게시판 > 공지사항</span></h1>
				<div class="tbl_board">
					<table>
						<tr class="tbl_header">
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>등록일</th> 
							<th>조회</th>
							<th>비고</th>
						</tr>
						<c:if test="${fn:length(topList) != 0}">
							<c:forEach var="item" items="${topList}">
								<tr class="noticeTop">
									<td>공지</td>
									<td><a href="adminNoticeRead${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.title}</a></td>
									<td>${item.writer}</td>
									<td>${item.regdate}</td>
									<td>${item.cnt}</td>
									<td>
											<a href="${pageContext.request.contextPath}/admin/adminNoticeUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a>
											<a href="${pageContext.request.contextPath}/admin/adminNoticeDelete${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>삭제</button></a>
										</td>
								</tr>	
							</c:forEach>
						</c:if>
						<c:choose>
						    <c:when test="${fn:length(list) == 0}">
					        	<tr>
					        		<td colspan="6" style=" text-align: center;">등록된 게시물이 없습니다.</td>
					        	</tr>
						    </c:when>
						    <c:otherwise>
						        <c:forEach var="item" items="${list}">
									<tr>
										<td>${item.no}</td>
										<td class="title"><a href="adminNoticeRead${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.title}</a></td>
										<td>${item.writer}</td>
										<td>${item.regdate}</td>
										<td>${item.cnt}</td>
										<td>
											<a href="${pageContext.request.contextPath}/admin/adminNoticeUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a>
											<a href="${pageContext.request.contextPath}/admin/adminNoticeDelete${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>삭제</button></a>
										</td>
									</tr>	
								</c:forEach>
						    </c:otherwise> 
						</c:choose>
					</table>
					<p class="registerBtn"><a href="${pageContext.request.contextPath}/admin/adminNoticeRegister${pageMaker.makeSearch(pageMaker.cri.page)}"><button>글쓰기</button></a></p>
					<div class="page">
						<ul>
							<c:if test="${pageMaker.prev}">
								<li><a href="${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
							</c:if>
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next}">
								<li><a href="${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
							</c:if>
							
						</ul>
					</div><!-- page end -->
					<div class="box-body" style="text-align:center;">
							<select name="searchType">
								<option value="n">선택해주세요.</option>
								<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
								<option value="c" ${cri.searchType=='c'?'selected':''}>내용</option>
								<option value="r" ${cri.searchType=='r'?'selected':''}>작성일</option>
							</select> 
							<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
							<button id="searchBtn">검색</button>
						</div>
				</div><!-- tbl_board -->
			</div><!-- centerMenu end -->
		</div><!-- contentWrap end -->
	</div><!-- allWrap end -->
</body>
</html>