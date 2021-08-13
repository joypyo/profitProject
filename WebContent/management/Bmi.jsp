<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산기</title>
</head>
<style type="text/css">

	.wrapper{
		display:flex;
		flex-direction:column;
	}
	
</style>
<link rel="stylesheet" href="../css/frame.css" type="text/css">
<link rel="stylesheet" href = "../css/bmiStyle.css" type ="text/css"/>
<script>
	function result() {
		
		if(document.getElementById("cm").value==""){
			alert('신장을 입력하세요.');
			return false;
		}
		if(document.getElementById("kg").value==""){
			alert('체중을 입력하세요.');
			return false;
		}

		var cm = document.getElementById("cm").value;
		cm = parseInt(cm) * 0.01;
		var height = cm * cm;

		var weight = document.getElementById("kg").value;
		weight = parseInt(weight);
		var BMI = weight / height;
		document.getElementById("CalResult").innerHTML = "귀하의 BMI지수는 "+ BMI.toFixed(2) + " 입니다.";

		if (BMI < 18.5) {
			var result1 = document.getElementById("bmi1");
			result1.style.backgroundColor = "#5AD2FF";
		} else if (BMI > 18.5 && BMI < 23) {
			var result2 = document.getElementById("bmi2");
			result2.style.backgroundColor = "#6DD66D";
		} else if (BMI > 23 && BMI < 25) {
			var result3 = document.getElementById("bmi3");
			result3.style.backgroundColor = "#FFC341";
		} else if (BMI > 25 && BMI < 30) {
			var result4 = document.getElementById("bmi4");
			result4.style.backgroundColor = "#FF6464";
		} else if (BMI > 30 && BMI < 35) {
			var result5 = document.getElementById("bmi5");
			result5.style.backgroundColor = "#FF6464";
		} else if (BMI > 35){
			var result6 = document.getElementById("bmi6");
			result6.style.backgroundColor = "#EB0000";
		}
	}

</script>

<body>
<div class="wrapper">
	<%@ include file="/MainMember/main_top.jsp" %>

		<div class="main">
			<div class="inner">	
		<h2 align="center">BMI 계산기</h2>
		<br>
		<form id="bmiForm">
			<div align="center">
				<label>신장 <input id="cm" type="text" name="cm"	placeholder="&nbsp;cm"></label><br> 
				<label>체중 <input id="kg" type="text" name="kg" placeholder="&nbsp;kg"></label><br>
		
			</div>
			<div class="button" align="center">
				<input type=button id="CalBtn" value="계산하기" onclick="result()">
			</div>
			<p align="center" id="CalResult"></p>
		
			<table>
				<tr>
					<th colspan="2">BMI 계산공식 : 체중(kg)/신장(m)²</th>
				</tr>
				<tr id="bmi1">
					<td>18.5미만</td>
					<td>저체중</td>
				</tr>
				<tr id="bmi2">
					<td>18.5 ~ 23</td>
					<td>정상</td>
				</tr>
				<tr id="bmi3">
					<td>23 ~ 25</td>
					<td>과체중</td>
				</tr>
				<tr id="bmi4">
					<td>25 ~ 30</td>
					<td>비만(1단계 비만)</td>
				</tr>
				<tr id="bmi5">
					<td>30 ~ 35</td>
					<td>고도비만(2단계 비만)</td>
				</tr>
				<tr id="bmi6">
					<td>35이상</td>
					<td>초 고도비만(3단계 비만)</td>
				</tr>
			</table>
		</form>     
	 
	</div>
	</div>
	</div>

	<%@ include file="/MainMember/main_bottom.jsp" %>

</body>
</html>