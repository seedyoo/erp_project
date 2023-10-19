<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mem_style.css">
</head>
<body>
<%
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "jsp";
	String userpw = "123456";
	Connection conn = null;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, userid, userpw);
	} catch(Exception e){
		out.println("오라클 접속 실패: " + e.getMessage());
	}
%>
	<h2 class="title">회원관리 및 목록</h2>
	
	<table>
		<tr>
			<th>#</th>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>활동여부</th>
		</tr>
<% 
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "SELECT ID, NAME, PHONE, USEYN FROM MEMBER";
	try {
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()) {
			out.println("<tr>");
			out.println("<td>1</td>");
			out.println("<td>" + rs.getString("ID") + "</td>");
			out.println("<td>" + rs.getString("NAME") + "</td>");
			out.println("<td>" + rs.getString("PHONE") + "</td>");
			out.println("<td>" + rs.getString("USEYN") + "</td>");
		out.println("</tr>");
		}
	} catch(SQLException se) {
		out.println("쿼리실행 및 결과오류: " + se.getMessage());
	}
	
%>
	</table>
</body>
</html>






















