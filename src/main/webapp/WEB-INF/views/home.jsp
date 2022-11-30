<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script>
$(function(){
    $("#signupBtn").on("click",function(){
        location.href="/member/signupPage";
    })
})
</script>
</head>
<body>
	<div class="container">
		<h2>Login Box</h2>
		<form action="/member/login" method="post">
			<div class="mb-3">
				<label class="form-label" for="id">아이디</label> <input
					class="form-control" type="text" name="id" id="id" />
			</div>
			<div class="mb-3">
				<label class="form-label" for="pwd">비밀번호</label> <input
					class="form-control" type="password" name="pwd" id="pwd" />
			</div>
			<button class="btn btn-outline-primary btn-sm">로그인</button>
			<button type="button" id="signupBtn">회원가입</button>
		</form>
	</div>
</body>
</html>