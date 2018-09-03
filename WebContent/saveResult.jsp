<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="event.css">
<title>Insert title here</title>
</head>
<body style="text-align:center">


<%
	
	int score = Integer.parseInt(request.getParameter("score"));

%>




<div id="saveForm">


<form action="saveDB.jsp" method="post">

	<table align="center" id="saveTable" >
		<tr>
			<th>
			이름
			</th>
			<td>
			<input type="text" id="name" name="name"> 
			</td>
		</tr>
		<tr>
			<th>
			고유번호
			</th>
			<td>
			<input type="text" id="pass" name="pass">
			</td>
		</tr>
		<tr>
			<th>
			점수
			</th>
			<td>
			<input type="number" id="score" name="score" value=<%= score%>>
			</td>
		</tr>
	
	</table>
	
	<input type="submit" id="saveB" value="저장하기">

</form>

</div>




</body>
</html>