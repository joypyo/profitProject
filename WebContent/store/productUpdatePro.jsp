<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.productBean" %>
<%@ page import="model.productDAO" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.File" %>
<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 실제로 파일 업로드 하기 위한 클래스 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
		
%>

	<jsp:useBean id = "pBean" class = "model.productBean">
		<jsp:setProperty name = "pBean" property ="*"/>
	</jsp:useBean>
	
<%
	productDAO pdao = new productDAO();
	pdao.updateProduct(request);

	out.println("<script>alert('상품이 수정 되었습니다'); location.href='productList.jsp'; </script>");



%>


</body>
</html>