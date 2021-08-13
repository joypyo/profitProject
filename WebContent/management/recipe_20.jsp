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
					<img src="../image/foods/food20/main.PNG" alt=" 브로콜리&당근&순두부들깨샐러드"
						id="title_img">
					<h3>건강한밥상/다이어트에 좋은 브로콜리&당근&순두부들깨샐러드</h3>
					<p>
					느끼한 마요네즈를 듬뿍뿌린 샐러드? <br>
					아닙니다~~ 건강한맛~순두부와 참깨/들깨가루가 <br>
					듬뿍들어가서 고소하면서도 부드럽게 맛있는 <br>
					브로콜리당근샐러드이네요~^^
					</p>
				</div>
				<br>

				<div class="ingredients">
					<h3>[재료]</h3>
					<hr>
					<span>브로콜리 1개</span> <span>당근 1/2쪽</span> 
					<span>순두부 1봉지</span> <span>야채데칠때 소금 1큰술</span> 
				</div>	
				<div class="ingredients">
					<h3>[양념]</h3>
					<hr>
					<span>들깨가루 4~5큰술</span> <span>통깨 2큰술</span> <span>소금 1꼬집</span>
				</div>

			
				<div class="content">
					<h3>조리순서</h3>
					<hr>

					<div class="content-box">
						<img src="../image/foods/food20/broccoli1.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">1</div>
						<p>
						브로콜리를 한입크기로 잘라주세요 <br><br>
						*유아반찬이면 작은크기로 잘라주세요*
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food20/broccoli2.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">2</div>
						<p>
						당근반쪽을 한입크기로 잘라주세요 너무 얇지않게 썰어주세요<br><br>
						*유아반찬이면 작은크기로 잘라주세요*
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food20/broccoli3.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">3</div>
						<p>
						펄펄 끓는물에 소금 1큰술을 넣고 자른 브로콜리와 당근을 넣고 30초간 데쳐주세요
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food20/broccoli4.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">4</div>
						<p>
						찬물에서 두번정도를 살살 흔들어 씻어 물기를 털어주세요<br><br>
						*물기를 쫘~악 빼주세요*
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food20/broccoli5.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">5</div>
						<p>
						순두부를 넣고 통깨/소금 1꼬집을 넣고 잘 섞어가면서 버무려주세요
						순두부로 무침을 하니 질척할꺼예요 이럴때 저만의 특수비법이 들어가요~
						</p>
						
					</div>

					<div class="content-box">
						<img src="../image/foods/food20/broccoli6.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">6</div>
						<p>
						바로~~~들깨가루를 넣어가면서 농도를 맞추어주세요
						고소한맛이 추가되면서 순두부의 남아있는 물기를 빨아들여서
						 부두러운 무침이 완성이 되네요
						</p>
					</div>
					
					<div class="content-box">
						<img src="../image/foods/food20/broccoli7.PNG" alt="브로콜리&당근&순두부들깨샐러드" id="image"><br>
						<div class="number">7</div>
						<p>
						아삭하면서도 부드럽고 고소한 브로콜리&당근&순두부들깨무침이 완성이 되었어요
						완성하고 나니 꼭 마요네즈가 들어간 샐러드같네요~ㅎ
						하지만 저칼로리및 영양이 고루 갖추어진 다이어트/건강반찬이랍니다~♡
						</p>		
					</div>		
				</div>
			</div>
		</div>
		<%@ include file="/MainMember/main_bottom.jsp"%>
	</div>
</body>
</html>