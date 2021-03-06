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

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap{
	width:100%;
	position: relative;
	padding-top: 114px;
}
.headerWrap{
	width:100%;
	position: fixed;
	top:0;
	z-index: 99;
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
	width: 100%;
	margin: 0 auto;
	margin-bottom: 50px;
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
	padding: 10px 0;
	border: 1px solid #4f4f4f;
} 
.contentTitle > table tr:nth-child(1) > td:nth-child(4){
	background: #4f4f4f;
}
.contentTitle > table tr > td > a{
	font-size: 14px;
}
.contentTitle > table tr:nth-child(1) > td:nth-child(4) > a{
	color: #fff;
	font-weight: bold;
}
.content{
	width: 100%;
}
.content > img{
	width: 100%;
}
/* .mapWrap {
	width: 98%;
	margin: 0 auto;
}
.mapWrap > h3{
	text-align: center;
	padding: 30px 0;
	padding-bottom: 10px;
	font-size: 17px;
	font-weight: bold;
}
.mapWrap > h4{
	width: 100%;
	text-align: center;
	font-size: 15px;
	padding-bottom: 30px;
}
.cline{
	width: 100%;
	height:2px;
	background: #01557c;
	margin: 0 auto;
}
.cSubway{
	width: 100%;
	margin: 0 auto;
	padding: 40px 0;
}
.csImg{
	width: 100%;
	text-align: center;
}
.csImg > img{
	width: 133px;
}
.csImg > h3{
	display: inline-block;
	font-size: 25px;
	font-weight: bold;
	margin-top: 35px;
}
.csText{
	width: 100%;
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
}

.csText > p{
	font-size: 18px;
	font-weight: bold;
	margin-top: 20px;
}
.cBus{
	width: 100%;
	margin: 0 auto;
	padding: 40px 0;
}
.cbImg{
	width: 100%;
	text-align: center;
}
.cbImg > img{
	width: 130px;
}
.cbImg > h3{
	display: inline-block;
	font-size: 25px;
	font-weight: bold;
	margin-top: 35px;
}
.cbText{
	width: 100%;
	margin-top: 35px;
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
	width:180px;
} */


.footerWrap{
	width: 100%;
	height: 90px; 
	background: #393939;
} 
</style>
<script>

</script>
</head>
<body>
	<div class="allWrap">
		<div class="headerWrap">
			<div class="header_top"></div>
			<jsp:include page="../include/mHeader2.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section_top">
				<img src="${pageContext.request.contextPath}/resources/images/mobileMenu01top.jpg">
			</div> 
			<div class="contentWrap">
				<div class="contentTitle">
					<table>
						<tr>
							<td><a href="${pageContext.request.contextPath}/mMenu01_01">의료진소개</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_02">치료사소개</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_03">병원둘러보기</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_04">오시는길</a></td>
						</tr>
						<tr>
							<td><a href="${pageContext.request.contextPath}/mMenu01_05">공지사항</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_06">언론보도</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_07">비급여항목</a></td>
							<td><a href="${pageContext.request.contextPath}/mMenu01_08">상담문의</a></td>
						</tr>
					</table>
				</div><!-- contentTitle end -->
				<div class="content">
					<%-- <div class="mapWrap">
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
						<h3>대구광역시 <span style="color:#3353a2">북구 침산로 124</span><br><span style="color:#4ea031">P&A빌딩 4층 (침산동)</span></h3>
						<h4>스타벅스, 맥도날드 사이 올리브영건물 4층</h4>
					</div><!-- mapWrap end -->
					<div class="cline"></div>
					<div class="cSubway">
						<div class="csImg">
							<img src="${pageContext.request.contextPath}/resources/images/icon_subway.png">
							<h3>지하철(Subway)</h3>
						</div>
						<div class="csText">
							<p><span style="color:#3353a2">지하철 3호선 북구청역</span> <span style="color:#4ea031">(1번출구 도보 20분)</span></p>
						</div>
					</div>
					<div class="cline"></div>
					<div class="cBus">
						<div class="cbImg">
							<img src="${pageContext.request.contextPath}/resources/images/icon_bus.png">
							<h3>버스(Bus)</h3>
						</div>
						<div class="cbText">
							
							<table>
								<tr>
									<td>A. 침산네거리1</td>
									<td>B. 침산네거리2</td>
								</tr>
								<tr>
									<td><span style="color:#3353a2">300, 836</span><br><span style="color:#4ea031;">동구2, 북구4</span></td>
									<td><span style="color:#3353a2">300, 836</span><br><span style="color:#4ea031;">동구2</span></td>
								</tr>
							</table>
							<table>
								<tr>
									<td>C. 명성푸르지오건너</td>
									<td>오페라삼정그린코아APT</td>
								</tr>
								<tr>
									<td><span style="color:#3353a2">101, 349</span><br><span style="color:#4ea031;">칠곡2</span></td>
									<td><span style="color:#3353a2">300, 349, 836</span><br><span style="color:#4ea031;">동구2, 북구4, 칠곡2</span></td>
								</tr>
							</table>
							<table>
								<tr>
									<td>명성푸르지오앞</td>
									<td>이마트칠성점앞</td>
								</tr>
								<tr>
									<td><span style="color:#3353a2">101-1, 349, 939</span><br><span style="color:#4ea031;">칠곡2</span></td>
									<td><span style="color:#3353a2">300, 349, 836</span><br><span style="color:#4ea031;">동구2, 칠곡2</span></td>
								</tr>
							</table>
						</div>
					</div> --%>
					<img src="${pageContext.request.contextPath}/resources/images/menu01_4img.jpg">
				</div><!-- content end -->
			</div><!-- contentWrap end -->
		</div><!-- sectionWrap end -->
		<div class="footerWrap">
		
		</div>
	</div><!-- allWrap end -->
</body>
</html>