<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>헬스</title>
  <style>
  
  	body{
  	max-width :80%; 
    margin: 0 auto;

  	}
  	header {
  		display: flex;
  		background-color: #343a40;
  	    line-height: 1.5;

  	}
  	
  	#hometitle {
  		background-image:url('/img/logo.png');
  	}
  	
  	.login-title {
  		margin-left: auto;
  		display:flex;
  		align-items: center;
		justify-content: center;
  	}
  	
  	label, input {
  		
  	}
  	
  	.flex-login-title {
  		margin: 5px;
		color: white;
  	}
  		.background {
  		width:100%;
  		overflow:hidden;
  		background-image:url("img/new.jpg");
  		min-height:870px;
  		text-align: center;
  	}
  	.container-box{
  		border:4px solid white;
   	/*	background-color: white; */
  		min-height: 100px;
  		max-width: 80%;
  		width: 800px;
  		height: 650px;
  		display: inline-block;
  		margin: 180px;
  	}
  	h4{
  		padding-top: 0px;
  		font-size:40px;

  	}

  	.button1 {
    color: #fff;
    background-color: #f4623a;
    border-color: #f4623a;


}
	.button2 {
    padding: 1.25rem 2.25rem;
    font-size: .85rem;
    font-weight: 700;
    border: none;
    border-radius: 10rem;

}

a {
    text-decoration: none;

}
#icon{
	height: 400px;
}
 
  	
  
  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script>
  	$(function(){
		 $("#login-button").click(function(){
			 var userId = $("#userID").val();
			 var password = $("#password").val();
			 
			 if(userId == "") {
				 alert("Id를 입력해주세요")
				 $("#userID").focus();
				 return false;
			 }
			 if(password == "") {
				 alert("비밀번호를 입력해주세요")
				 $("#password").focus();
				 return false;
			 }
			 
			 $("form").submit();
		 })
	})
  </script>
<body>
<header>
	<a id="hometitle" href="${rootPath}/"><img src="img/logo.png"></a>
	<c:if test="${empty LOGIN}">
		<div class="login-title">
		<form action="login" method="POST">
			<label for="userId" class="flex-login-title">Id : </label> 
			<input type ="text" id="userId" name="userId" />
			
	    	<label for="password" class="flex-login-title">PassWord : </label> 
	    	<input type="password" id="password" name="password" />
	    	<a href="#" id="login-button" class="flex-login-title">로그인</a>
		</form>
		<a href="${rootPath}/user_join" class="flex-login-title">회원가입</a>
		</div>
	</c:if>
	<c:if test="${LOGIN ne null}">
		<div class="login-title">
			<a class="flex-login-title">${LOGIN.userName} 님 반갑습니다.</a>
			<a href="${rootPath}/logout" class="flex-login-title">로그아웃</a>
		</div>
	</c:if>
</header>
	<div class = "background">
		<div class = "background">
		<div class="container-box">
		<h4>헬스 서비스에 오신것을 환영합니다.</h4>
	
		<div id = "icon" > </div>
			<a class="button1 button2" href="food_select">칼로리 계산기</a>
		</div>
		

		</div>
		
	</div>
	
</body>
</html>