<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>공지사항</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>

<body>
	<header>
 		<%@ include file="common/header.jsp" %>
 	</header>
 	
<main class="mainbox d-flex flex-nowrap">
		<section class="sidebars">
	 		<%@ include file="common/sidebars.jsp" %>
	 	</section>

</main>

		<%@ include file = "common/footer.jsp" %>

</body>

<script type="text/javascript">

$(document).ready(function(){	
	$( "#send-board" ).on( "click", function() {
		$("#modal-form").submit();
	});
});
</script>

</html>

