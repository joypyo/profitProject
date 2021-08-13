<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.boardBean" %>
<%@ page import="model.freeBoardDAO" %>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글쓰기</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="bBean" class="model.boardBean">
		<jsp:setProperty name="bBean" property="*"/>
	</jsp:useBean>
<%
	freeBoardDAO bdao = new freeBoardDAO();
	bdao.insertFreeBoard(bBean);
	
	response.sendRedirect("freeBoardList.jsp");
%>		


</body>
</html>