<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.freeBoardDAO" %>
<%@ page import = "model.boardBean" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답글쓰기</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

	<jsp:useBean id = "bBean" class = "model.boardBean">
		<jsp:setProperty name = "bBean" property="*"/>
	</jsp:useBean>

<%
	freeBoardDAO bdao = new freeBoardDAO();
	bdao.replyFreeBoard(bBean);
	response.sendRedirect("freeBoardList.jsp");
%>
</body>
</html>