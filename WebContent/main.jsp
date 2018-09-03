<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%
    	String contentPage = request.getParameter("CONTENTPAGE");
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="event.css">
<title>Insert title here</title>
</head>
<body style="text-align:center; background-color: #FaFaFa">


<div id="menuBar">

	
	<img alt="" id="homeB" src="img/home.png" onclick="location.href='index.jsp'">
	<img alt="" id="smallLogo" src="img/pikicast.png" style="margin-left:-60px;" >

</div>

<jsp:include page="<%=contentPage %>"></jsp:include>

</body>
</html>