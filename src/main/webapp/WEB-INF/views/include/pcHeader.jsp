<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.header{
		width:100%;
		position: relative;
	}

	.whiteBack{
		width:100%;
		height:100px;
		background: #fff;
		position: absolute;
		top:0;
		z-index: 99;
		border-bottom: 1px solid lightgray;
	}
	.mainMenuWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		position: relative;
		z-index: 999;
	}
	.mainMenuUl{
		width:100%;
		overflow:hidden;
	}
	.mainMenuUl > li{
		float:left;
		width:150px;
		text-align: center;
		padding-top:42px;
	}
	.mainMenuUl > li > a{
		display:block;
		font-size:20px;
		font-weight:600;
		margin-bottom:34px;
		color: #5E5E5E;
	}
	.mainMenuUl > li:first-child{
		width:500px;
		padding-top:18px;
	}
	.logoDiv{
		width:500px;
		text-align: left;
		margin-bottom:14px;
	}
	.logoWrap > .logoDiv > a{
		display:block;
		width:270px;
	}
	.logoWrap > .logoDiv > a > img{
		width:100%;
	}
	.mainMenuUl > li:hover > a{
		color: #00557c;
	}
	.subMenuWrap{
		display:none;
		width:100%;
		padding-top:10px;
	}
	.subMenuCallInfo > p:nth-child(2){
		margin-bottom:10px;
	}
	.subMenuCallInfo > h1{
		font-weight: bold;
		color:#ff6d00;
	}
	.subMenuUl{
		padding:23px 0;
	}
	.subMenuUl > li{
		margin-bottom:25px;
		text-align: center;
	}
	.subMenuUl > li > a{
		font-size:17px;
		color: #595959;
	}
	.subMenuUl > li > a:hover{
		font-weight:bold !important;
	}
</style>
<script>
$(function(){
	$(".mainMenuUl>li>a.mMenu").mouseenter(function(){
        $(".subMenuWrap").stop(true,true).slideDown();
    });
    $(".mainMenuUl").mouseleave(function(){
        $(".subMenuWrap").stop(true,true).slideUp();
    });
    $(".logoDiv").mouseenter(function(){
        $(".subMenuWrap").stop(true,true).slideUp();
    });
    $(".menuIcon").click(function(){
        $(".menuBg").css({"display":"block"});
    });
    $(".closebtn").click(function(){
        $(".menuBg").css({"display":"none"});
    });
});
</script>
<div class="header">
	<div class="whiteBack">
		
	</div>
	<div class="mainMenuWrap">
		<ul class="mainMenuUl">
			<li class="logoWrap">
				<div class="logoDiv">
					<a href="${pageContext.request.contextPath}/">
						<img src="${pageContext.request.contextPath}/resources/images/logo.png">
					</a>
				</div>
				<div class="subMenuWrap">
					
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu01_01">병원소개</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu01_01">의료진소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_02">직원소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_03">병원둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_04">오시는 길</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu02_01">진료분야</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu02_01">비수술척추클리닉</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_02">관절클리닉</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_03">성장클리닉</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_04">다이어트클리닉</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu03_01">재활분야</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu03_01">통증재활</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_02">스포츠재활</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_03">성장운동</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_04">측만증운동</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_05">교정클리닉</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu04_01">병원소식</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu04_01">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_02">언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_03">상담문의</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_04">치료후기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_05">비용공지</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div><!-- mainMenuWrap end -->
</div>