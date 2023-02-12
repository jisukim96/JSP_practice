<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.sql.*"%>
  <%@page import=" java.util.*"%>
  
  
  
  
    <%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs =null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "select * from userTest";
	
	
	Class.forName(driver);
	
	try{
		conn = DriverManager.getConnection(url,"C##HR","1234");
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery(sql);
		
		if(rs.next()){
		    
			do{
				
		
				
			}while(rs.next());
			
		}else{
			System.out.println("값없음");
		}
		
				
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<center>
		<h1> 리스트 </h1>
		<hr>
		<a href="insert.jsp">등록</a>
		<hr>
		
		<table>
			<% if(rs.next()){
				
				do{
					
					%>
					<tr>
						<td><%=rs.getString("id")%></td><td><%=rs.getString("pass")%></td>
					</tr>
					<%
					
				}while(rs.next());
				
			}else{
				System.out.println("값없음");
			 	%><jsp:forward page="insert.jsp"></jsp:forward><%
			} %>
			
		</table>
	</center>
	
	
</body>
</html>