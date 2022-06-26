<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<link href="${contextRoot}/css/layout.css" rel="stylesheet">
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登入失敗</title>
</head>
<body>
	
	<script>
		window.setInterval("location='firstPage'",5000); 
	</script>
	
<jsp:include page="/WEB-INF/jsp/default/myNavbar2.jsp" />	
	
<br>
<br>
<br>
	
	<div class="row justify-content-center">
	
		<div class="col-6 card align-self-center">
			<br>
			<h2>登入失敗，五秒後自動傳回首頁</h2>
			<button class="btn btn-outline-success">回首頁</button>
		</div>
	
	</div>
	
<br>
<br>
<br>
	
<jsp:include page="/WEB-INF/jsp/default/footer.jsp" />	
	
</body>
</html>