<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="result.jsp" name="resultForm" method="post">
<script type="text/javascript">

var count;

window.onload = function () {
	count =0;
	}



	
	var image = new Array();
	
	for(var i=1 ; i <= 10 ;i++){
		
		image[i] = "img/"+i+".jpg";
		
		console.log(image[i]);
	}
	
	var quiz=[
		
		['연어 덮밥','날치알 덮밥','연어 초밥','사케동'],
		['막국수','메밀 소바','야끼소바','잔치국수'],
		['뭇국','어묵탕','동치미','백김치'],
		['두부전골','청국장','호박찌개','된장찌개'],
		['치즈케익','카스테라','스콘','쉬폰케익'],
		['육회','물회','회냉면','냉채'],
		['라볶이','쫄면','비빔국수','비빔냉면'],
		['백짬봉','샤브샤브','조개탕','바지락 칼국수'],
		['볶음 우동','짬뽕','팟타이','똠양꿍'],
		['누드김밥','김밥','치즈김밥','계란김밥']
		
	];
	
	var answer=[1,2,3,4,1,2,3,4,1,2];
	
	var userPick= new Array();
	

	function getAns(){
		
		var answer = document.getElementsByName("quiz");
		
		var checkAns;
		
		for( var i=0; i< answer.length;i++){
			
			if(answer[i].checked == true){
				
				checkAns=answer[i].value;
				
			}
			
		}
		
		userPick[count] = checkAns;
		
		
		console.log(userPick);
		
	}
	
	
	function goResult(){
		
		
		document.resultForm.resultText.value= userPick;
		document.resultForm.submit();
	}
	
	
	function next(){
		
		getAns();
		
		++count;
		
		if(count == 10){
			
			
			goResult();
			
		}else{
		setQuiz();
		}
		
	}
	
	
	function setQuiz(){
		
		
		
		for(var i = 0 ; i< 4; i++){
			
			document.getElementById(i+1+"text").value = quiz[count][i];
			
			
		}
	
			
			document.getElementById("quizImg").src = image[count+1];
	
		
	}
	
</script>

<table align="center" >
	<tr>
		<td>
			<div id="quizFrame">
				<img  id="quizImg" alt="" src="img/1.jpg" > <br> <br>
			
				<h2>과연 어떤 음식일까요?</h2>
			</div>
		</td>
		<td>
			<table id="quizTable" >
				<Tr>
					<td>
					 	<input type="radio" id="1" name="quiz" value="1"/>
						①&nbsp;<input type="text" id="1text" value="연어 덮밥"/>
 					</td>
 					
					
				</Tr>
				<Tr>
					
 					<td>	
						<input type="radio" id="2" name="quiz" value="2"/>
						②&nbsp;<input type="text" id="2text" value="연어 초밥"/>
							
					</td>
					
				</Tr>
				<Tr>
					<td>
						<input type="radio" id="3" name="quiz" value="3"/>
						③&nbsp;<input type="text" id="3text" value="날치알 덮밥"/>
						
					</td>
				
					
				</Tr>
				<Tr>
					
					<td>
						<input type="radio" id="4" name="quiz" value="4" />
						④&nbsp;<input type="text" id="4text" value="사케동"/>
						
					</td>
					
				</Tr>
			</table>
			
			
				<input type="hidden" value="" name="resultText" id="resultText"/>
				<input type="button" value="다음문제" id="nextB" onclick="next();"/>
			</form>	
		</td>
	</tr>
</table>


</body>
</html>