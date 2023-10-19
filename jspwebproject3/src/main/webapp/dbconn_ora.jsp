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
		String userid = "erpsystem";
		String userpw = "123456";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		
		Connection conn = null;
		String sql = "SELECT COUNT(*) AS CNT FROM USERS";
		ResultSet rs = null;
		int result = 0;
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
				result = rs.getInt("CNT");
			}
		}
		catch(SQLException se) {
			out.println("3,4_쿼리실행실패");
		}
		catch (Exception e) {
			out.println("1,2_접속실패: " + e.getMessage());
		}
		
		out.println("<br>총인원수: " + result);
		
	%>
</body>
</html>



























