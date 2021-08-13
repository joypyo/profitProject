<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.productBean"%>
<%@ page import="model.productDAO"%>
<%@ page import ="com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/productViewStyle.css">
</head>
<body>
 <%@ include file="/main_top.jsp" %>
<jsp:useBean id="pBean" class="model.productBean"/>
	<div class="main">

		<%			
		int prodnum = Integer.parseInt(request.getParameter("prodnum"));
			productDAO pdao = new productDAO();
			productBean bean = pdao.getProduct(prodnum); 
			
	
		%>
		<div class="content">			
				<div class="row">
					<div class="image">
					<img alt="상품 사진" style="width:100%" src="${pageContext.request.contextPath}/image/<%=bean.getImage()%>">
					</div>
					<div class="container">
						<h1><%=bean.getName()%></h1><br>
						<h2><%=bean.getPrice()%>원</h2><br>
						<p class="description"><%=bean.getContents()%></p>
						<p>
							<%if(session.getAttribute("id").equals("admin")){%>
							<a href="productUpdate.jsp?prodnum=<%=bean.getProdnum() %>" class="btn">수정하기 &raquo;</a> 
							<a href="productDelete.jsp?prodnum=<%=bean.getProdnum() %>" class="btn">삭제하기 &raquo;</a>
							<%}else{ %>
							<a href="productList.jsp" class="btn">상품 목록 &raquo;</a>
							<%} %>
						</p>
						
					</div>
				</div>
			</div>
		</div>

 <%@ include file="/main_bottom.jsp" %>
</body>
</html>