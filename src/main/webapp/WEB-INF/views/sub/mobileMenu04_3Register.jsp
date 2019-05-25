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
	border-right: 1px solid #417ca6;
}
.tblWrap > table tr{

}
.tblWrap > table tr > th{
	color: #fff;
	font-size: 14px;
	text-align: center;
	background: #417ca6;
	padding: 6px 0;
	letter-spacing: 1px;
	border-top: 1px solid #417ca6;
	border-bottom: 1px solid #417ca6;
	
}
.tblWrap > table tr > td{
	font-size: 14px;
	text-align: center;
	padding: 2px;
	border-top: 1px solid #417ca6;
	border-bottom: 1px solid #417ca6;
}
.tblWrap > table tr:nth-child(1) > th{
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr:nth-child(2) > th:nth-child(1){
	border-bottom: 1px solid lightgray;
}
.tblWrap > table tr:nth-child(1) > td{
	text-align: left;
}
.tblWrap > table tr > td > input{
	width: 100%;
	font-size: 14px;
	vertical-align: middle;
	padding: 2px 3px;
}
.tblWrap > table tr > td > label{
	display: block;
	width: 100%;
	text-align: left;
}
.tblWrap > table tr > td > label > input{
	vertical-align: middle;
}
.tblWrap > table tr > td > textarea{
	width: 100%;
	height:300px;
	resize: none;
	font-size: 15px;
	padding:8px;
}
.btnWrap{
	width: 100%;
	text-align: center;
	margin-top: 20px;
}
.btnWrap > p{
	display: inline-block;
	text-align: center;
	font-size: 15px;
	color: #fff;
	padding: 12px;;
	cursor: pointer;
}
.btnWrap > p:nth-child(1){
	background: #417ca6;
}
.btnWrap > p:nth-child(2){
	background: #91b0c4;
}
.btnWrap > p > a{
	color: #fff;
}


.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
function adviceRegister(vo){
	console.log(vo);
	$.ajax({
		url:"${pageContext.request.contextPath}/adviceRegister",
		type:"post",
		dataType:"text",
		data:vo,
		async:false,
		success:function(json){
			if(json == "ok"){
				alert("상담문의 등록이 완료되었습니다.");
				location.href="${pageContext.request.contextPath}/mMenu04_03";
			}else{
				alert("문의글 등록이 정상적으로 등록되지 않았습니다. 새로고침(F5) 후 다시 이용하세요.");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
}

$(document).ready(function(){
	var height = $(".sectionContent").outerHeight();
	$(".sectionContent > .leftMenu").css("height", height);
	
	$(".btnWrap > p:nth-child(1)").click(function(){
		var title = $(".tblWrap > table tr > td > input[name='title']").val();
		var writer = $(".tblWrap > table tr > td > input[name='writer']").val();
		var pw = $(".tblWrap > table tr > td > input[name='pw']").val();
		var pwtype = $(".tblWrap > table tr > td > label > input[name='pwtype']:checked").val();
		var content = $(".tblWrap > table tr > td > textarea").val();
		var ndate = new Date();
		var year = ndate.getFullYear();
		var month = ndate.getMonth();
		var date = ndate.getDate();
		var regdate = year+"-"+((month>9?'':"0")+month)+"-"+((date>9?'':"0")+date);
		
		if(title == ""){
			alert("제목을 입력해 주세요.");
			return false;
		}
		if(writer == ""){
			alert("작성자를 입력해 주세요.");
			return false;
		}
		if(pwtype == "o"){
			if(pw == ""){
				alert("비공개 선택시 비밀번호를 입력해주세요.");
				return false;
			}
		}
		var vo = {no:0, title:title, content:content, writer:writer, regdate:regdate, cnt:0, pwtype:pwtype, pw:pw, reply:""};
		adviceRegister(vo);
	});
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
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu04top.png">
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
									<td colspan="5"><input type="text" name="title"></td>
								</tr>
								<tr>
									<th>작성자</th>
									<td><input type="text" name="writer"></td>
									<th>공개</th>
									<td>
										<label><input type="radio" name="pwtype" value="x">공개</label>
										<label><input type="radio" name="pwtype" value="o" checked>비공개</label>
									</td>
									<th>비밀번호</th>
									<td><input type="text" name="pw"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="5">
										<textarea></textarea>
									</td>
								</tr>
							</table>
							<div class="btnWrap">
								<p>문의등록</p>
								<p><a href="${pageContext.request.contextPath}/mMenu04_03">뒤로가기</a></p>
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