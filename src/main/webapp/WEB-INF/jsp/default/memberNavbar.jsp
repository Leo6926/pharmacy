<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>肉豆公藥局</title>
<meta charset="UTF-8">
<meta name="keywords" content="travel, tour, trip, online travel">
<meta name="description" content="online travel website">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">

</head>
<body id="top" data-aos-easing="ease" data-aos-duration="400" data-aos-delay="-1">

	<header id="the_header" class="animation_header" style="background-color: #C8E887;">
		<div class="navigation">
			<div style="float: left;">
				<a href="${contextRoot}/firstPage">
					<img src="${contextRoot}/images/logo.png" style="margin-top: 15px; margin-left: 3%;" width="68px" alt="肉豆公logo">
				</a>
			</div>

			<nav class="nav">
				<ul class="nav_list">
					<div class="web_bar" style="margin-bottom: 30px;">
						<li><a href="${contextRoot}/firstPage">首頁</a></li>
						<li><a href="${contextRoot}/aboutPharmacy">關於我們</a></li>
						<li><a class=" dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				             處方箋領藥說明
				         	</a>
				          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
				           		<li><a class="dropdown-item" href="${contextRoot}/prescription">處方箋領藥說明</a></li>
				          		<li><a class="dropdown-item" href="${contextRoot}/question/prescriptionQA">處方箋領藥說明Q&A</a></li>
				          </ul>
       					</li>
						<li><a href="${contextRoot}/commoditysPage">商品清單</a></li>
						<li><a href="${contextRoot}/message/add">常見問題</a></li>
					</div>
					
					
					<div class="dropdown">
						<a class="dropdown-toggle" type="button" id="memberService" data-bs-toggle="dropdown" aria-expanded="false">
							<img src="${contextRoot}/images/member.png" style="margin-top: 15px;" width="55px" alt="肉豆公會員">
						</a>
						<ul class="dropdown-menu" aria-labelledby="memberService">
							<li>
								<a class="dropdown-item" href="memberLogin/memberData/${memberData.membersId}">會員資料</a>
							</li>
							<li>
								<a class="dropdown-item" href="#">購買清單</a>
							</li>
							<li>
				                <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#signOut">登出</a>
				            </li>
						</ul>
						
					</div>
					
						
						
				</ul>
			</nav>
		</div>
	</header>

	
<!-- ---------------------------------------------------------------------------------------------------------------------------------------- -->

	
</body>
</html>