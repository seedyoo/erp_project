<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>톰캣과 오라클 연동테스트</h2>
	<%
		String userid = "jsp";
		String userpw = "123456";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		
		Connection conn = null;
		String sql = "SELECT * FROM MANAGER";
		ResultSet rs = null;
		String id = "";
		String pwd = "";
		String name = "";
		String phone = "";
		// 연동 샘플
		// 1번 JDBC 드라이버 로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			out.println("1_드라이버로딩 성공");			
			conn = DriverManager.getConnection(url, userid, userpw);
			out.println("2_접속성공");
			
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);	// 검색결과
			
			while(rs.next()) {
				id = rs.getString("ID");
				pwd = rs.getString("PWD");
				name = rs.getString("NAME");
				phone = rs.getString("PHONE");
				
				out.println("<br>id: " + id);
				out.println("<br>pwd: " + pwd);
				out.println("<br>name: " + name);
				out.println("<br>phone: " + phone);
			}
		}
		catch(SQLException se) {
			out.println("3,4_쿼리실행실패");
		}
		catch (Exception e) {
			out.println("1,2_접속실패: " + e.getMessage());
		}
		
		
		
	%>
</body>
</html>



























