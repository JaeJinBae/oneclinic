<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.quickMenu{
	position: fixed;
	top: 120px;
	right: 0px;
	width: 155px;
	overflow: hidden;
}
.quickMenu > p{
	float:right;
	width: 100%;
	background: #fff;
	color: #333;
	font-weight: bold;
	font-size: 20px;
	text-align: center;
	padding: 15px 0;
	border: 1px solid lightgray;
}
.quickMenu > ul{
	width: 100%;
	float: right;
	background: #fff;
	border-left: 1px solid #efefef;
}
.quickMenu > ul > li{
	width: 100%;
	border-bottom: 1px solid #019ead;
	padding: 15px 0px;
	text-align: center;
}
.quickMenu > ul > li > a{
	font-size: 15px;
	font-weight: bold;
}
.quickMenu > ul > li > a > img{
	width: 50px;
	margin-right: 8px;
	margin-left: 12px;
	margin-bottom: 5px;
	vertical-align: middle;
}
.quickMenu > ul > li:first-child{
	background: #019ead;
	padding: 7px 0;
}
.quickMenu > ul > li:first-child > p{
	width: 100%;
	text-align: center;
	font-size: 17px;
	padding-bottom: 10px;
	border-bottom: 4px dotted #fff;
	margin-bottom: 15px;
}
.quickMenu > ul > li:first-child > p > img{
	padding-bottom: 5px;
}
.quickMenu > ul > li:first-child > ul{
	/* width: 95%; */
	margin: 0 auto;
	padding-left: 7px;
}
.quickMenu > ul > li:first-child > ul > li{
	width: 100%;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
	text-align: left;
}
.quickMenu > ul > li:first-child > ul > li:nth-child(odd){
	margin-bottom:3px;
}
.quickMenu > ul > li:first-child > ul > li:nth-child(even){
	margin-bottom:6px;
}
.quickMenu > ul > li:first-child > ul > li > p{
	width: 70px;
	padding: 2px 0;
	font-size: 15px;
	background: #fff;
	color: #019ead;
	font-weight: bold;
	border-radius: 3px;
	text-align: center;
}

.quickMenu > ul > li:last-child{
	text-align: center;
	font-weight: bold;
	cursor: pointer;
	font-size: 20px;
	color: #333333;
}
.quickMenu > ul > li:last-child > img{
	display: block;
	width: 23px;
	margin: 0 auto;
	margin-bottom: 5px;
}

.quickMenuActive{
	position: fixed;
	/* top: 122px; */
	bottom: 10px;
	right: -150px;
	width: 200px;
	overflow: hidden;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}
</style>
<script>
$(function(){
    $(".quickMenu > ul > li:last-child").click(function(){
    	$("html").animate({scrollTop:$("html").offset().top}, 400);
    });
});
</script>
<div class="quickMenu">
	<p>Quick<br>Menu</p>
	<ul>
		<li>
			<p><img src="${pageContext.request.contextPath}/resources/images/icon_q_phone.png"><br><span style="font-size:15px; color:#fff;">053.</span><span style="font-size:23px; color:#fff; font-weight:bold;">269.7575</span></p>
			<ul>
				<li><p>평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</p></li>
				<li>오전 10시 ~ 오후 8시</li>
				<li><p>토·공휴일</p></li>
				<li>오전 9시 ~ 오후 1시</li>
				<li><p>점심시간</p></li>
				<li>오후 1시 ~ 오후 2시</li>
				<li><p>휴&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;진</p></li>
				<li>(매월) 2째주 토요일</li>
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/menu01_04"><img src="${pageContext.request.contextPath}/resources/images/icon_q_map.png"><br>오시는길</a></li>
		<li><a href="${pageContext.request.contextPath}/menu01_08"><img src="${pageContext.request.contextPath}/resources/images/icon_q_conversation.png"><br>1:1 맞춤상담</a></li>
		<li><a href="${pageContext.request.contextPath}/menu01_05"><img src="${pageContext.request.contextPath}/resources/images/icon_q_speaker.png"><br>공지사항</a></li>
		<li><img src="${pageContext.request.contextPath}/resources/images/icon_arrow_top.png">TOP</li>
	</ul>
</div>