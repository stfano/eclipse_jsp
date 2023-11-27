<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	
	<%
	String url = "jdbc:mysql://localhost:3306/classicmodels";
	String user = "test";
	String password = "test1234";
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
		System.out.println("MySQL 연결 성공 ");
		
		String sql = "show tables;";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		%>
		<!-- html 코드 공간 -->
		<h1>
			while문이 시작하기 전입니다 ! 
		</h1>
		<% 
		
		while(rs.next()) {
			String table_name = rs.getString("Tables_in_classicmodels");
			System.out.println("결과: "+table_name);
			
			// 자바코드가 끝나는 부분
			
			%>
			<!-- html 코드 공간 -->
				<p>결과: <%= table_name %></p>
			<% 
			// 자바코드가 시작하는 부분 
		}
		%>
		<!-- html 코드 공간 -->
		<h1>
			while 문이 끝났습니다 ! 
		</h1>
		
		<% 
	} catch(Exception e) {
		System.out.println("MySQL 연결 오류: "+e.getMessage());
	} finally {
		if(rs != null) {
			try{
				rs.close();
			}catch(SQLException sqle){
				System.out.println("MySQL 연결 오류: "+sqle.getMessage());
			}
		}
		if(pstmt != null) {
 			try{
 				pstmt.close();
 			}catch(SQLException sqle){
 				System.out.println("MySQL 연결 오류: "+sqle.getMessage());
 			}
		}
 		if(conn != null) {
 			try{
 				conn.close();
 			}catch(SQLException sqle){
 				System.out.println("MySQL 연결 오류: "+sqle.getMessage());
 			}
 		}
	}
	%>
</body>
</html>