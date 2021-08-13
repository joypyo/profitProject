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
			<img src="../image/foods/food5/main.PNG" alt="두부덮밥" id="title_img">
			<h3>[다이어트 식단] 두부덮밥</h3>
			<p>볶음밥은 먹고싶고 속재료들이 부담스러울때
				담백하게 만들어 먹으면 좋은 두부덮밥입니다~ </p>
		</div>
		<br>

		<div class="ingredients">
			<h3>재료</h3>
			<hr>
			<span>두부 (1/2모)</span> 
			<span>새우가루 (1큰술)</span>
			<span>당근 (1/3개)</span>
			<span>식용유 (2큰술)</span>
			<span>닭가슴살 (100g)</span>
			<span>대파(1대)</span>
			<span>액젓(1큰술)</span>
			
		</div>
		
			<div class="content">
				<h3>조리순서</h3>
				<hr>
			<div class="content-box">
				<img src="../image/foods/food5/1.PNG" alt="두부덮밥" id="image"><br>
				<div class="number">1</div>
				<p>
					닭가슴살을 잘게 다져주세요
				</p>
				<br><br>
			</div>
			<div class="content-box">	
				<img src="../image/foods/food5/2.PNG" alt="두부덮밥" id="image"><br>
				<div class="number">2</div>
				<p>
					두부는 칼등으로 으깨주고
						대파와 당근도 다져주세요
					</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food5/3.PNG" alt="두부덮밥" id="image"><br>
				<div class="number">3</div>
				<p>
				기름두른 팬에 대파를 먼저넣고 볶다가 새우가루를 넣어주세요
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food5/4.PNG" alt="두부덮밥" id="image"><br>
				<div class="number">4</div>
				<p>파기름이 나왔다면 두부를 넣어
				      수분이 날아가도록 볶아주고</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food5/5.PNG" alt="두부덮밥" id="image"><br>
				<div class="number">5</div>
				<p>
					당근과 닭가슴살을 넣어 한번더 포슬포슬하게 볶아주세요
					간은 액젓으로 살짝 해주세요~
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food5/6.PNG" alt="두부덮밥" id="image"><br>
				<div class="number">6</div>
				<p>밥위에 살포시 얹어 덮밥으로도 좋고
				      그냥드셔도 부담없는 영양식입니다</p>
				<br><br>
			</div>
			
			
			</div>
		</div>
		</div>



	 <%@ include file="/MainMember/main_bottom.jsp" %> 
</div>

</body>
</html>