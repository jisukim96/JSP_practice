<%@page import="java.sql.* , java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>





    
<% request.setCharacterEncoding("UTF-8"); %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "insert into userTest values(?,?)";
	
	
	Class.forName(driver);
	
	try{
		conn = DriverManager.getConnection(url,"C##HR","1234");
	}catch(Exception e){
		e.printStackTrace();
	}
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("id_f"));
	pstmt.setString(2,request.getParameter("pass_f"));
	
	pstmt.executeUpdate();
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:forward page="list.jsp"></jsp:forward>

</body>
</html>