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
	<h2>입력한 관리자정보 DB저장</h2>
	<%
	String id = request.getParameter("mngid");
	String pw = request.getParameter("mngpw");
	String name = request.getParameter("mnname");
	String phn = request.getParameter("mnphn");
	// out.println(pw);
	
	String userid = "jsp";
	String userpw = "123456";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String sql = "INSERT INTO MANAGER VALUES (?, ?, ?, ?)";
	int result = 0;
	// 연동 샘플
	// 1번 JDBC 드라이버 로딩
	try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			out.println("1_드라이버로딩 성공");			
			conn = DriverManager.getConnection(url, userid, userpw);
			out.println("2_접속성공<br>");
			// stmt = conn.createStatement();
			pstmt = conn.prepareStatement(sql);
			// result = stmt.executeUpdate(sql);	// insert, update, delete
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, phn);
			result = pstmt.executeUpdate();
			
	}
	catch(SQLException se) {
		out.println("3,4_쿼리실행실패");
	}
	catch (Exception e) {
		out.println("1,2_접속실패: " + e.getMessage());
	}

	out.println("등록결과: " + result);
	
	%>
</body>
</html>























