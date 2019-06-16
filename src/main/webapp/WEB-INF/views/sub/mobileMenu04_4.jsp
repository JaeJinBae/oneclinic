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
}
.tblWrap > table{
	width: 100%;
	border-top: 8px solid #417ca6; 
}
.tblWrap > table tr{
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr > th{
	color: #fff;
	font-size: 15px;
	text-align: center;
	background: #91b0c4;
	padding: 6px 0;
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
	padding: 7px 0;
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
	background: #4a7899 !important;
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
			<jsp:include page="../include/mHeader.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu04top.jpg">
			</div> 
			<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>치료후기</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="searchWrap">
							<select>
								<option>선 택</option>
								<option>제 목</option>
								<option>번 호</option>
							</select>
							<input type="text" name="">
							<p>검색</p>
						</div>
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
												<td><a href="${pageContext.request.contextPath}/mMenu04_04Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.title}</a></td>
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