<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${contextRoot }/css/aboutPharmacyStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>關於藥局呦(管理者)修改頁面</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

<div class="row">

	<div class="col-3 mt-5">
		<div class="row">
			<div class="col-10 container">
				<div class="list-group">
					<div class="list-group-item" style="text-align:center; background-color: #EAF9CE ;">
						<span style="font-size: 24px;">關於我們</span> 
					</div>
					<a href="${contextRoot }/sysAboutPharmacy" id="aboutPharmacyList" class="list-group-item list-group-item-action">
						<h4>關於藥局</h4>
						<small>想多了解藥局的大小事嘛?</small>				
					</a>
					<a href="${contextRoot }/sysPharmacyHistory" id="pHistoryList" class="list-group-item list-group-item-action">
						<h4>藥局沿革</h4>
						<small>小小的藥局，一點一滴的過程</small>
					</a>
					<a href="#" id="philosophyList" class="list-group-item list-group-item-action">
						<h4>經營理念</h4>
						<small>我們的堅持是您最安心的選擇</small>
					</a>
				</div>				
			</div>
		</div>
	</div>

	<div class="col-9 mt-5">
		<a href="sysAboutPAdd/${page.totalPages }">
			<button type="button" class="btn btn-success btn-lg">新增關於藥局頁面</button>
		</a>
		<div class="row justify-content-center mt-3">
			<c:forEach var="aboutPData" items="${page.content }">
					<div class="col-1 align-self-center">
						<c:if test="${aboutPData.aboutPId > 1}">
							<a href="${contextRoot }/sysAboutPharmacy?p=${aboutPData.aboutPId-1 }">
								<img alt="往左翻頁" width="55px" height="100px" style="transform: rotate(180deg);" src="${contextRoot }/images/right-arrow.png">
							</a>
						</c:if>
					</div>
					<!-- 圖片 -->
					<div class="col-4">
						<c:choose>
							<c:when test="${fAPImgByFkId.size() > 1 }">
								<!-- 輪播 -->
								<div id="carouselAPImg" class="carousel slide carousel-dark" data-bs-ride="carousel">
									<!--下方按鈕-->
									<div class="carousel-indicators" id="aboutPImgButton">
										<c:forEach begin="0" end="${fAPImgByFkId.size() }" items="${fAPImgByFkId }" varStatus="s">
											<button type="button" data-bs-target="#carouselAPImg" data-bs-slide-to="${s.index }" aria-current="true" aria-label="Slide ${s.index+1 }"></button>
										</c:forEach>
									</div>
									<!-- 輪播圖片 -->
									<div class="carousel-inner" id="aboutPImg">
										<c:forEach var="fAPImgByFkId" items="${fAPImgByFkId }">
											<div class="carousel-item">
												<img class="aboutPImg" style="float : left;" alt="關於藥局圖片" src="${contextRoot }/aboutPImg/${fAPImgByFkId.abountPImgId }">
											</div>
										</c:forEach>
									</div>
									<!--左右按鈕-->
									<button class="carousel-control-prev" type="button" data-bs-target="#carouselAPImg" data-bs-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Previous</span>
									</button>
									<button class="carousel-control-next" type="button" data-bs-target="#carouselAPImg" data-bs-slide="next">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Next</span>
									</button>
								</div>
							</c:when>
									
							<c:otherwise>
								<c:forEach var="fAPImgByFkId" items="${fAPImgByFkId }">
									<img class="aboutPImg" alt="關於藥局圖片" src="${contextRoot }/aboutPImg/${fAPImgByFkId.abountPImgId }">
								</c:forEach>
							</c:otherwise>
									
						</c:choose>
					</div>
					<!-- 內容 -->
					<div class="col-6">
						<div class="row">
							<div class="col">
								<span style="font-size: 32px ; color: #2d862d ; font-weight: bold ;">${aboutPData.aboutPTitle}</span>
							</div>
							<div class="w-100"></div>
							<div class="col mt-5">
								<span style="font-size: 18px ; letter-spacing: 1px;">${aboutPData.aboutPContent }</span>
							</div>
						</div>
								
					</div>
					
					<div class="col-1 align-self-center">
						<c:if test="${aboutPData.aboutPId < page.totalPages}">
							<a href="${contextRoot }/sysAboutPharmacy?p=${aboutPData.aboutPId+1 }">
								<img alt="往右翻頁" width="55px" height="100px" src="${contextRoot }/images/right-arrow.png">
							</a>
						</c:if>
					</div>
					
					<div class="col-9"></div>

					<div class="col-3">
						<a href="sysAboutPUpdate/${aboutPData.aboutPId }">
							<button type="button" class="btn btn-outline-primary btn-lg">修改</button>
						</a>
						<a href="sysAboutPDelete/${aboutPData.aboutPId }" onclick="return confirm('確認刪除嗎?')">
							<button type="button" class="btn btn-danger btn-lg">刪除</button>
						</a>
					</div>

				</c:forEach>
		</div>
	</div>

</div>


<!-- ------------------------------------------------------------------------------------------------------------------------------------------- -->
<script>

	$(function(){
		$("#aboutPImg div:first-child").addClass("active");
		$("#aboutPImgButton button:first-child").addClass("active");
	})

</script>



</body>
</html>