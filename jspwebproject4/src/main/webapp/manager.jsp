<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.vo.ManagerVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자동차 정보 저장 출력</h2>
	<%
		String nId = "";
		String nPwd = "";
		String nName = "";
		String nTel = "";
		
		ManagerVo mvo = new ManagerVo();
		mvo.setId("");
		mvo.setPwd("");
		mvo.setName("");
		mvo.setTel("");
		
		out.println("아이디: " + mvo.getId());
		out.println("비밀번호: " + mvo.getPwd());
		out.println("이름: " + mvo.getName());
		out.println("전화번호: " + mvo.getTel());
	%>
	
</body>
</html>