<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원마취통증의학과 관리자 모드</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/jqplot/jquery.jqplot.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqplot/jqplot.pieRenderer.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.allWrap {
	width: 100%;
	height: 100%;
	background: #fff;
}

.contentWrap {
	width: 100%;
	min-width: 1280px;
	min-height: 100%;
	margin: 0 auto;
	overflow: hidden;
	position: relative;
	padding-bottom: 20px;
}

.leftMenu {
	width: 250px;
	height: 1080px;
	position: absolute;
	left: 0;
	padding: 25px 0;
	text-align: center;
	background: #3a4652;
}

.leftMenu>h2 {
	width: 100%;
	text-align: center;
	padding-bottom: 25px;
	margin-bottom: 30px;
	border-bottom: 1px solid lightgray;
}

.leftMenu>h2>a {
	color: #fff;
	font-weight: bold;
}

.leftMenu>ul {
	width: 100%;
	text-align: left;
}

.leftMenu>ul>li {
	
}

.leftMenu>ul>li>p {
	padding: 10px 0;
	padding-left: 15px;
}

.leftMenu>ul>li>p>a {
	font-size: 20px;
	color: #cccccc;
}

.leftMenu>ul>li:nth-child(1)>p>a {
	color: #ffffff;
}

.leftMenu>ul>li>.subMenu {
	display: none;
	width: 100%;
	background: #56626f;
	padding-left: 25px;
}

.subMenu>ul {
	width: 100%;
}

.subMenu>ul>li {
	width: 100%;
	padding: 10px 5px;
}

.subMenu>ul>li>a {
	color: #cccccc;
	font-size: 17px;
}

.centerMenu {
	width: 100%;
	min-width: 900px;
	padding-left: 270px;
	padding-right: 30px;
}

.boardTitle {
	width: 100%;
	font-size: 20px;
	margin-top: 33px;
}
.boardTitle > a{
	display: inline-block;
	font-size: 15px;
}
.chartWrap {
	width: 100%;
	overflow: hidden;
}

.cw {
	float: left;
	width: 400px;
	margin: 15px;
	margin-right: 20px;
	background: #fffdf6;
	box-shadow: 2px 2px 8px gray;
}
.cw > h4{
	width: 100%;
	text-align: center;
	font-weight: 400;
	margin-top: 10px;
}
.chart {
	width: 100%;
}

.tbl_board{
	width:100%;
	padding-top:30px;
}
.tbl_board table{
	width: 100%;
	border-collapse: collapse; 
}
.tbl_board table .tbl_header th{
	border-top:2px solid gray;
	border-bottom:2px solid gray;
	padding:8px 13px;
	font-size:15px;
}
.tbl_board table .tbl_header th:nth-child(1){
	width: 70px;
}
.tbl_board table .tbl_header th:nth-child(3){
	width: 80px;
}
.tbl_board table .tbl_header th:nth-child(4){
	width: 110px;
}
.tbl_board table .tbl_header th:nth-child(5){
	width: 70px;
}
.tbl_board table .tbl_header th:nth-child(6){
	width: 130px;
}
.tbl_board table .tbl_header th:nth-child(7){
	width: 115px;
}
.tbl_board table td{
	padding:8px 13px;
	border-bottom:1px solid lightgray;
	font-size:15px;
}
.tbl_board table td a{
	font-size:15px;
}
.tbl_board table tr:not(first-child) td:nth-child(2){
	text-align: left;
}
.tbl_board table td:not(.title){
	text-align: center;
}
.tbl_board > table tr > td > p{
	font-size: 15px;
	text-align: center;
	color: #fff;
	padding: 3px 0;
	border-radius: 5px;
}
.reply_o{
	background: #3e7395;
}
.reply_x{
	background: #fe5003;
}
.tbl_board table td button{
	border: 0;
    background: #3a4652;
    color: #fff;
    border-radius: 3px;
    font-size: 14px;
    padding: 5px;
}
.replyCnt{
	font-weight: 600;
}
.title>a:hover{
	color:red;
}
.title>img{
	width:12px;
}
</style>
<script type="text/javascript">
function draw_chart(target, v1, v2){
	$.jqplot(target, [ [ [ 'PC('+v1+"회)", v1 ], [ 'Mobile('+v2+"회)", v2 ] ] ], {
		grid: {
            drawBorder: false, 
            drawGridlines: false,
            background: '#fffdf6',
            shadow:false
        },
        axesDefaults: {
             
        },
        seriesDefaults:{
            renderer:$.jqplot.PieRenderer,
            rendererOptions: {
            	sliceMargin: 4,
            	showDataLabels: true
            }
        },
        legend: {
            show: true,
            rendererOptions: {
                numberRows: 1
            },
            location: 's'
        }
	});
}

$(function() {
	var tp = Number($(".statisticWrap > input[name='today_pc']").val());
	var tm = Number($(".statisticWrap > input[name='today_mobile']").val());
	var mp = Number($(".statisticWrap > input[name='month_pc']").val());
	var mm = Number($(".statisticWrap > input[name='month_mobile']").val());
	draw_chart("chart1", tp, tm);
	draw_chart("chart2", mp, mm);
});
</script>
</head>
<body>
	<div class="allWrap">
		<jsp:include page="include/header.jsp" />
		<div class="contentWrap">
			<div class="leftMenu">
				<ul>
					<li>
						<p><a href="${pageContext.request.contextPath}/admin/adminNotice">게시판</a></p>
						<div class="subMenu">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/adminNotice" style="font-weight: bold;">- 공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminNews">- 언론보도</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/adminAdvice">- 상담문의</a></li>
							</ul>
						</div>
					</li>
					<li>
						<p><a href="${pageContext.request.contextPath}/admin/adminStatistic" title="통계" id="statistics">통 계</a></p>
						<div class="subMenu">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/adminStatistic" id="statisticsDate">- 날짜별 방문 통계</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div><!-- leftMenu end -->
			<div class="centerMenu">
				<div class="statisticWrap">
					<h1 class="boardTitle">■ 통계현황 <a href="${pageContext.request.contextPath}/admin/adminStatistic">[자세히]</a></h1>
					<input type="hidden" name="today_pc" value="${cntList.today_pc}">
					<input type="hidden" name="today_mobile" value="${cntList.today_mobile}">
					<input type="hidden" name="month_pc" value="${cntList.month_pc}">
					<input type="hidden" name="month_mobile" value="${cntList.month_mobile}">
					<div class="chartWrap">
						<div id="chart1Wrap" class="cw">
							<h4>당일접속현황</h4>
							<div id="chart1" class="chart"></div>
						</div>
						<div id="chart2Wrap" class="cw">
							<h4>당월접속현황</h4>
							<div id="chart2" class="chart"></div>
						</div>
					</div>
				</div><!-- statisticWrap end -->
				<div class="adviceWrap">
					<h1 class="boardTitle">■ 상담문의 미답변 현황</h1>
					<div class="tbl_board">
						<table>
							<tr class="tbl_header">
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>등록일</th> 
								<th>조회</th>
								<th>답변상태</th>
								<th>비고</th>
							</tr>
							<c:choose>
							    <c:when test="${fn:length(list) == 0}">
						        	<tr>
						        		<td colspan="7" style=" text-align: center;">미답변 게시물이 없습니다.</td>
						        	</tr>
							    </c:when>
							    <c:otherwise>
							        <c:forEach var="item" items="${list}">
										<tr>
											<td class="no">${item.no}</td>
											<td class="title"><a href="${pageContext.request.contextPath}/admin/adminAdviceRead?page=1&perPageNum=10&searchType=n&keyword=&no=${item.no}">${item.title}</a></td>
											<td>${item.writer}</td>
											<td>${item.regdate}</td>
											<td>${item.cnt}</td>
											<td><p class="reply_x">답변대기</p></td>
											<td>
												<%-- <a href="${pageContext.request.contextPath}/admin/adminAdviceUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>수정</button></a> --%>
												<a href="${pageContext.request.contextPath}/admin/adminAdvice/#none"><button>수정</button></a>
												<a href="${pageContext.request.contextPath}/admin/adminAdviceDelete${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><button>삭제</button></a>
											</td>
										</tr>	
									</c:forEach>
							    </c:otherwise> 
							</c:choose>
						</table>
					</div><!-- tbl_board -->
				</div><!-- adviceWrap end -->
			</div><!-- centerMenu end -->
		</div><!-- contentWrap end -->
	</div><!-- allwrap end -->
</body>
</html>