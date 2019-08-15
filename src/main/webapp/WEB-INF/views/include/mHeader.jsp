<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.header_top{
		width: 100%;
		height: 10px; 
		background: #3bc1d9;
	}
	.header{
		width:100%;
		position: relative;
		background: #fff;
	}
	/*  */
	.headerTopActiveWrap{
		display: none;
		width: 100%;
		position: absolute;
		top:0;
		z-index: 999;
		background: #fff;
	}
	.headerTopActiveWrap > .headerTopDivWrap{
		width: 100%;
		background: #168acd;
		overflow: hidden;
	}
	.headerTopActiveWrap > .headerTopDivWrap > div{
		line-height: 64px;
	}
	
	.headerTopActiveWrap > .headerTopDivWrap > .closeBtnWrap{
		float: left;
		width: 30px;
		margin-left: 10px;
	}
	.headerTopActiveWrap > .headerTopDivWrap > .logoWrap{
		float: left;
		width: 160px;
		margin-left: 10px;
	}
	.headerTopActiveWrap > .headerTopDivWrap > .callWrap{
		width: 110px;
		float: right;
		margin-right: 10px;
	}
	.headerTopActiveWrap > .headerTopDivWrap > .callWrap > a{
		width: 100%;
	}
	.headerTopActiveWrap > .headerTopDivWrap > div  img{
		width: 100%;
		vertical-align: middle;
	}
	.dropDownMenuWrap{
		width: 100%;
		float: left;
	}
	.dropDownMenuWrap > ul{
		width: 100%;
	}
	.dropDownMenuWrap > ul > li{
		border-bottom: 1px solid #168acd;
		line-height: 50px;
	}
	.dropDownMenuWrap > ul > li > p{
		font-size: 17px;
		margin-left: 15px;
	}
	.subMenu{
		display: none;
		background: #3bc1d9;
	}
	.subMenu > ul > li{
		line-height: 35px;
		padding-left: 40px;
	}
	.subMenu > ul > li > a{
		font-size: 15px;
		color: #fff;
	}
	/*  */
	.headerTopWrap{
		width: 100%;
		padding: 0 10px;
		overflow: hidden;
	}
	.headerTopWrap > div{
		line-height: 64px;
	}
	
	.headerTopWrap > .menuBtnWrap{
		float: left;
		width: 30px;
	}
	.headerTopWrap > .logoWrap{
		float: left;
		width: 160px;
		margin-left: 10px;
	}
	.headerTopWrap > .callWrap{
		width: 110px;
		float: right;
	}
	.headerTopWrap > .callWrap > a{
		width: 100%;
	}
	.headerTopWrap > div  img{
		width: 100%;
		vertical-align: middle;
	}
	.shortMenuWrap{
		width: 100%;
		background: #3bc1d9;
	}
	.shortMenuWrap > ul{
		width: 100%;
		overflow:hidden;
	}
	.shortMenuWrap > ul > li{
		width: 33.33%;
		float: left;
		text-align: center;
		margin: 8px 0;
		padding: 3px 0; 
		font-size: 15px;
	}
	.shortMenuWrap > ul > li:nth-child(2){
		border-left: 2px solid #fff;
		border-right: 2px solid #fff;
	}
	.shortMenuWrap > ul > li > a{
		color: #fff;
	}
	
	
</style>
<script>
function statistic(){
	var referrer =  document.referrer;
	if(referrer.indexOf("1clinic.co.kr") > 0 || referrer == ""){
		console.log("같은페이지에서 넘어옴");
		console.log(referrer);
	}else{
		referrer = decodeURIComponent(referrer);
		console.log(referrer);
		var device = navigator.userAgent;
		var pc_device = "win16|win32|win64|mac|macintel"; 
	    // 접속한 디바이스 환경
	    var this_device = navigator.platform;
	 
	    if(this_device){
			if( pc_device.indexOf(navigator.platform.toLowerCase()) < 0 ){
				device = 'MOBILE';
			}else{
				device = 'PC';
			}
		}
	    var sdate = new Date();
		var year = sdate.getFullYear();
		var month = sdate.getMonth()+1;
		var date = sdate.getDate();
		var ymd = year+"-"+((month>9?'':"0")+month)+"-"+((date>9?'':"0")+date);
		var hour = sdate.getHours();
		var minute = sdate.getMinutes();
		var connectdate = ymd+" "+((hour>9?'':"0")+hour)+":"+((minute>9?'':"0")+minute);
		
		var info = {url:referrer, device:device, connectdate:connectdate};
		$.ajax({
			url:"${pageContext.request.contextPath}/insertStatistic",
			type: "post",
			data:JSON.stringify(info),
			async:false,
			contentType : "application/json; charset=UTF-8",
			dataType:"text",
			success:function(json){
				if(json == "ok"){
					
				}else{
					console.log(json);
				}
			},
			error:function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	
} 

$(function(){
	statistic();
	
	$(".menuBtnWrap").click(function(){
		$(".headerTopActiveWrap").slideDown();
	});
	$(".closeBtnWrap").click(function(){
		$(".headerTopActiveWrap").slideUp();
		$(".subMenu").css("display", "none");
	});
	$(".sectionWrap").click(function(){
		$(".headerTopActiveWrap").slideUp();
		$(".subMenu").css("display", "none");
	});
	
	$(".dropDownMenuWrap > ul > li").click(function(){
		var state = $(this).find(".subMenu").css("display");
		if(state == "block"){
			$(this).find(".subMenu").slideUp();
		}else{
			$(".subMenu").slideUp();
			$(this).find(".subMenu").slideDown();
		}
	});
});
</script>
<div class="header">
	<div class="headerTopActiveWrap">
		<div class="headerTopDivWrap">
			<div class="closeBtnWrap">
				<img src="${pageContext.request.contextPath}/resources/images/icon_x.png">
			</div>
			<div class="logoWrap">
				<a href="${pageContext.request.contextPath}/">
					<img src="${pageContext.request.contextPath}/resources/images/mobileLogo_white.png">
				</a>
			</div>
			<div class="callWrap">
				<a href="tel:053-269-7575">
					<img src="${pageContext.request.contextPath}/resources/images/mobileCallNum_white.png">
				</a>
			</div>
		</div>
		<div class="dropDownMenuWrap">
			<ul>
				<li>
					<p>병원소개</p>
					<div class="subMenu">
						<ul>
							<li><a href="${pageContext.request.contextPath}/mMenu01_01">- 의료진소개</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_02">- 직원소개</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_03">- 병원둘러보기</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_04">- 오시는 길</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_05">- 공지사항</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_06">- 언론보도</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_07">- 비급여</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu01_08">- 상담문의</a></li>
						</ul>
					</div>
				</li>
				<li>
					<p>비수술클리닉</p>
					<div class="subMenu">
						<ul>
							<li><a href="${pageContext.request.contextPath}/mMenu02_01">- 초음파주사</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu02_02">- C-ARM주사</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu02_03">- Prolo주사</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu02_04">- M-Puncture주사</a></li>
						</ul>
					</div>
				</li>
				<li>
					<p>재활/교정클리닉</p>
					<div class="subMenu">
						<ul>
							<li><a href="${pageContext.request.contextPath}/mMenu03_01">- 재활도수치료</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu03_02">- 충격파치료</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu03_03">- 측만증</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu03_04">- 스포츠재활</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu03_05">- 수술후재활</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu03_06">- 산전/산후재활</a></li>
						</ul>
					</div>
				</li>
				<li>
					<p>스페셜클리닉</p>
					<div class="subMenu">
						<ul>
							<li><a href="${pageContext.request.contextPath}/mMenu04_01">- 영양치료</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu04_02">- 성장</a></li>
							<li><a href="${pageContext.request.contextPath}/mMenu04_03">- 다이어트</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div><!-- dropDownMenuWrap end -->
	</div><!-- headerTopActiveWrap end -->
	
	<div class="headerTopWrap">
		<div class="menuBtnWrap">
			<img src="${pageContext.request.contextPath}/resources/images/mobileMenuBtn.png">
		</div>
		<div class="logoWrap">
			<a href="${pageContext.request.contextPath}/">
				<img src="${pageContext.request.contextPath}/resources/images/mobileLogo.png">
			</a>
		</div>
		<div class="callWrap">
			<a href="tel:053-269-7575">
				<img src="${pageContext.request.contextPath}/resources/images/mobileCallNum.png">
			</a>
		</div>
	</div><!-- headerTopWrap end -->
	
	<div class="shortMenuWrap">
		<ul>
			<li><a href="${pageContext.request.contextPath}/mMenu01_04">오시는 길</a></li>
			<li><a href="${pageContext.request.contextPath}/mMenu01_05">공지사항</a></li>
			<li><a href="${pageContext.request.contextPath}/mMenu01_03">둘러보기</a></li>
		</ul>
	</div><!-- mainMenuWrap end -->
</div><!-- header end -->
