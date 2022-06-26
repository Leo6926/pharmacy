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

<link href="${contextRoot}/css/layout.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="${contextRoot }/css/membersStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>會員資料</title>
</head>
<body>




<jsp:include page="/WEB-INF/jsp/default/myNavbar2.jsp" />

<div class="row">

    <div class="col-3">
        <br>
        <br>
        <div class="row">
            <div class="col-10 container">
				<div class="list-group">
					<div class="list-group-item">
						<h3>會員中心</h3>
					</div>
					
					<a href="#" class="list-group-item list-group-item-action active" aria-current="true">
						<h4>會員資料</h4>
					</a>
					
					<a href="#" class="list-group-item list-group-item-action">
						<h4>購物車</h4>
					</a>
					
					<a href="#" class="list-group-item list-group-item-action">
						<h4>購買清單</h4>
					</a>
				</div>
            </div>
        </div>
    </div>

    <div class="col-9">
		<br>
		<br>
    	<div class="row">
    		<div class="col-10 container card">
				<form:form action="${contextRoot }/memberLogin/updataMemberData" method="post" modelAttribute="memberData">
			
					<div class="membersName">
						<span>姓名: ${memberData.membersName }</span>
						<button class="membersNameBtn btn btn-outline-success" type="button">編輯</button>
					</div>

					<div class="updataMembersName" style="display:none ;">
						<div class="row align-items-center">
							<div class="col-auto">
								<label for="membersName" class="col-form-label">姓名: </label>
							</div>
							<div class="col-3">
								<form:input id="membersName" class="form-control" value="${memberData.membersName }" path="membersName"/>
							</div>
							<div class="col-2">
								<button class="btn btn-outline-success">送出</button>
							</div>
						</div>
					</div>

					<div class="membersGender">
						<span>
							性別: 
							<c:choose>
								<c:when test="${memberData.membersGender.equals('male')}">男</c:when>
								<c:when test="${memberData.membersGender.equals('female')}">女</c:when>
								<c:otherwise>其他</c:otherwise>
							</c:choose>
						</span>

						<button class="membersGenderBtn btn btn-outline-success" type="button">編輯</button>
					</div>

					<div class="updataMembersGender" style="display:none ;">
						<button>送出</button>
					</div>

					<div class="membersBirthday">
						<span>生日: ${memberData.membersBirthday }</span>
						<button class="membersBirthdayBtn btn btn-outline-success" type="button">編輯</button>
					</div>

					<div class="updataMembersBirthday" style="display:none ;">
						<button>送出</button>
					</div>

					<div class="membersPhone">
						<span>手機號碼: ${memberData.membersPhone }</span>
						<button class="membersPhoneBtn btn btn-outline-success" type="button">編輯</button>
					</div>
					
					<div class="updateMembersPhone" style="display:none ;">
						<button>送出</button>
					</div>

					<div class="membersEmail">
						<span>Email: ${memberData.membersEmail }</span>
						<button class="membersEmailBtn btn btn-outline-success" type="button">編輯</button>
					</div>
					
					<div class="updateMembersEmail" style="display:none ;">
						<button>送出</button>
					</div>


					<div class="membersAddress">
						<span>地址: ${memberData.membersAddress }</span>
						<button class="membersAddressBtn btn btn-outline-success" type="button">編輯</button>
					</div>
					
					<div class="updateMembersAddress" style="display:none ;">
						<button>送出</button>
					</div>
					
					<form:input hidden="trun" path="membersId"/>
					<form:input hidden="trun" path="membersEmail"/>
					<form:input hidden="trun" path="membersPhone"/>
					<form:input hidden="trun" path="membersAccount"/>
					<form:input hidden="trun" path="membersPassword"/>
					<form:input hidden="trun" path="membersGender"/>
					<form:input hidden="trun" path="membersBirthday"/>
					<form:input hidden="trun" path="membersAddress"/>
					
				</form:form>
			</div>
    	</div>


        
    </div>

</div>

<!-- ----------------------------------------------------------------------------------------------------------------------------- -->

<script>

	$(function(){

		$(".membersNameBtn").click(function(){
			updataName();
		})
		
		function updataName(){
			$(".membersName").hide();
			$(".updataMembersName").show();
		}

		$(".membersGenderBtn").click(function(){
			updateGender();
		})

		function updateGender(){
			$(".membersGender").hide();
		}

		$(".membersBirthdayBtn").click(function(){
			updateBirthday();
		})

		function updateBirthday(){
			$(".membersBirthday").hide();
		}

		$(".membersPhoneBtn").click(function(){
			updatePhone();
		});

		function updatePhone(){
			$(".membersPhone").hide();
		}

		$(".membersEmailBtn").click(function(){
			updateEmail();
		})

		function updateEmail(){
			$(".membersEmail").hide();
		}

		$(".membersAddressBtn").click(function(){
			updateAddress();
		})

		function updateAddress(){
			$(".membersAddress").hide();
		}






	})

</script>

<br>
<br>
<br>
<jsp:include page="/WEB-INF/jsp/default/footer.jsp" />

</body>
</html>