<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어트 레시피</title>
</head>
 <link rel="stylesheet" href="../css/recipeStyle2.css" type="text/css"> 
 <link rel="stylesheet" href="../css/frame.css" type="text/css"> 

<style type="text/css">

	.wrapper{
		display:flex;
		flex-direction:column;
	}
	
</style>
	
<body>

	<div class="wrapper">
		<%@ include file="/MainMember/main_top.jsp"%>

		<div class="main">
			<div class="inner">
				<div class="list">

					<div class="title" onclick="location.href='recipe_01.jsp'"	style="cursor: pointer;">

						<img src="../image/foods/food1/main.PNG" alt="닭가슴살고구마볶음"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살고구마볶음</h3>

					</div>

					<div class="title" onclick="location.href='recipe_02.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food2/main.PNG" alt="닭가슴살깻잎볶음"
							id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살깻잎볶음</h3>
					</div>

					<div class="title" onclick="location.href='recipe_03.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food3/main.PNG" alt="닭가슴살모닝빵미니버거" id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살모닝빵미니버거</h3>
					</div>

					<div class="title" onclick="location.href='recipe_04.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food4/main.PNG" alt="닭가슴살양배추덮밥"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살양배추덮밥</h3>
					</div>


					<div class="title" onclick="location.href='recipe_05.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food5/main.PNG" alt="두부덮밥" id="title_img">
						<p>[다이어트 음식]</p>
						<h3>두부덮밥</h3>
					</div>


					<div class="title" onclick="location.href='recipe_06.jsp'" style="cursor: pointer;">
						<img src="../image/foods/food6/main.PNG" alt="두부유부초밥"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>두부유부초밥</h3>
					</div>


					<div class="title" onclick="location.href='recipe_07.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food7/main.PNG" alt="면두부새우오일파스타" id="title_img">
						<p>[다이어트 음식]</p>
						<h3>면두부새우오일파스타</h3>
					</div>


					<div class="title" onclick="location.href='recipe_08.jsp'"style="cursor: pointer;">
						<img src="../image/foods/food8/main.PNG" alt="브로콜리당근닭가슴살스크램블" id="title_img">
						<p>[다이어트 음식]</p>
						<h3>브로콜리당근닭가슴살스크램블</h3>
					</div>


					<div class="title" onclick="location.href='recipe_09.jsp'" style="cursor: pointer;">
						<img src="../image/foods/food9/main.PNG" alt="시금치프리타타" id="title_img">
						<p>[다이어트 음식]</p>
						<h3>시금치프리타타</h3>
					</div>


					<div class="title" onclick="location.href='recipe_10.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food10/main.PNG" alt="양배추피자"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>양배추피자</h3>
					</div>


					<div class="title" onclick="location.href='recipe_11.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food11/main.PNG" alt="계란두부전"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>계란두부전</h3>
					</div>


					<div class="title" onclick="location.href='recipe_12.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food12/main.PNG" alt="고구마사과샐러드"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>고구마사과샐러드</h3>
					</div>

					<div class="title" onclick="location.href='recipe_13.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food13/main.PNG" alt="닭가슴살덮밥"id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살 덮밥</h3>
					</div>

					<div class="title" onclick="location.href='recipe_14.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food14/main.PNG" alt="닭가슴살버섯볶음 "	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살 버섯볶음</h3>
					</div>

					<div class="title" onclick="location.href='recipe_15.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food15/main.PNG" alt="닭다리스테이크"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭다리 스테이크</h3>
					</div>

					<div class="title" onclick="location.href='recipe_16.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food16/main.PNG" alt="돼지고기오이볶음"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>돼지고기 오이볶음</h3>
					</div>

					<div class="title" onclick="location.href='recipe_17.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food17/main.PNG" alt="두부스테이크" id="title_img">
						<p>[다이어트 음식]</p>
						<h3>두부스테이크</h3>
					</div>

					<div class="title" onclick="location.href='recipe_18.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food18/main.PNG" alt="우삼겹숙주찜"id="title_img">
						<p>[다이어트 음식]</p>
						<h3>우삼겹숙주찜</h3>
					</div>

					<div class="title" onclick="location.href='recipe_19.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food19/main.PNG" alt="시금치프리타타"id="title_img">
						<p>[다이어트 음식]</p>
						<h3>시금치프리타타</h3>
					</div>

					<div class="title" onclick="location.href='recipe_20.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food20/main.PNG" alt="브로콜리&당근&순두부들깨샐러드"id="title_img">
						<p>[다이어트 음식]</p>
						<h3>브로콜리&당근&순두부들깨샐러드</h3>
					</div>

					<div class="title" onclick="location.href='recipe_21.jsp'"	style="cursor: pointer;">
						<img src="../image/foods/food21/main.PNG" alt="삶은달걀샐러드"	id="title_img">
						<p>[다이어트 음식]</p>
						<h3>닭가슴살고구마볶음</h3>
					</div>
				</div>
			</div>
		</div>
	</div>




	<%@ include file="/MainMember/main_bottom.jsp" %> 


</body>
</html>