<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/frame.css" type="text/css">
<style type="text/css">

.wrapper{
	display:flex;
	flex-direction:column;
}
	
.main{
	width:100%;
}

.main_box{
	margin-top: 3%;
	margin-left:3%;
	width:100%;
	display:flex;
}

.health{
	padding-right:15px;

	
}


</style>
<body>

<div class="wrapper">

	<%@ include file="../MainMember/main_top.jsp" %>

	<div class="main">
	   <div class="main_box">
	      <div class="health">
			<a href="QRcode.jsp" target="_self">
				<img src="../image/health1.jpg" alt="헬스장1" style="width:560px; height:315px;">
				<h3>PRO GYM-안산점</h3>
			</a>
	      </div>	      
 	      <div class="health">
			<a href="QRcode.jsp" target="_self">
				<img src="../image/health2.jpg" alt="헬스장2" style="width:560px; height:315px;">
				<h3>FIT GYM-상록점</h3>
			</a>
	      </div>	       
  	      <div class="health">
			<a href="QRcode.jsp" target="_self">
				<img src="../image/health3.jpg" alt="헬스장3" style="width:560px; height:315px;">
				<h3>GOOD HEALTH-고잔점</h3>
			</a>
	      </div>	      
	   </div>
	   <div class="main_box">
	      <div class="health">
			<a href="QRcode.jsp" target="_self">
				<img src="../image/health4.jpg" alt="헬스장4" style="width:560px; height:315px;">
				<h3>POWER GYM-안산점</h3>
			</a>
	      </div>	            
	   </div>


	</div>

	<%@ include file="../MainMember/main_bottom.jsp" %>

	

</div>
</body>
</html>