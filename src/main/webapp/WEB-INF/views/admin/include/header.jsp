<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원마취통증의학과 관리자 모드</title>
<style>
#headerDiv{
	width:100%;
	background: #d8dce5;
	border-bottom: 1px solid lightgray;
	position: relative;
}
#headerDiv #logo{
	width: 250px;
	color:white;
	line-height: 80px;
	position:  relative;
}
#headerDiv #logo h2{
    width: 100%;
    font-weight: bold;
    text-align: center;
    letter-spacing: 2px;
    background: #3a4652;
}
#headerDiv #logo h2 > a{
	color: #fff;
}
#headerDiv>.gohome{
	font-size: 15px;
	position: absolute;
	right:30px;
	top:25px;
	color: #333;
}
.gohome:hover{
	font-weight:bold;
}
.leftMenu > ul > li:hover > .subMenu{
	display: block;
}
.subMenu > ul > li:hover > a{
	color: #fff;
	font-weight: bold;
}
</style>
</head>
<script>
	$(function(){
		
		
	});
</script>
<body>
	<div id="headerDiv">
		<div id="logo">
			<h2><a href="${pageContext.request.contextPath}/admin/adminMain">관리자모드</a></h2>
		</div>
		<a class="gohome" href="${pageContext.request.contextPath}/admin/logout">로그아웃</a>
	</div>
</body>
</html>