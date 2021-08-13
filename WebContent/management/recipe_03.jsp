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
			<img src="../image/foods/food3/main.PNG" alt="닭가슴살모닝빵미니버거" id="title_img">
			<h3>[다이어트 식단] 닭가슴살모닝빵미니버거</h3>
			<p>주말 아침 집 근처 공원에서 가볍게 운동을 하고 모닝빵에 닭가슴살과 <br>
			브리치즈를 넣은,단백질이 풍부한 모닝빵 샌드위치를 만들어 우유나<br>
		         커피 한잔과 함께 먹습니다.담백하고 고소한 닭가슴살과 크림처럼 <br>
			부드러운 브리치즈의 맛이 잘어울려 햇살 좋은 오전에 브런치로  <br>
			먹기에도 딱 좋고, 간편하게 도시락으로 싸서 야외에 나가서 먹기도 너무 좋습니다.</p>
		</div>
		<br>

		<div class="ingredients">
			<h3>재료</h3>
			<hr>
			<span>익힌 닭가슴살 (1개)</span> 
			<span>모닝빵 (5개)</span>
			<span>브리치즈 (50g)</span>
			<span>양상추 또는 샐러드채소 (조금)</span>
			
		</div>
		
		<div class="ingredients">
			<h3>소스</h3>
			<hr>
			<span>마요네즈 (1큰술)</span>
			<span>허니머스터드(1작은술)</span>
		</div>
		
			<div class="content">
				<h3>조리순서</h3>
				<hr>
			<div class="content-box">
				<img src="../image/foods/food3/1.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">1</div>
				<p>
					익혀서 파는 닭가슴살 1개와 모닝빵 5개, 브리치즈 50g, 양상추나 샐러드채소를 작게 잘라서 준비합니다.
				</p>
				<br><br>
			</div>
			<div class="content-box">	
				<img src="../image/foods/food3/2.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">2</div>
				<p>
					닭가슴살은 오일을 두른 팬에 겉면이 노릇해지도록 구워준 후 잠시 식혀줍니다.
					</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food3/3.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">3</div>
				<p>
					마요네즈 1큰술과 허니머스터드 소스 1작은술을 같이 섞어줍니다.
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food3/4.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">4</div>
				<p>모닝빵은 칼로 깊이 칼집을 내줍니다. 완전히 자르지는 않습니다.</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food3/5.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">5</div>
				<p>
					만들어 놓은 소스를 빵 안쪽면에 고루 발라줍니다.
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food3/6.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">6</div>
				<p>구운 닭가슴살과 브리치즈는 빵에 넣기 좋은 사이즈로 잘라줍니다.</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food3/7.PNG" alt="닭가슴살모닝빵미니버거" id="image"><br>
				<div class="number">7</div>
				<p>모닝빵 안에 샐러드 채소, 닭가슴살, 브리치즈 순으로 넣어줍니다. 커피나 우유와 함께 드시면 좋습니다.</p>
				<br><br>
			</div>
			
			</div>
		</div>
		</div>



	 <%@ include file="/MainMember/main_bottom.jsp" %> 
</div>

</body>
</html>