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
	<h2>회원입력값처리</h2>
	<%
		String ID = request.getParameter("mid");
		String PWD = request.getParameter("mpw");
		String NAME = request.getParameter("name");
		String EMAIL = request.getParameter("email");
		String PHONE = request.getParameter("cellphone");
		/* out.println(ID+"<br>");
		out.println(PWD+"<br>");
		out.println(NAME+"<br>");
		out.println(EMAIL+"<br>");
		out.println(PHONE+"<br>"); */
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String userid = "jsp";
		String userpw = "123456";
		Connection conn = null;
		String sql = "INSERT INTO MEMBER (ID, PWD, NAME, EMAIL, PHONE) VALUES(?,?,?,?,?)";
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, userid, userpw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			pstmt.setString(2, PWD);
			pstmt.setString(3, NAME);
			pstmt.setString(4, EMAIL);
			pstmt.setString(5, PHONE);
			result = pstmt.executeUpdate();
		} catch(SQLException se) {
			out.println("쿼리 접속 실패: " + se.getMessage());			
		} catch(Exception e){
			out.println("오라클 접속 실패: " + e.getMessage());
		}
		
		out.println("등록결과: " + result);
	%>
	
</body>
</html>