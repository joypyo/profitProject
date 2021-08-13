<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link rel="stylesheet" href="../css/frame2.css" type="text/css">

</head>
<body>

<%@ include file="main_top.jsp" %>  
	<form action="loginPro.jsp" method="post">
	<div class="wrapper">
		<div class="inner-container">
			<div class="box">
				<h1>Login</h1>
				<input type="text" placeholder="Username" name="id"/> 	
				<input type="password" placeholder="Password" name="password"/> 
					<input type="submit" value="로그인">
					<input type="button" value="회원가입"	onclick="location.href='joinForm.jsp'">
				<p>
					<span><a href="memberFindForm.jsp">회원정보찾기</a></span>
				</p>
			</div>
		</div>
	</div>
	</form>

 <%@ include file="main_bottom.jsp" %> 
</body>

</html>