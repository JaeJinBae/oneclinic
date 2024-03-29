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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-148485495-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-148485495-1');
</script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap{
	width:100%;
	position: relative;
	padding-top: 114px;
}
.headerWrap{
	width:100%;
	position: fixed;
	top:0;
	z-index: 99;
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
	margin-bottom: 50px;
}
.contentTitle{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 50px;
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
	padding: 10px 0;
	border: 1px solid #4f4f4f;
} 
.contentTitle > table tr:nth-child(2) > td:nth-child(2){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 14px;
}
.contentTitle > table tr:nth-child(2) > td:nth-child(2) > a{
	color: #fff;
	font-weight: bold;
}
.content{
	width: 100%;
}
.searchWrap{
	width: 100%;
	text-align: right;
	margin-bottom: 13px;
}
.searchWrap > select{
	
	font-size: 14px;
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
	font-size: 14px;
	text-align: center;
	letter-spacing: 1.5px;
	color: #fff;
	background: #4a7899;
	padding: 4px;
	cursor: pointer;
}
.tblWrap{
	width: 100%;
	border-top: 8px solid #26cae2; 
}
.tblWrap > table{
	width: 100%;
	margin-top: 2px;
}
.tblWrap > table tr{
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr:last-child{
	border-bottom: 8px solid #26cae2;
}
.tblWrap > table tr > th{
	color: #fff;
	font-size: 15px;
	text-align: center;
	background: #86d6e2;
	padding: 10px 0;
}
.tblWrap > table tr > th:nth-child(1){
	width: 45px;
}
.tblWrap > table tr > th:nth-child(2){
	width: 236px;
}
.tblWrap > table tr > th:nth-child(3){
	width: 60px;
}
.tblWrap > table tr > td{
	font-size: 14px;
	text-align: center;
	padding: 10px 0;
}
.tblWrap > table tr > td:nth-child(2){
	text-align: left;
	padding: 7px 8px;
}
.noticeTop > td:nth-child(1){
	color: #c80719;
	font-weight: bold;
}
.noticeTop > td:nth-child(2) > a{
	color: #c80719;	
}
.page{
	width: 100%;
	margin: 15px auto;
	margin-top: 35px;
}
.page > ul{
	width: 100%;
	text-align: center;
}
.page ul li{
	margin:0 auto;
	list-style: none;
	display: inline-block;
	text-align:center;
	border:1px solid #e9e9e9;
	border-radius: 6px;
	background: #fafafa;
}
.page ul li a{
	padding: 3px 8px;
	font-size:1.1em;
	line-height: 22px;
}
.active1{
	background: #26cae2 !important;
	border: 0 !important;
}
.active2{
	font-weight: bold;
	color:white;
}




.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>

</script>
</head>
<body>
	<div class="allWrap">
		<div class="headerWrap">
			<div class="header_top"></div>
			<jsp:include page="../include/mHeader2.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01top.jpg">
			</div> 
			<div class="contentWrap">
				<div class="contentTitle">
					<table>
						<tr>
							<td><a href="${pageContext.request.contextPath}/mMenu01_01">의료진소개</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_02">치료사소개</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_03">병원둘러보기</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_04">오시는길</a></td>
						</tr>
						<tr>
							<td><a href="${pageContext.request.contextPath}/mMenu01_05">공지사항</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_06">언론보도</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_07">비급여항목</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_08">상담문의</a></td>
						</tr>
					</table>
				</div><!-- contentTitle end -->
				<div class="content">
					<!-- <div class="searchWrap">
						<select>
							<option>선 택</option>
							<option>제 목</option>
							<option>번 호</option>
						</select>
						<input type="text" name="">
						<p>검색</p>
					</div> -->
					<div class="tblWrap">
						<table>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
							</tr>
							<c:choose>
							    <c:when test="${fn:length(list) == 0}">
						        	<tr>
						        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
						        	</tr>
							    </c:when>
							    
							     <c:otherwise>
							        <c:forEach var="item" items="${list}">
										<tr>
											<td>${item.no}</td>
											<td><a href="${pageContext.request.contextPath}/mMenu01_06Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.title}</a></td>
											<td>${item.writer}</td>
										</tr>
									</c:forEach>
							    </c:otherwise> 
							</c:choose>
						</table>
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
						</div>
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