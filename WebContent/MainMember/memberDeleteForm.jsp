<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<link rel="stylesheet" href="../css/frame2.css" type="text/css">
<body>
<%@ include file="main_top.jsp" %>
	<%
		String id = (String) session.getAttribute("id");

	if (id == null) {
		response.sendRedirect("loginForm.jsp");
	}
	%>
	<form action="memberDeletePro.jsp" method="post">
		<div class="inner-container">
			<div class="box">
				<h1>회원탈퇴</h1>
				<input type="text" value="<%=id%>" name="id" /> 
				<input type="password" placeholder="Password" name="password" /><br>
				<input type="submit" value="회원탈퇴"/> 
				<input type="button" value="돌아가기" onclick="location.href='main.jsp'"/>

			</div>
		</div>
	</form>
	<%@ include file="main_bottom.jsp" %>
</body>
</html>