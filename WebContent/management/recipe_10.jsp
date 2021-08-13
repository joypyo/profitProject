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
			<img src="../image/foods/food10/main.PNG" alt="양배추피자" id="title_img">
			<h3>[다이어트 식단] 양배추피자</h3>
			<p>다이어트하면 식단때문에 괴로우셨죠? 맛있게 먹으면서 이뻐질기회입니다^^
			 양배추피자로 한끼해결하세용 :) </p>
		</div>
		<br>

		<div class="ingredients">
			<h3>재료</h3>
			<hr>
			<span>양배추 (200g)</span>
			<span>파프리카 (1/4개)</span>
			<span>양파 (1/2개)</span>
			<span>햄 (70g)</span>
			<span>올리브(취향)</span>
			<span>치즈(100g)</span>
			<span>올리브유(1스푼)</span>
			<span>계란(2개)</span>
			<span>소금(2꼬집)</span>
			
		</div>
		
			<div class="content">
				<h3>조리순서</h3>
				<hr>
			<div class="content-box">
				<img src="../image/foods/food10/1.PNG" alt="양배추피자" id="image"><br>
				<div class="number">1</div>
				<p>
					양배추,양파,파프리카,햄,계란,올리브,치즈 재료를 준비합니다
				</p>
				<br><br>
			</div>
			<div class="content-box">	
				<img src="../image/foods/food10/2.PNG" alt="양배추피자" id="image"><br>
				<div class="number">2</div>
				<p>
					양배추,햄,파프리카,양파를 잘게 다져줍니다
					</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food10/3.PNG" alt="양배추피자" id="image"><br>
				<div class="number">3</div>
				<p>
				양배추와 계란2개를 잘섞어줍니다
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food10/4.PNG" alt="양배추피자" id="image"><br>
				<div class="number">4</div>
				<p>계란과 잘 버무려진 양배추에 소금 2꼬집을 넣어줍니다</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food10/5.PNG" alt="양배추피자" id="image"><br>
				<div class="number">5</div>
				<p>
					올리브유 한스푼을 후라이팬에 두르고 양배추를 1차로 익혀줍니다
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food10/6.PNG" alt="양배추피자" id="image"><br>
				<div class="number">6</div>
				<p>
					오븐에 굽기위해 팬으로 옮겨주고 다져놓은 재료들을 올려줍니다
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food10/7.PNG" alt="양배추피자" id="image"><br>
				<div class="number">7</div>
				<p>
					치즈를 올려줍니다
				</p>
				<br><br>
			</div>
			<div class="content-box">
				<img src="../image/foods/food10/8.PNG" alt="양배추피자" id="image"><br>
				<div class="number">8</div>
				<p>
					오븐에 넣어주고 200도로 10분 구워줍니다
				</p>
				<br><br>
			</div>
			
			<div class="content-box">
				<img src="../image/foods/food10/9.PNG" alt="양배추피자" id="image"><br>
				<div class="number">9</div>
				<p>맛있는 양배추피자 완성!</p>
				<br><br>
			</div>
			
			
			</div>
		</div>
		</div>



	 <%@ include file="/MainMember/main_bottom.jsp" %> 
</div>

</body>
</html>