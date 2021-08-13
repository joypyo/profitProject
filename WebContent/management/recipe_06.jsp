<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link rel="stylesheet" href="../css/recipeStyle.css" type="text/css"> 
 <link rel="stylesheet" href="../css/frame.css" type="text/css"> 

<style type="text/css">

	.wrapper{
		display:flex;
		flex-direction:column;
	}
	
</style>
	
<body>

<div class="wrapper">
	<%@ include file="/MainMember/main_top.jsp" %>

	<div class="main">
		<div class="inner">
		
		<div class="title">
			<img src="../image/foods/food6/main.PNG" alt="두부유부초밥" id="title_img">
			<h3>[다이어트 식단] 두부유부초밥</h3>
			<p>다이어트에 좋은 두부유부초밥입니다 </p>
		</div>
		<br>

		<div class="ingredients">
			<h3>재료</h3>
			<hr>
			<span>유부초밥 (식초 조미볶음 유부피)</span>
			<span>두부</span>
			
			
		</div>
		
			<div class="content">
				<h3>조리순서</h3>
				<hr>
			<div class="content-box">
				<img src="../image/foods/food6/1.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">1</div>
				<p>
					먼저 1인분을 먹을거라서 두부 반 모만 꺼내주세요물로 한번만 씻겨주세요.
				</p>
				<br><br>
			</div>
			<div class="content-box">	
				<img src="../image/foods/food6/2.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">2</div>
				<p>
					두부를 끓는 물에 5분대쳐주세요
					</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food6/3.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">3</div>
				<p>
				두부에 있는 물기를 면보로 짜주세요.
				면보가 없으면 물기가 있는대로라도 해주세요.
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food6/4.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">4</div>
				<p>두부를 그릇에 두고 식초소스와,조미료 볶음을 반만 넣어 주세요.</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food6/5.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">5</div>
				<p>
					이제 두부를 얇게 으깨줍니다.
					저는 으깨는 도구가 없어서 국자로 으깨주었습니다(맛이 싱거우시면 식초를 더 넣어줍니다)
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food6/6.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">6</div>
				<p>
					이제 유부에 있는 식초끼를 짜줍니다</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food6/7.PNG" alt="두부유부초밥" id="image"><br>
				<div class="number">7</div>
				<p>이제 유부 안에 두부 를 넣어 완성해주면 끝!!~♡
				      맛있게 드세용</p>
				<br><br>
			</div>
			
			
			</div>
		</div>
		</div>



	 <%@ include file="/MainMember/main_bottom.jsp" %> 
</div>

</body>
</html>