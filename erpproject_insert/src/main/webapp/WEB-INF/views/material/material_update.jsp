<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>공지 확인</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>

<body>
<header>
 	<%@ include file="../common/header.jsp" %>
</header>

<main>
  <div class="container mt-3">
      <div class="container">
        <div class="row">
          <div class="card col-md-6 offset-md-3 offset-md-3">
            <h3 class="text-center">공지 확인</h3>
            
            <form id="modal-form" action="${pageContext.request.contextPath}/board/update" method="POST" role="form">
            <div class="card-body">
              <div class="form-group">
                <label> Type </label>
                <select placeholder="type" class="form-control">
                  <option value="1">자유게시판</option>
                </select>
              </div>
              <div class="form-group">
                <label> 게시판 번호 </label>
                <input type="text" placeholder="bid" value="${board.bid}" class="form-control" disabled readonly />
              	<input type="hidden" name="bid" value="${board.bid}">
              	<input type="hidden"  value="${board.bgroup}" name="bgroup" />
              	<input type="hidden" value="${board.bindent}" name="bindent" />
              	<input type="hidden"  value="${board.bstep}" name="bstep" />
              </div>
              <div class="form-group">
                <label> 아이디 </label>
                <input type="text" placeholder="users_id" value="${board.users_id}" class="form-control" disabled readonly />
              	<input type="hidden" name="users_id" value="${board.users_id}">
              	<input type="hidden"  value="${board.bgroup}" name="bgroup" />
              	<input type="hidden" value="${board.bindent}" name="bindent" />
              	<input type="hidden"  value="${board.bstep}" name="bstep" />
              </div>
              
              <div class="form-group">
                <label> 이름 </label>
                <input type="text" placeholder="bname" value="${board.bname}" class="form-control" name="bname" disabled/>
              </div>
              <div class="form-group">
                <label> 제목 </label>
                <input placeholder="btitle" value="${board.btitle}" class="form-control" name="btitle" disabled/>
              </div>
              <div class="form-group">
                <label> 내용 </label>
                <textarea placeholder="bcontent" class="form-control" rows="5" name="bcontent" disabled>${board.bcontent}</textarea>
              </div>
              <div class="mt-3 d-flex justify-content-between">
                <!-- <button id="update-board" class="btn btn-success">Update</button> -->
                <a href="/board/list" class="btn btn-danger">돌아가기</a>
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
	$( "#update-board" ).on( "click", function() {
		$("#modal-form").submit();
	});
});

</script>

</html>

