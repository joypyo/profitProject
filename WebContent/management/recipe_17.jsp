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
					<img src="../image/foods/food17/main.PNG" alt="두부스테이크"
						id="title_img">
					<h3>다이어트 요리 담백한 두부 스테이크</h3>
					<p>
						고기는 전혀 들어가지않고 두부와 채소들만 넣어 만들었답니다.<br>
						하지만 고소하면서도 부드러운 식감에 건강까지 챙길 수 있는 두부스테이크랍니다.
					</p>
				</div>
				<br>

				<div class="ingredients">
					<h3>[재료]</h3>
					<hr>
					<span>두부 350g</span> <span>계란 1개</span> <span>양파 1/2개</span> 
					<span>당근 1/4개</span> <span>대파 1개</span>
</div>	
				<div class="ingredients">
					<h3>[양념]</h3>
					<hr>
					<span>부침가루 2T</span> <span>소금 1/4t</span> <span>후추 조금</span>
				</div>

			
				<div class="content">
					<h3>조리순서</h3>
					<hr>

					<div class="content-box">
						<img src="../image/foods/food17/tofu1.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">1</div>
						<p>
						당근, 양파, 대파는 잘게 다져 준비해주세요.	
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food17/tofu2.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">2</div>
						<p>
						두부는 면보에 싸서 물기를 꾹 제거해주세요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food17/tofu3.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">3</div>
						<p>
							으깬 두부에 채소, 계란1개를 넣고 섞어주세요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food17/tofu4.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">4</div>
						<p>
							부침가루 2T, 소금 1/4t, 후추 조금 넣어주세요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food17/tofu5.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">5</div>
						<p>
							두부 반죽을 열심히 잘 치대어 주세요.<br>
						만약 반죽이 질다면 부침가루를 좀 더 넣어주세요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food17/tofu6.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">6</div>
						<p>
							반죽을 적당히 떼어 양손을 이용해 몇 번 더 
							치대어준 후 동그랗게 모양을 잡아주세요. 
							그 다음 부침가루를 골고루 묻혀 주세요. 
							부침가루를 묻히면 부서질 위험이 줄어든답니다.
						</p>
					</div>
					
					<div class="content-box">
						<img src="../image/foods/food17/tofu7.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">7</div>
						<p>
							팬에 기름을 두르고 약불로 두부 스테이크를 구워주세요.
						</p>
		
					</div>
					
					<div class="content-box">
						<img src="../image/foods/food17/tofu8.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">8</div>
						<p>
							앞 뒤 모두 노릇노릇 잘 구워졌다면 최종 완성이되요.<br>
							너무 자주 뒤집으면 부서질 위험이 있으니 주의해주세요.
						</p>
						
					</div>
					
					<div class="content-box">
						<img src="../image/foods/food17/tofu9.PNG" alt="두부스테이크" id="image"><br>
						<div class="number">9</div>
						<p>
							케찹, 돈까스소스, 
							데리야끼 소스 등 원하는 소스를 뿌려드시면 됩니다.
						</p>
						
					</div>
					
					
				</div>
			</div>
		</div>
		<%@ include file="/MainMember/main_bottom.jsp"%>
	</div>
</body>
</html>