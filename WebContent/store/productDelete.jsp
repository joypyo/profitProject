<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "model.productDAO" %>
<%@ page import = "model.productBean" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	int prodnum = Integer.parseInt(request.getParameter("prodnum"));
	productDAO pdao = new productDAO();
	pdao.deleteProduct(prodnum);
	
	out.println("<script>alert('상품이 삭제 되었습니다'); location.href='productList.jsp'; </script>");


 %>
</body>
</html>