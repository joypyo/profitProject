<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.exerciseDAO" %>
<%@ page import = "model.exerciseBean" %>  
<%@ page import = "java.util.Vector" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pro Fit</title>
</head>
<link rel="stylesheet" href="../css/frame.css" type="text/css">
<style type="text/css">

	.main{
		margin-top: 0px;
		height:100%;
		width:100%;
		text-align:center;
	}

	.exercise{
		dispay:inline-block;
	}
</style>
<script>
	function readIMG(i){
		var img = i.value;
		if(img == 'running'){
			document.getElementById("screenIMG").src=src="../images/exercise/running.jpg";
		}
		else if(img == 'walking'){
			document.getElementById("screenIMG").src=src="../images/exercise/walking.jpg";
		}
		else if(img == 'swimming'){
			document.getElementById("screenIMG").src=src="../images/exercise/swimming.jpg";
		}
		else if(img == 'bicycle'){
			document.getElementById("screenIMG").src=src="../images/exercise/bicycle.jpg";
		}
		else if(img == 'mountaineering'){
			document.getElementById("screenIMG").src=src="../images/exercise/mountaineering.jpg";
		}
		else if(img == 'benchpress'){
			document.getElementById("screenIMG").src=src="../images/exercise/benchpress.jpg";
		}
		else if(img == 'burpeetest'){
			document.getElementById("screenIMG").src=src="../images/exercise/bureetest.png";
		}
		else if(img == 'pullup'){
			document.getElementById("screenIMG").src=src="../images/exercise/pullup.jpg";
		}
		else if(img == 'pushup'){
			document.getElementById("screenIMG").src=src="../images/exercise/pushup.jpg";
		}
		else if(img == 'squat'){
			document.getElementById("screenIMG").src=src="../images/exercise/squat.jpg";
		}
		else if(img == 'deadlift'){
			document.getElementById("screenIMG").src=src="../images/exercise/deadlift.jpg";
		}
		else{
			document.getElementById("screenIMG").src=src="../images/exercise/running.jpg";
		}
	}
	

</script>
<body>
<%	
	request.setCharacterEncoding("UTF-8");
	exerciseDAO ec = new exerciseDAO();
	Vector<exerciseBean> vec = ec.selectAllExercise();
	String exercise = "running";
	int calory = 1;
	int inc = 0;
	int t1 = 1;
	String t2 = "";
	int weight = 0;
	if(request.getParameter("exercise") != null){
		exercise = request.getParameter("exercise");
		weight = Integer.parseInt(request.getParameter("weight"));
		calory = ec.selectCalory(exercise);
		inc = ec.selectIncrement(exercise);
		t1 = Integer.parseInt(request.getParameter("time"));
	}
	calory = calory + (inc * weight);
	
	
	if(t1 == 1){
		calory = calory/6;
		t2 = "10분";
	}	
	else if(t1 == 2){
		calory = calory/2;
		t2 = "30분";
	}else if(t1 == 3){
		t2 = "1시간";
	}	
	else if(t1 == 4){
		calory = calory * 2;
		t2 = "2시간";
	}
		
	
	
%>
	<%@ include file="../MainMember/main_top.jsp" %>

   <div class="main">

			<div class="exercise">
			<%
				if(exercise.equals("running")){
					%>
						<img id="screenIMG" src="../images/exercise/running.jpg" width="500px" height="500px">
					<%
				}else if(exercise.equals("walking")){
					%>
					<img id="screenIMG" src="../images/exercise/walking.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("swimming")){
					%>
					<img id="screenIMG" src="../images/exercise/swimming.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("bicycle")){
					%>
					<img id="screenIMG" src="../images/exercise/bicycle.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("mountaineering")){
					%>
					<img id="screenIMG" src="../images/exercise/mountaineering.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("burpeetest")){
					%>
					<img id="screenIMG" src="../images/exercise/burpeetest.png" width="500px" height="500px">
					<%					
				}else if(exercise.equals("deadlift")){
					%>
					<img id="screenIMG" src="../images/exercise/deadlift.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("pullup")){
					%>
					<img id="screenIMG" src="../images/exercise/pullup.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("pushup")){
					%>
					<img id="screenIMG" src="../images/exercise/pushup.jpg" width="500px" height="500px">
					<%					
				}else if(exercise.equals("squat")){
					%>
					<img id="screenIMG" src="../images/exercise/squat.jpg" width="500px" height="500px">
					<%					
				}

			%>	
				
			</div>
			<div class="exercise">
				<span> <%=exercise%>의  <%=t2 %>동안의 소모 칼로리는  <%=calory %>cal입니다.</span>
			</div>

			<form action="test_Management1.jsp" method="post">
				<div class="exercise">
					<select id="exercise" onchange="readIMG(this)" name="exercise">
					<%
						for(int i=0; i < vec.size(); i++){
							exerciseBean bean = vec.get(i);
							if(exercise.equals(bean.getName())){
							%>
								<option value=<%=bean.getName() %> selected><%=bean.getName() %></option>
							<%
							}else{
							%>
							<option value=<%=bean.getName() %>><%=bean.getName() %></option>
							<%
							}	
						}
					%>		
					</select>			
				</div>
	
				<div class="exercise">
					<select name="weight">
						<option value="1">50kg</option>
						<option value="2">60kg</option>
						<option value="3">70kg</option>
						<option value="4">80kg</option>	
						<option value="5">90kg</option>					
					</select>
				</div>	
				
				<div class="exercise">
					<select name="time">
						<option value="1">10분</option>
						<option value="2">30분</option>
						<option value="3">1시간</option>
						<option value="4">2시간</option>					
					</select>
				</div>
				
				<input type="submit" value="입력">
			</form>

   </div>
   
	<%@ include file="../MainMember/main_bottom.jsp" %>
</body>
</html>