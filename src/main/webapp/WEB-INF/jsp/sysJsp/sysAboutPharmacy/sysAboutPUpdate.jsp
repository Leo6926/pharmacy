<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${contextRoot }/css/aboutPharmacyStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>關於藥局-修改</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

<br>
<br>
<br>

<div class="row">
	<div class="col-6 container card">
		<h3>關於藥局-修改</h3>
		<form:form action="${contextRoot }/postSysAboutPUpdate" method="post" modelAttribute="findAboutPByIdData" enctype="multipart/form-data">
			
			<form:input type="hidden" path="aboutPId" />
			
			<div>新增照片</div> 
			<input type="file" multiple="multiple" accept="image/jpg , image/jpeg , image/png , image/gif" name="aboutPImg" >

			<br>
			<br>

			<label for="aboutPTitle" class="form-label">關於藥局標題</label>
			<form:input class="form-control" id="aboutPTitle" type="text" size="83" required="required" placeholder="請輸入標題" path="aboutPTitle"/>

			<label for="aboutPTitle" class="form-label">關於藥局內容</label>
			<form:textarea class="form-control" rows="5" id="aboutPContent" placeholder="請輸入文章內容" path="aboutPContent"/>

			<div class="row mt-3">
				<div class="col-9"></div>
				<div class="col-1 container">
					<button class="btn btn-success">送出</button>
				</div>
				<div class="col-1 container">
					<button type="reset" class="btn btn-outline-danger">清除</button>
				</div>
			</div>

		</form:form>

	</div>

</div>

</body>
</html>