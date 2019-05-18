<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.header{
		width:100%;
		position: relative;
		background: #fff;
	}
	.logoWrap{
		width: 100%;
		text-align: center;
		padding: 10px 0;
		border-bottom: 1px solid lightgray;
	}
	.logoWrap > a > img{
		width: 200px;
	}
	.mainMenuWrap{
		width: 100%;
		height:39px;
		/* overflow: hidden; */
	}
	.mainMenu{
		width: 25%;
		float: left;
	}
	.mainMenu > li{
		width: 100%;
		text-align: center;
	}
	.mainMenu > li > p{
		font-size: 17px;
		padding: 10px 0;
		border-right: 1px solid lightgray;
		border-bottom: 1px solid lightgray;
	}
	.mainMenu:last-child > li > p{
		border-right: 0;
	}
	.subMenu{
		display: none;
		border: 1px solid lightgray;
		background: #fff;
	}
	.mainMenu:nth-child(2) > li >.subMenu{
		width: 115px;
	}
	.subMenu > li{
		padding: 9px 0;
		text-align: center;
	}
	.subMenu > li > a{
		font-size: 14px;
	}
	
</style>
<script>
$(function(){
	$(".mainMenu").click(function(){
		$(".mainMenu > li > p").css({"background":"#fff", "color":"#333333"});
		$(".subMenu").css("display","none");
		$(this).find(".subMenu").css("display","block");
		$(this).find("p").css({"background":"#00557c", "color":"#fff"});
	});
	
});
</script>
<div class="header">
	<div class="logoWrap">
		<a href="${pageContext.request.contextPath}/">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png">
		</a>
	</div>
	<div class="mainMenuWrap">
		<ul class="mainMenu">
			<li>
				<p>병원소개</p>
				<ul class="subMenu">
					<li><a href="">의료진 소개</a></li>
					<li><a href="">직원소개</a></li>
					<li><a href="">병원둘러보기</a></li>
					<li><a href="">오시는 길</a></li>
				</ul>
			</li>
		</ul>
		<ul class="mainMenu">
			<li>
				<p>진료분야</p>
				<ul class="subMenu">
					<li><a href="">비수술척추클리닉</a></li>
					<li><a href="">관절클리닉</a></li>
					<li><a href="">성장클리닉</a></li>
					<li><a href="">다이어트클리닉</a></li>
				</ul>
			</li>
		</ul>
		<ul class="mainMenu">
			<li>
				<p>재활분야</p>
				<ul class="subMenu">
					<li><a href="">통증재활</a></li>
					<li><a href="">스포츠재활</a></li>
					<li><a href="">성장운동</a></li>
					<li><a href="">측만증운동</a></li>
					<li><a href="">교정클리닉</a></li>
				</ul>
			</li>
		</ul>
		<ul class="mainMenu">
			<li>
				<p>병원소식</p>
				<ul class="subMenu">
					<li><a href="">공지사항</a></li>
					<li><a href="">언론보도</a></li>
					<li><a href="">상담문의</a></li>
					<li><a href="">치료후기</a></li>
					<li><a href="">비용공지</a></li>
				</ul>
			</li>
		</ul>
	</div><!-- mainMenuWrap end -->
</div>