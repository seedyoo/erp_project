<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.dao.*" %>
<%@ page import="human.vo.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String no = request.getParameter("no");
		
		BoardDao bbsdao = new BoardDao();
		int result = bbsdao.delBoardByNo(no);
		
		out.println("삭제결과: " + result);	// { 2-성공 1-첨부파일없음 목록이동} 0-실패 글읽기이동
		
		if(result == 2 || result == 1) {
			out.println("<script>alert('게시글 삭제가 완료되었습니다!');</script>");
			out.println("<script>location.href='mng_board.jsp'</script>");
		}else {
			out.println("<script>alert('게시글 삭제가 실패했습니다!');</script>");
			out.println("<script>location.href='mng_bbsread.jsp?=no'" + no + "</script>");
		}
		
	%>
</body>
</html>