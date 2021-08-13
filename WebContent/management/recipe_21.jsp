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
					<img src="../image/foods/food21/main.PNG" alt="삶은달걀샐러드"
						id="title_img">
					<h3>삶은달걀샐러드</h3>
					<p>
					영양소는 가득하고, 살은 찌지 안고, <br>
					 한끼 식사로 충분한 삶은달걀샐러드입니다.
					</p>
				</div>
				<br>

				<div class="ingredients">
					<h3>[재료]</h3>
					<hr>
					<span>달걀 (2개)</span>
					 <span>감자 (1개)</span> 
					<span>방울토마토 (5개)</span>
					 <span>양배추 (조금)</span> 
					 <span>블랙올리브 (5개)</span> 
				</div>	
				
				<div class="ingredients">
					<h3>[샐러드드레싱]</h3>
					<hr>
					<span>퀸치레몬 (1수저)</span>
					 <span>올리브오일 (3수저)</span> 
					 <span>발사믹식초 (2수저)</span>
					  <span>소금 (1고집)</span>
					   <span>후추 (톡톡)</span>
				</div>

			
				<div class="content">
					<h3>조리순서</h3>
					<hr>

					<div class="content-box">
						<img src="../image/foods/food21/1.PNG" alt="삶은달걀샐러드" id="image"><br>
						<div class="number">1</div>
						<p>
						암웨이퀸소형 팬에 키친타올 깔아주고
						소주잔으로 물 반잔 넣고, 달걀 2개를 올리고
						인덕션 약불로 10분이면 달걀이 알맞게 익어요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food21/2.PNG" alt="삶은달걀샐러드" id="image"><br>
						<div class="number">2</div>
						<p>
						감자는 간편하게 전자렌지에 삶아요.
						감자를 물에 씻어서, 일회용 비닐팩에 넣어 4분이면 포슬포슬하게 쪄져요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food21/3.PNG" alt="삶은달걀샐러드" id="image"><br>
						<div class="number">3</div>
						<p>
						달걀, 감자는 먹기좋은 크기로 썰고,
						양배추는 필러로 곱게 채설어 주고,
						방울토마토는 반으로 잘라 줍니다.
						블랙올리브는 세토막 내면 될거 같아요.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food21/4.PNG" alt="삶은달걀샐러드" id="image"><br>
						<div class="number">4</div>
						<p>
						샐러드드레싱을 만들어 줍니다.
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food21/5.PNG" alt="삶은달걀샐러드" id="image"><br>
						<div class="number">5</div>
						<p>
						접시에 보기 좋게 담아서
						샐러드드레싱을 뿌려 줍니다.
						</p>
						
					</div>

					
				</div>
			</div>
		</div>
		<%@ include file="/MainMember/main_bottom.jsp"%>
	</div>
</body>
</html>