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
	position: absolute;
	top:0;
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
	width: 35px;
	height: 3px;
	background: #6e6e6e;
	margin-bottom: 5px;
}
.contentTitle > .tText > p{
	font-size: 20px;
	font-weight: bold;
	color: #6e6e6e;
	/* font-family: sans-serif; */
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
.empWrap{
	width: 100%;
	margin: 15px auto;
	overflow: hidden;
}
.empWrap > .empImg{
	float: left;
	width: 150px;
	height: 190px;
	border: 1px solid gray;
}
.empWrap > .empCareer{
	float: right;
}
.empCareer > .ecTitle{
	width: 100%;
	overflow: hidden;
}
.empCareer > .ecTitle > h3{
	float: left;
	font-size: 18px;
	font-weight: bold;
}
.empCareer > .ecTitle > .bline{
	float:left;
	width: 50px; 
	height: 2px;
	background: #333333;
	margin: 8px 0 15px 10px;
}
.empCareer > ul{
	margin: 20px 0;
	margin-top: 5px;
}
.empCareer > ul > li{
	font-size: 15px;
	padding: 3px; 
}



.footerWrap{
	width: 100%;
	height: 70px;
	background: #393939;
} 
</style>
<script>
$(document).ready(function(){
	var height = $(".sectionContent").outerHeight();
	$(".sectionContent > .leftMenu").css("height", height);
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
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01top.jpg">
			</div> 
			<div class="contentWrap">
					<div class="contentTitle">
						<div class="tText">
							<div class="shortLine"></div>
							<p>직원소개</p> 
						</div>
						<div class="tLogo">
							<img src="${pageContext.request.contextPath}/resources/images/tlogo.png">
						</div>
					</div><!-- contentTitle end -->
					<div class="content">
						<div class="empWrap">
							<div class="empImg">
								
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>경력활동</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대한마취통증학회 정회원</li>
									<li>- &nbsp;대한통증학회 정회원</li>
									<li>- &nbsp;대한척추통증학회 정회원</li>
									<li>- &nbsp;대한임상노인의학회 정회원</li>
									<li>- &nbsp;대한약물영양의학회 정회원</li>
									<li>- &nbsp;대한성장의학회 정회원</li>
									<li>- &nbsp;대한비만체형학회 정회원</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>경력활동</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대한마취통증학회 정회원</li>
									<li>- &nbsp;대한통증학회 정회원</li>
									<li>- &nbsp;대한척추통증학회 정회원</li>
									<li>- &nbsp;대한임상노인의학회 정회원</li>
									<li>- &nbsp;대한약물영양의학회 정회원</li>
									<li>- &nbsp;대한성장의학회 정회원</li>
									<li>- &nbsp;대한비만체형학회 정회원</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
						<div class="empWrap">
							<div class="empImg">
								
							</div>
							<div class="empCareer">
								<div class="ecTitle">
									<h3>경력활동</h3>
									<div class="bline"></div>
								</div>
								<ul>
									<li>- &nbsp;대한마취통증학회 정회원</li>
									<li>- &nbsp;대한통증학회 정회원</li>
									<li>- &nbsp;대한척추통증학회 정회원</li>
									<li>- &nbsp;대한임상노인의학회 정회원</li>
									<li>- &nbsp;대한약물영양의학회 정회원</li>
									<li>- &nbsp;대한성장의학회 정회원</li>
									<li>- &nbsp;대한비만체형학회 정회원</li>
								</ul>
							</div><!-- empCareer end -->
						</div><!-- empWrap end -->
					</div><!-- content end -->
				</div><!-- contentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
		
		</div>
	</div><!-- allWrap end -->
</body>
</html>