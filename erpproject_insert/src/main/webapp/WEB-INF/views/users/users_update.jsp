<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>유저정보</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>

<body>
 	<header>
 		<%@ include file="../common/header.jsp" %>
 	</header>
 	
<main class="mainbox d-flex flex-nowrap">
  <div class="container mt-3">
      <div class="container">
        <div class="row">
          <div class="card col-md-6 offset-md-3 offset-md-3">
            <h3 class="text-center">유저정보</h3>
            <form id="modal-form" action="${pageContext.request.contextPath}/users/users_update" method="POST" role="form">
            <div class="card-body">
              <div class="form-group">
                <label> 유저번호 </label>
                <!-- <select placeholder="type" class="form-control">
                  <option value="1">유저정보</option>
                </select> -->
                <input type="text" placeholder="users_num" value="${users.users_num}" class="form-control" disabled readonly />
              	<input type="hidden" placeholder="users_num" value="${users.users_num}" name="users_num" />
              </div>
              <div class="form-group">
                <label> 유저ID </label>
                <input type="text" placeholder="users_id" value="${users.users_id}" class="form-control" disabled readonly />
              	<input type="hidden" placeholder="users_id" value="${users.users_id}" name="users_id" />
              </div>
              <div class="form-group">
                <label> 비밀번호 </label>
                <input type="text" placeholder="users_password" value="${users.users_pw}" class="form-control" name="users_pw"/>
              </div>
              <div class="form-group">
                <label> 이름 </label>
                <input type="text" placeholder="users_name" value="${users.users_name}" class="form-control" name="users_name"/>
              </div>
              <div class="form-group">
                <label> 직급 </label>
                <input type="text" placeholder="users_position" value="${users.users_position}" class="form-control" name="users_position"/>
              </div>
              <div class="form-group">
                <label> 주민번호 </label>
                <input placeholder="users_rrnum" value="${users.users_rrnum}" class="form-control" name="users_rrnum"/>
              </div>
              <div class="form-group">
                <label> 이메일 </label>
                <input placeholder="users_email" value="${users.users_email}" class="form-control" name="users_email"/>
              </div>
              <div class="form-group">
                <label> 주소 </label>
                <input placeholder="users_add" value="${users.users_add}" class="form-control" name="users_add"/>
              </div>
              <div class="form-group">
                <label> 전화번호 </label>
                <input placeholder="users_hp" value="${users.users_hp}" class="form-control" name="users_hp"/>
              </div>
              <div class="form-group">
                <label> 비고 </label>
                <input placeholder="btitle" value="${users.users_remarks}" class="form-control" name="users_remarks"/>
              </div>
              
              <div class="mt-3 d-flex justify-content-between">
                <button id="users_update-users" class="btn btn-success">Update</button>
                <button class="btn btn-danger">Cancel</button>
              </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
</main>

	<%@ include file = "../common/footer.jsp" %>
	
</body>

<script type="text/javascript">

$(document).ready(function(){	
	$( "#users_update-users" ).on( "click", function() {
		$("#modal-form").submit();
	});
});

</script>

</html>

