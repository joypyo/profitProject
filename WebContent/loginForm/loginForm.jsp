<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pro Fit</title>
<style>
body {
	padding: 0;
	margin: 0;
	background-image: url("./images/main.jpg");
	height: 100%;
	background-repeat: no-repeat;
	background-attachment: scroll;
	background-size: cover;
}

.inner {
	position: absolute;
}

.inner-container {
	width: 500px;
	height: 500px;
	position: absolute;
	top: calc(50vh - 200px);
	left: calc(50vw - 200px);
	overflow: hidden;
}

.box {
	position: absolute;
	height: 100%;
	width: 100%;
	font-family: Helvetica;
	color: #fff;
	background: rgba(0, 0, 0, 0.13);
	padding: 30px 0px;
}

.box h1 {
	text-align: center;
	margin: 30px 0;
	font-size: 30px;
}

.box input {
	display: block;
	width: 300px;
	margin: 20px auto;
	padding: 15px;
	background: rgba(0, 0, 0, 0.2);
	color: #fff;
	border: 0;
}

.box input:focus, .box input:active, .box button:focus, .box button:active
	{
	outline: none;
}

.box button {
	background: #742ECC;
	border: 0;
	color: #fff;
	padding: 10px;
	font-size: 20px;
	width: 330px;
	margin: 20px auto;
	display: block;
	cursor: pointer;
}

.box button:active {
	background: #27ae60;
}

.box p {
	font-size: 14px;
	text-align: center;
}

.box p span {
	cursor: pointer;
	color: #666;
	
}
</style>


</head>
<body>
	<form action="loginPro.jsp" method="post">
		<div class="inner-container">
			<div class="box">
				<h1>Login</h1>
				<input type="text" placeholder="Username" name="id"/> 	
				<input type="password" placeholder="Password" name="password"/> 
					<input type="submit" value="로그인">
					<input type="button" value="회원가입"
					onclick="location.href='joinForm.jsp'">
				<p>
					<span><a href="memberFindForm.jsp">회원정보찾기</a></span>
				</p>
			</div>
		</div>
	</form>



</body>

</html>