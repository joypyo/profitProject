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
					<img src="../image/foods/food11/main.PNG" alt="계란두부전"
						id="title_img">
					<h3>[혼자해먹기] 고단백 다이어트 건강식! 계란두부전</h3>
					<p>
						살이 너무 쪄서 다이어트 건강식으로 내맘대로 레시피.. 만들어봤어요~<br> 고단백 저염식..요것만 먹음 완전
						건강해질듯요ㅋㅋ
					</p>
				</div>
				<br>

				<div class="ingredients">
					<h3>[재료]</h3>
					<hr>
					<span>두부 100g(1/3모)</span> <span>계란 1개</span> <span>토마토 1개</span> <br>
					<br>

					<h3>[양념]</h3>
					<hr>
					<span>들기름 1T</span> <span>올리브오일 1T</span>
				</div>



				<div class="content">
					<h3>조리순서</h3>
					<hr>

					<div class="content-box">
						<img src="../image/foods/food11/egg1.PNG" alt="계란두부전" id="image"><br>
						<div class="number">1</div>
						<p>두부 적당량과 계란하나를 그릇에 담고!!</p>

					</div>

					<div class="content-box">
						<img src="../image/foods/food11/egg2.PNG" alt="계란두부전" id="image"><br>
						<div class="number">2</div>
						<p>포크로 계란도 풀고 두부도 풀어 줍니다!</p>

					</div>

					<div class="content-box">
						<img src="../image/foods/food11/egg3.PNG" alt="계란두부전" id="image"><br>
						<div class="number">3</div>
						<p>
							후라이팬에 들기름을 두르고 으깬두부와 계란을 바삭바삭 익혀줍니다.<br> 들기름이 건강에 좋다네요~~
						</p>

					</div>

					<div class="content-box">
						<img src="../image/foods/food11/egg4.PNG" alt="계란두부전" id="image"><br>
						<div class="number">4</div>
						<p>
							처음엔 좀 흐물흐물한거 같지만.. 두부가 어느정도 익으면.. <br>찢어지지 않고 잘 뒤집을수있어요^^
						</p>

					</div>

					<div class="content-box">
						<img src="../image/foods/food11/egg5.PNG" alt="계란두부전" id="image"><br>
						<div class="number">5</div>
						<p>
							토마토도 하나 썰어 두부굽고난 후라이팬에 익혀줍니다.<br> 익힌 토마토가 건강에 더 좋다니깐요~^^
						</p>

					</div>

					<div class="content-box">
						<img src="../image/foods/food11/egg6.PNG" alt="계란두부전" id="image"><br>
						<div class="number">6</div>
						<p>
							그릇에 담아 올리브유를 살짝 뿌려서 먹었어용. 올리브유는 가열하지 않는게<br> 건강에 좋다네용~ 마지막에
							확 부어져서 비주얼은 좀 별로지만요ㅠㅠ <br>그래도 두부 계란전 완성!!
						</p>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/MainMember/main_bottom.jsp"%>
	</div>
</body>
</html>