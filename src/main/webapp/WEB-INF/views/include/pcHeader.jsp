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
		font-size:18px;
		color: #fff;
	}
	.subMenuUl > li > a:hover{
		font-weight:bold !important;
	}
</style>
<script>
function statistic(){
	var referrer =  document.referrer;
	if(referrer.indexOf("1clinic.co.kr") > 0 || referrer == ""){
		return false;
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
						<li><a href="${pageContext.request.contextPath}/menu01_02">치료사소개</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_03">병원둘러보기</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_04">오시는 길</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_05">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_06">언론보도</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_07">비급여항목</a></li>
						<li><a href="${pageContext.request.contextPath}/menu01_08">상담문의</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu02_01">비수술클리닉</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu02_01">초음파주사</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_02">C-ARM주사</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_03">Prolo주사</a></li>
						<li><a href="${pageContext.request.contextPath}/menu02_04">M-Puncture주사</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu03_01">재활/교정클리닉</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu03_01">재활도수치료</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_02">충격파치료</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_03">측만증</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_04">스포츠재활</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_05">수술후재활</a></li>
						<li><a href="${pageContext.request.contextPath}/menu03_06">산전/산후재활</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="${pageContext.request.contextPath}/menu04_01">스페셜클리닉</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/menu04_01">영양치료</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_02">성장</a></li>
						<li><a href="${pageContext.request.contextPath}/menu04_03">다이어트</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div><!-- mainMenuWrap end -->
</div>