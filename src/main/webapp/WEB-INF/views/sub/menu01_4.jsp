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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6aedd9952dda0f0b9aab9091b8798ca5&libraries=drawing"></script>
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
.contentTitle > table tr:nth-child(1) > td:nth-child(4){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 20px;
	letter-spacing: 1px;
}
.contentTitle > table tr:nth-child(1) > td:nth-child(4) > a{
	color: #fff;
	font-weight: bold;
}
.content{
	width: 100%;
	text-align: center;
}
.content > img{
	width: 90%;
}
.timeWrap{
	width: 95%;
	margin: 0 auto;
	margin-bottom: 35px;
	padding: 20px 45px;
	background: #f8f8f8;
	overflow: hidden;
}
.timeTitle{
	float: left;
	width: 100px;
	margin-top: 15px;
	text-align: center;
}
.timeTitle > h4{
	width: 100%;
	text-align: center;
	font-size: 25px;
}
.timeTitle > img{
	width: 50px;
	margin-top: 20px;
}
.timeContent{
	float: right;
	margin-right: 130px;
}
.timeContent > table{

}
.timeContent > table tr{

}
.timeContent > table tr > th{
	font-size: 20px;
	color: #3353a2;
	font-weight: bold;
	letter-spacing: 4px;
	padding: 15px;
}
.timeContent > table tr > td{
	font-size: 20px;
	
}
.timeContent > table tr > td:nth-child(2){
	width: 80px;
	text-align: center;
}
.timeContent > table tr > td > span{
	font-size: 20px;
	color: red;
}
.mapWrap {
	width: 95%;
	margin: 0 auto;
}
.mapWrap > h3{
	text-align: center;
	padding: 30px 0;
	padding-bottom: 10px;
	font-size: 25px;
	font-weight: bold;
}
.mapWrap > h4{
	width: 100%;
	text-align: center;
	padding-bottom: 30px;
}
.cline{
	width: 700px;
	height:2px;
	background: #01557c;
	margin: 0 auto;
}
.cSubway{
	width: 90%;
	margin: 0 auto;
	padding: 40px 0;
	overflow: hidden;
}
.csImg{
	width: 100px;
	float:left;
	margin-left: 85px;
}
.csImg > img{
	width: 100%;
}
.csText{
	width: 460px;
	float:right;
	margin-top: 30px;
}
.csText > h3{
	font-size: 30px;
	font-weight: bold;
}
.csText > p{
	font-size: 19px;
	font-weight: bold;
	margin-top: 20px;
}
.cBus{
	width: 90%;
	margin: 0 auto;
	padding: 40px 0;
	overflow: hidden;
}
.cbImg{
	width: 100px;
	float:left;
	margin-top: 35px;
	margin-left: 85px;
}
.cbImg > img{
	width: 100%;
}
.cbText{
	width: 460px;
	float:right;
	margin-top: 35px;
}
.cbText > h3{
	font-size: 30px;
	font-weight: bold;
}
.cbText > table{
	margin: 25px 0;
}
.cbText > table tr > td{
	font-size: 17px;
	font-weight: bold;
	padding-bottom:7px;
}
.cbText > table tr > td:nth-child(1){
	width:190px;
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
						<img src="${pageContext.request.contextPath}/resources/images/menu01_4img.jpg">
						<%-- <div class="timeWrap">
							<div class="timeTitle">
								<h4>진료시간</h4>
								<img src="${pageContext.request.contextPath}/resources/images/icon_clock.png">
							</div>
							<div class="timeContent">
								<table>
									<tr>
										<th>평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</th>
										<td>-</td>
										<td>오전 10:00 ~ 오후 08:00</td>
									</tr>
									<tr>
										<th>점심&nbsp;시간</th>
										<td>-</td>
										<td>오후 01:00 ~ 오후 02:00</td>
									</tr>
									<tr>
										<th>토/공휴일</th>
										<td>-</td>
										<td>오전 09:00 ~ 오후 01:00</td>
									</tr>
									<tr>
										<th>휴&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;진</th>
										<td>-</td>
										<td>(매월) <span>2째주 토요일</span></td>
									</tr>
								</table>
							</div>
							
						</div>
						<div class="mapWrap">
							<div id="map" style="width:100%;height:350px;margin:0 auto;"></div>
							<script>
								var container = document.getElementById('map');
								var options = {
									center: new daum.maps.LatLng(35.887352, 128.591749),
									level: 3
								};
						
								var map = new daum.maps.Map(container, options);
								
								// 마커가 표시될 위치입니다 
								var markerPosition  = new daum.maps.LatLng(35.887352, 128.591749); 
			
								// 마커를 생성합니다
								var marker = new daum.maps.Marker({
								    position: markerPosition
								});
			
								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);
								
								// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다.
								var iwContent = '<div style="padding-left:19px; padding-top:2px; color:#3353a2; font-size:15px; font-weight:bold;">원마취통증의학과</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			
								// 인포윈도우를 생성합니다
								var infowindow = new daum.maps.InfoWindow({
								    content : iwContent
								});
			
								// 마커에 마우스오버 이벤트를 등록합니다
								daum.maps.event.addListener(marker, 'mouseover', function() {
								  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
								    infowindow.open(map, marker);
								});
			
								// 마커에 마우스아웃 이벤트를 등록합니다
								daum.maps.event.addListener(marker, 'mouseout', function() {
								    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
								    infowindow.close();
								});
								
								daum.maps.event.addListener(marker, 'click', function() {
								  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
								    infowindow.open(map, marker);
								});
								
								// 마커에 마우스아웃 이벤트를 등록합니다
								daum.maps.event.addListener(map, 'click', function() {
								    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
								    infowindow.close();
								});
							</script>
							<h3>대구광역시 <span style="color:#3353a2">북구 침산로 124, 4층</span> <span style="color:#4ea031">(침산동, P&A빌딩)</span></h3>
							<h4>스타벅스(대구침산DT점), 맥도날드(대구침산DT점) 사이 올리브영건물 4층</h4>
						</div><!-- mapWrap end -->
						<div class="cline"></div>
						<div class="cSubway">
							<div class="csImg">
								<img src="${pageContext.request.contextPath}/resources/images/icon_subway.png">
							</div>
							<div class="csText">
								<h3>지하철(Subway)</h3>
								<p><span style="color:#3353a2">지하철 3호선 북구청역</span> <span style="color:#4ea031">(1번출구 도보 20분)</span></p>
							</div>
						</div>
						<div class="cline"></div>
						<div class="cBus">
							<div class="cbImg">
								<img src="${pageContext.request.contextPath}/resources/images/icon_bus.png">
							</div>
							<div class="cbText">
								<h3>버스(Bus)</h3>
								<table>
									<tr>
										<td>A. 침산네거리1</td>
										<td>B. 침산네거리2</td>
									</tr>
									<tr>
										<td><span style="color:#3353a2">300, 836</span>, <span style="color:#4ea031;">동구2, 북구4</span></td>
										<td><span style="color:#3353a2">300, 836</span>, <span style="color:#4ea031;">동구2</span></td>
									</tr>
								</table>
								<table>
									<tr>
										<td>C. 명성푸르지오건너</td>
										<td>오페라삼정그린코아APT</td>
									</tr>
									<tr>
										<td><span style="color:#3353a2">101, 349</span>, <span style="color:#4ea031;">칠곡2</span></td>
										<td><span style="color:#3353a2">300, 349, 836</span>, <span style="color:#4ea031;">동구2, 북구4, 칠곡2</span></td>
									</tr>
								</table>
								<table>
									<tr>
										<td>명성푸르지오앞</td>
										<td>이마트칠성점앞</td>
									</tr>
									<tr>
										<td><span style="color:#3353a2">101-1, 349, 939</span>, <span style="color:#4ea031;">칠곡2</span></td>
										<td><span style="color:#3353a2">300, 349, 836</span>, <span style="color:#4ea031;">동구2, 칠곡2</span></td>
									</tr>
								</table>
							</div>
						</div> --%>
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