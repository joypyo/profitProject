<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.productBean"%>
<%@ page import="model.productDAO"%>
<%@ page import="java.util.*" %>
<%@ page import ="com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 목록</title>
<link href = "${pageContext.request.contextPath}/css/productListStyle.css" rel="stylesheet" type ="text/css"/>
</head>
<body>
 <%@ include file="/main_top.jsp" %>
<jsp:useBean id="pBean" class="model.productBean"/>
			<%
			request.setCharacterEncoding("UTF-8");
			
		
			productDAO pdao = new productDAO();
			ArrayList<productBean> list = pdao.getProductList();
			

			
			%>
<form action="productInfo.jsp" name="detailFrm" method="post" >
	<div class="main">
		<div class="banner">
			<div class="container">
				<h1>상품페이지</h1>
			</div>
		</div>
		<div class="content">
			<div class="container">
				<div class="row">
<%				
				for(productBean p:list){
%>		
					<div class="column">
						<a href="productInfo.jsp?prodnum=<%=p.getProdnum()%>">
						<img src="${pageContext.request.contextPath}/image/<%=p.getImage()%>" alt="상품사진" style="width:100%"></a>
						<h3><a href="productInfo.jsp?name=<%=p.getName()%>"><%=p.getName()%></a></h3>
						<p><%=p.getPrice()%>원</p>
					</div>
					    <input type="hidden" name="prodnum" value="<%=p.getProdnum()%>">
					<%
					}
					%>
				
				</div>
			</div>
		</div>
	</div>
</form>

 <%@ include file="/main_bottom.jsp" %>
</body>
</html>