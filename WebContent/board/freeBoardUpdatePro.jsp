<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "model.freeBoardDAO" %>
<%@ page import = "model.boardBean" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id = "bBean" class="model.boardBean">
		<jsp:setProperty name = "bBean" property="*"/>
	</jsp:useBean>

<%
	freeBoardDAO bdao = new freeBoardDAO();
	String pass = bdao.getPass(bBean.getNum());
	
	if(pass.equals(bBean.getPassword())){
		bdao.updateBoard(bBean);
		
		response.sendRedirect("freeBoardList.jsp");
	}else{
%>
	<script>
		alert('패스워드를 다시 확인해 주세요.');
		history.go(-1);	
	</script>		
	<%} %>
	
</body>
</html>