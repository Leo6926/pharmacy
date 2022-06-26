<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>藥局沿革-修改</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

<br>
<br>
<br>

<div class="row">
	<div class="col-6 container card">
		<h3>藥局沿革-修改</h3>
		<form:form action="${contextRoot }/postSysPH" method="post" modelAttribute="pHData" enctype="multipart/form-data">
			<form:input hidden="true" path="pHistoryId"/>
			
			<div>新增照片</div>
			<input type="file" multiple="multiple" accept="image/jpg , image/jpeg , image/png , image/gif" name="pHImg" >
			
			<br>
			<br>
			
			<label for="pHistoryTitle" class="form-label">藥局沿革標題</label>
			<form:input class="form-control" id="pHistoryTitle" path="pHistoryTitle"/>
			
			<label for="pHistoryTitle" class="form-label">藥局沿革內容</label>
			<form:textarea class="form-control" rows="5" id="pHistoryContent" path="pHistoryContent"/>
		
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