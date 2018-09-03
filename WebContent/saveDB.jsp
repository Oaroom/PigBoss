<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<%



request.setCharacterEncoding("utf-8");


//정보세팅


request.setCharacterEncoding("utf-8");

String name=request.getParameter("name");
String num=request.getParameter("number");
int score=Integer.parseInt(request.getParameter("score"));

String url="jdbc:mysql://localhost:3306/pigboss?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
String user="root";
String pw="43176634";


try{

Class.forName("com.mysql.jdbc.Driver");
//out.println("드라이버 로드 완료");
//mysql 접속

Connection con = DriverManager.getConnection(url,user,pw);

//if(con != null) //out.println("mysql 접속 성공");


String sql = "insert into result values('오아름','456',30);";

PreparedStatement pstmt = con.prepareStatement(sql);

int result = pstmt.executeUpdate();

if(result == 1){
	
%>

<script type="text/javascript">

	alert("당신의 결과 저장되었습니다!");
	
</script>

<meta http-equiv="refresh" content="0;url=ranking.jsp">

<%


}else{
	
	//out.println("실패");
	
}

}catch(ClassNotFoundException e){

//out.println("드라이버가 없어요");

}catch(SQLException se){

 se.printStackTrace();
out.println(se);


}
%>







</body>
</html>