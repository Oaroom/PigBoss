<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="event.css">
<title>Insert title here</title>
</head>
<body align="center">

<%

	request.setCharacterEncoding("utf-8");
	String value[] = request.getParameter("resultText").split(",");
	
	String answer[]={"1","2","3","4","1","2","3","4","1","2"};
	
	
	int score = 0;
	int index=0;
	
	
	String level[] ={"신생아 아기돼지", "청소년돼지","청장년 돼지","진정한 돼지보스"};
	
	for(int i = 0 ; i < value.length ;i++){
		
		if(value[i].equals(answer[i])){
			
			score += 10;
			
		}	
	
	}
	
	
	
	if(score <= 30){
		
		index =0;
		
	}else if( score >= 40 && score <=60){
		
		index =1;
		
	}else if(score >= 70 && score <= 90){
		
		index =2;
	}else if(score == 100){
		
		index =3;
	}
	
	
	
%>

	<img alt="" src="img/pikicast.png">


	<div id="scoreBox">
	
	<br>
	
		<table align="center" id="scoreTable" >
			<tr>
				<td>
				<img alt="" src="img/pig.png">
				</td>
			</tr>
			<tr>
				<td>
				 당신은 바로, <br>
				<font id="scoreText"><%= level[index] %> !<br> </font>
				점수 (<b> <%=score %></b> / 100) 점 <br>
				
				</td>
			</tr>
		</table>
		<input type="submit" class="scoreB" value="결과 기록" onclick="window.open('saveResult.jsp?score=<%=score %>','결과 기록하기','width=430px,height=300px,location=0,status=no,scrollbars=yes');">
		<input type="submit" class="scoreB" value="랭킹 보기" onclick="location.href='ranking.jsp'">
		<input type="submit" class="scoreB" value="정답 보기" onclick="location.href='answer.jsp'">
		<input type="submit" class="scoreB" value="메인 으로" onclick="location.href='index.jsp'">
	</div>

</body>
</html>