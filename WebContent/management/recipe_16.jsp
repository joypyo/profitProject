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
.wrapper {
	display: flex;
	flex-direction: column;
}
</style>

<body>

	<div class="wrapper">
		<%@ include file="/MainMember/main_top.jsp"%>
		<hr>
		<div class="main">
			<div class="inner">

				<div class="title">
					<img src="../image/foods/food16/main.PNG" alt="돼지고기 오이볶음"
						id="title_img">
					<h3>(다이어트) 돼지고기가 들어간 특별한 오이볶음~</h3>
					<p>
						돼지고기에 오이를넣어서 볶음요리를<br>
						만들었어요~다이어트음식으로 또는<br>
						아이들반찬으로 딱좋아요<br>
					</p>
				</div>
				<br>

				<div class="ingredients">
					<h3>[재료]</h3>
					<hr>
					<span>돼지고기 250g</span> <span>백오이 3개</span> <span>홍고추 1개</span>
				</div>
				<div class="ingredients">
					<h3>[양념]</h3>
					<hr>
					<span>간장 2큰술</span> <span>다진마늘 1큰술</span> <span>후추가루 조금</span>
					<span>설탕 1큰술</span> <span>식용류 1큰술</span> <span>참기름 1/2큰술</span>
					<span>통깨 1큰술</span>
				</div>
				
				<div class="content">
					<h3>조리순서</h3>
					<hr>

					<div class="content-box">
						<img src="../image/foods/food16/cucumber1.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">1</div>
						<p>돼지고기(잡채용)을 200g을 준비해주시고 <br>
						다진마늘/후추가루/간장/설탕을  <br>
						 넣어 밑간을 해주시고  <br>
						 30분간 숙성을 시켜주세요</p>
					
					</div>

					<div class="content-box">
						<img src="../image/foods/food16/cucumber2.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">2</div>
						<p>
							백오이3개를 3등분해서 돌려깍기를 해서  <br>
						 	가운데 씨앗부분에 심지를 제거하고  <br>
						 	얇게 채를 썰어 주시고  <br>
							소금을 넣어서 절여주세요</p>
					
					</div>

					<div class="content-box">
						<img src="../image/foods/food16/cucumber3.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">3</div>
						<p>
							10분간 절여주세요
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food16/cucumber4.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">4</div>
						<p>
							찬물에 한번 씻어서 물기를 최대한 꼭 짜주세요	
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food16/cucumber5.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">5</div>
						<p>
							홍고추 한개를 반으로 가르고 씻를 제거후 얇게 채를 썰어주세요
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food16/cucumber6.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">6</div>
						<p>
							숙성시켜둔 돼지고기를 팬에 식용류를 넣고  <br>
							 젓가락으로 섞어가면서 볶아주세요
						</p>
						
					</div>
					
					<div class="content-box">
						<img src="../image/foods/food16/cucumber7.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">7</div>
						<p>
							돼지고기가 다익을정도로 볶아졌으면 <br>
							오이절인것과 홍고추를 넣어주시고 <br>
							1분간 후리릭 볶아주시고 불을 끄신다음 <br>
							참기름과 통깨를 뿌리시어 완성하시고 <br>
							큰그릇이나 쟁반에 담아내서 식혀주세요
						</p>
					
						
					</div>
					
					<div class="content-box">
						<img src="../image/foods/food16/cucumber8.PNG" alt="돼지고기 오이볶음" id="image"><br>
						<div class="number">8</div>
						<p>
							오이에 부족한 단백질과 좋은성분을 돼지고기가 채워주어서  <br> 
							 다이어트에 도움이 많이 되고  <br>
							 아이들반찬으로도 좋아요
						</p>
					</div>

				</div>
			</div>
		</div>
		<%@ include file="/MainMember/main_bottom.jsp"%>
	</div>
</body>
</html>