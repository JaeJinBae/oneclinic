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
.pw_popupWrap{
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 999;
	display: none;
}
.pw_popupWrap > .popup_bg{
	width: 100%;
	height: 2000px;
	background: #333;
	opacity: 0.8;
}
.pw_popupWrap > .pwpopup{
	position: fixed;
	top:45%;
	left: 450px;
	width: 450px;
	margin: 0 auto;
	margin-left: 225px;
	background: #fff;
	padding: 15px;
}
.pwpopup > h4{
	width: 100%;
	text-align: center;
	margin-bottom: 15px;
}
.pwpopup > p{
	width: 100%;
	text-align: center;
	font-size: 15px;
}
.pwpopup > ul{
	width: 100%;
	margin: 15px 0;
}
.pwpopup > ul > li{
	text-align: center;
	font-size: 15px;
}
.pwpopup > ul > li > input{
	width: 150px;
	font-size: 14px;
	padding: 3px 6px;
	margin-left: 10px;
}
.pwpopup > ul > li > button{
	font-size: 15px;
	padding: 5px 10px;
	color: #fff;
	margin-top: 10px;
}
.pwpopup > ul > li > button:nth-child(1){
	background: #477a9b;
	margin-right: 3px;
}
.pwpopup > ul > li > button:nth-child(2){
	background: gray;
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
.contentTitle > table tr:nth-child(2) > td:nth-child(4){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 20px;
	letter-spacing: 1px;
}
.contentTitle > table tr:nth-child(2) > td:nth-child(4) > a{
	color: #fff;
	font-weight: bold;
}

.content{
	width: 100%;
	padding: 0 38px;
}
.searchWrap{
	width: 100%;
	text-align: right;
	margin-bottom: 13px;
}
.searchWrap > select{
	
	font-size: 15px;
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
	font-size: 15px;
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
	font-size: 17px;
	text-align: center;
	background: #86d6e2;
	padding: 15px 0;
}
.tblWrap > table tr > th:nth-child(1){
	width: 50px;
}
.tblWrap > table tr > th:nth-child(2){
	width: 660px;
}
.tblWrap > table tr > th:nth-child(3){
	width: 70px;
}
.tblWrap > table tr > th:nth-child(4){
	width: 70px;
}
.tblWrap > table tr > th:nth-child(5){
	width: 90px;
}
.tblWrap > table tr > td{
	font-size: 15px;
	text-align: center;
	padding: 7px 0;
}
.tblWrap > table tr > td:nth-child(2){
	text-align: left;
	padding: 14px 10px;
}
.tblWrap > table tr > td > p{
	font-size: 15px;
	text-align: center;
	color: #fff;
	padding: 3px 0;
	border-radius: 5px;
}
.tblWrap > table tr > td > .reply_o{
	background: #3e7395;
}
.tblWrap > table tr > td > .reply_x{
	background: #fe5003;
}
.registerBtn{
	width: 100%;
	overflow: hidden;
	margin-top: 20px;
}
.registerBtn > p{
	width: 70px;
	float: right;
	background: #26cae2;
	padding: 5px;
	text-align: center;
}
.registerBtn > p > a{
	width: 100%;
	display: inline-block;
	color: #fff;
	font-size: 15px;
}
.page{
	margin: 15px auto;
	margin-top: 60px;
}
.page > ul{
	text-align: center;
}
.page ul li{
	margin:0 auto;
	list-style: none;
	display: inline-block;
	text-align:center;
	border:1px solid #e9e9e9;
	border-radius: 8px;
	margin: 0 1px;
	background: #fafafa;
}
.active1{
	background: #26cae2 !important;
	border: 0 !important;
}
.active2{
	font-weight: bold;
	color:white;
}
.page ul li a{
	display:inline-block;
	width:35px;
	height:30px;
	font-size:1.1em;
	line-height: 30px;
}




.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
function advicePw_chk(no, pw, href){
	var vo = {no:no, pw:pw};
	$.ajax({
		url:"${pageContext.request.contextPath}/advicePwChk/"+no+"/"+pw,
		type:"post",
		dataType:"text",
		async:false,
		contentType : "application/json; charset=UTF-8",
		success:function(json){
			if(json == "ok"){
				location.href=href;
			}else{
				alert("비밀번호가 다릅니다.");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
}

$(document).ready(function(){
	
	$(document).on("click",".tblWrap > table tr > td:nth-child(2) > a", function(e){
		e.preventDefault();
		var pwtype = $(this).parent().find("img").length;
		if(pwtype == 0){
			location.href=$(this).attr("href");
		}else{
			var no = $(this).find("input[name='no']").val();
			var href = $(this).attr("href");
			$(".pwpopup > ul > li > input[name='no']").val(no);
			$(".pwpopup > ul > li > input[name='href']").val(href);
			$(".pw_popupWrap").css("display","block");
		}
	})
	
	$(".pwpopup > ul > li:nth-child(2) > button").click(function(){
		var idx = $(this).index();
		
		if(idx == 0){
			var no = $(".pwpopup > ul > li > input[name='no']").val();
			var pw = $(".pwpopup > ul > li > input[name='pw']").val();
			var href = $(".pwpopup > ul > li > input[name='href']").val();
			
			advicePw_chk(no, pw, href);
		}else if(idx == 1){
			$(".pwpopup > ul > li > input").val("");
			$(".pw_popupWrap").css("display","none");
		}
	});
});
</script>
</head>
<body>
	<div class="allWrap">
		<div class="pw_popupWrap">
			<div class="popup_bg"></div>
			<div class="pwpopup">
				<h4>상담문의 비밀번호 확인</h4>
				<p>비공개 글이므로 작성자와 관리자만 확인할 수 있습니다.</p>
				<p>글 작성시 입력한 비밀번호를 입력해주세요.</p>
				<ul>
					<li>비밀번호<input type="password" name="pw"><input type="hidden" name="no" value=""><input type="hidden" name="href" value=""></li>
					<li><button>확 인</button><button>닫 기</button></li>
				</ul>
			</div>
		</div>
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
						<!-- <div class="searchWrap">
							<select>
								<option>선 택</option>
								<option>제 목</option>
								<option>번 호</option>
								<option>작성자</option>
							</select>
							<input type="text" name="">
							<p>검색</p>
						</div> -->
						<div class="tblWrap">
							<table>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>상태</th>
									<th>작성자</th>
									<th>등록일</th>
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
												<td>
													
													<a href="${pageContext.request.contextPath}/menu01_08Read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">
														<c:if test="${item.pwtype eq 'o'}">
															<img style="width:15px;" src="${pageContext.request.contextPath}/resources/images/lock1.png">
														</c:if>
														${item.title}
														<input type="hidden" name="no" value="${item.no}">
													</a>
												</td>
												<td>
													<c:choose>
														<c:when test="${item.reply eq ''}">
															<p  class="reply_x">답변대기</p>
														</c:when>
														<c:otherwise>
															<p class="reply_o">답변완료</p>
														</c:otherwise>
													</c:choose>
												</td>
												<td>
													<c:set var="writer" value="${item.writer}"></c:set>
													<c:set var="writer2" value="${fn:substring(writer,1,4)}"/>
													${fn:replace(writer,writer2,"**") }
													<%-- ${item.writer} --%>
												</td>
												<td>${item.regdate}</td>
											</tr>
										</c:forEach>
								    </c:otherwise> 
								</c:choose>
							</table>
							<div class="registerBtn">
								<p><a href="${pageContext.request.contextPath}/menu01_08Register">글쓰기</a></p>
							</div>
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
			</div><!-- sectionContent end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
			<jsp:include page="../include/pcFooter.jsp"></jsp:include>		
		</div>
	</div>
</body>
</html>