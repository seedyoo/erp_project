<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>개인프로젝트</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>

<body>
 	<%@ include file="../common/header.jsp" %>
<main>
  <div class="container mt-3">
      <div class="container">
        <div class="row">
          <div class="card col-md-6 offset-md-3 offset-md-3">
            <h3 class="text-center">댓글 달아 주세요</h3>
            <form id="modal-form" action="${pageContext.request.contextPath}/board/reply" method="POST" role="form">
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
                <label> 이름 </label>
                <input type="text" placeholder="bname" value="${board.bname}" class="form-control" name="bname"/>
              </div>
              <div class="form-group">
                <label> 제목 </label>
                <input placeholder="btitle" value="${board.btitle}" class="form-control" name="btitle"/>
              </div>
              <div class="form-group">
                <label> 내용 </label>
                <textarea placeholder="bcontent" class="form-control" rows="5" name="bcontent">${board.bcontent}</textarea>
              </div>
              <div class="mt-3 d-flex justify-content-between">
                <button id="update-board" class="btn btn-success">Update</button>
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
	$( "#update-board" ).on( "click", function() {
		$("#modal-form").submit();
	});
});

</script>

</html>

