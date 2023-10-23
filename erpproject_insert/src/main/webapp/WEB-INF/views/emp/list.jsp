<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<table width="50%" border="1"> 
	<tr>  <!-- 테이블의 상단에 들어갈 컬럼명들 -->
		<th>empno</th>
		<th>ename</th>
		<th>job</th>
		<th>mgr</th>
		<th>hiredate</th>
		<th>sal</th>
		<th>comm</th>
		<th>deptno</th>
	</tr>
	<c:forEach var="emp" items="${empList}">
		<tr>
			<td>${emp.empno}</td>
			<td>${emp.ename}</td>
			<td>${emp.job}</td>
			<td>${emp.mgr}</td>
			<td>${emp.hiredate}</td>
			<td><fmt:formatNumber value="${emp.sal}" type="number"/></td>
                <!-- 숫자 1000을 1,000으로 표시하는 태그 -->
			<td>${emp.comm}</td>
			<td>${emp.deptno}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>

