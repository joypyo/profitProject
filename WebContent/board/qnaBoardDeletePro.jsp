<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "model.qnaBoardDAO" %>
<%@ page import = "model.boardBean" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	String pass = request.getParameter("password");
	
	qnaBoardDAO bdao = new qnaBoardDAO();
	String password = bdao.getPass(num);


	if(pass.equals(password)){
		bdao.deleteBoard(num);
		
		response.sendRedirect("qnaBoardList.jsp");
	}else{
%>
		<script>
		
		alert("비밀번호를 다시 확인해 주세요.");
		history.go(-1);
		</script>
		<%} %>
</body>
</html>