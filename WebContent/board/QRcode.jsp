<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pro Fit</title>
</head>
<link rel="stylesheet" href="../css/frame.css" type="text/css">
<style type="text/css">

	
	.main{
		
		height:100%;
		width:100%;
	}

	#QRcode{
		margin: 10% auto;
	}

</style>
<body>

 
	<%@ include file="../MainMember/main_top.jsp" %>
	
	<div class="main" align="center">
		<div id="QRcode">
			<img src="../image/DISCOUNT.png" alt="fit" width="30%">
			<BR><BR>
			<H3>PROFIT 회원만의 혜택!<BR> 아래의 큐알코드를 제시하면 헬스 이용권 50%할인을 해드립니다! </H3><BR><BR>
			<img src="../image/couponQRcode.jpg" alt="fit" width="20%" >
			
		</div>
	</div>
   
	<%@ include file="../MainMember/main_bottom.jsp" %>

	
</body>
</html>