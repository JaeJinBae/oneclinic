<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원마취통증의학과 관리자모드</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
.allWrap{
	width:100%;
	height: 100%;
	position: relative;
}
.loginWrap{
	width: 600px;
	position: absolute;
	top: 30%;
	left: 35%;
}
.loginWrap > h3{
	font-size: 27px;
	font-weight: bold;
	margin-bottom: 15px;
}
.top{
	border: 1px solid gray;
	padding: 20px 100px;
	overflow: hidden;
}
.top > table{
	width: 300px;
	float: left;
}
.top > table tr{
	margin-bottom: 5px;
}
.top > table tr > th{
	width: 80px;
	font-size: 16px;
	text-align: left;
	padding-bottom: 5px;
}
.top > table tr > td{
	padding-bottom: 5px;
}
.top > table tr > td > input{
	width: 100%;
	font-size: 15px;
	padding: 3px 10px;
}
.top > button#loginBtn{
	float:right;
	font-size: 16px;
	background: #0f657e;
	color: #fff;
	padding: 10px 20px; 
	margin-top: 10px;	
}

.bottom{
	border: 1px solid gray;
	padding: 15px 10px;
}
.bottom > h3{
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}
.bottom > p{
	font-size: 15px;
	margin-top: 5px;
}
.bottom > p:last-child{
	text-align: center;
	margin-top: 20px;
}
.bottom > p > a{
	padding: 7px 10px;
	color: #fff;
	background: #0f657e;
}

</style>
<script>
function adminIdPwChk(info){
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/adminIdPwChk",
		type: "post",
		data:JSON.stringify(info),
		async:false,
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		success:function(json){
			if(json!="ok"){
				alert("아이디 또는 비밀번호를 다시 확인하세요.");
			}else{
				location.href="${pageContext.request.contextPath}/admin/adminMain";
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
}

function enterkey() {
    if (window.event.keyCode == 13) {
    	var id = $(".top > table tr > td > input[name='id']").val();
		var pw = $(".top > table tr > td > input[name='pw']").val();
		
		if(id == "" || id ==null){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if(pw == "" || pw == null){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		
		var info = {id:id, pw:pw};
		adminIdPwChk(info);
    }
}

$(function(){
	$("#loginBtn").click(function(){
		var id = $(".top > table tr > td > input[name='id']").val();
		var pw = $(".top > table tr > td > input[name='pw']").val();
		
		if(id == "" || id ==null){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if(pw == "" || pw == null){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		
		var info = {id:id, pw:pw};
		adminIdPwChk(info);
	})
});
</script>
</head>
<body>
	<div class="allWrap">
		<div class="loginWrap">
			<h3>원마취통증의학과 관리자 로그인</h3>
			<div class="top">
				<table>
					<tr>
						<th>아이디</th>
						<td><input onkeyup="enterkey();" type="text" name="id"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input onkeyup="enterkey();" type="password" name="pw"></td>
					</tr>
				</table>
				<button id="loginBtn">로그인</button>
			</div>
			<div class="bottom">
				<h3>관리자 로그인 안내</h3>
				<p>* 관리자 아이디 및 비밀번호 관리에 유의해 주십시오.</p>
				<p>* 관리자 아이디 및 비밀번호가 기억나지 않을 때는 제작 업체에 문의해 주십시오.</p>
				<p><a href="${pageContext.request.contextPath}/">메인으로 돌아가기</a></p>
			</div>
		</div>
	</div><!-- allWrap end -->
</body>
</html>