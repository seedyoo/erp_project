<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>관리자페이지</title>
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
		<section class="sidebars">
	 		<%@ include file="../common/sidebars.jsp" %>
	 	</section>
 	
	 	<div class="contentsbox">
		 	<section class="maincontents">
				<div class="container mt-3">
				    <div class="container-fluid">
				      <!-- Page Heading -->
				      <h1 class="text-center h3 mb-2 text-gray-800 mt-4">유저목록</h1>
				      <!-- <p class="mb-4">
				        DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the{' '}
				        <a target="_blank" href="https://datatables.net"> official DataTables documentation </a>
				        .
				      </p> -->
				      <!-- <div class="hrm_check">
				            
				            <hr>
				            
				            <form class="hrm_searchbox">
				                <select id="department" name="department">
				                    <option value="hr">ID</option>
				                    <option value="finance">이름</option>
				                    <option value="marketing">ID+이름</option>
				                    
				                </select>
				        
				                <input type="text" id="employee_number" name="employee_number" required>
				        
				                <button type="submit" class="hpr_search-button">조 회</button>
				            </form>
				        </div> -->
				        <div class="search_wrap">
							<div class="search_area">
								<select name="type">
					                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
					                <option value="I" <c:out value="${pageMaker.cri.type eq 'I'?'selected':'' }"/>>ID</option>
					                <option value="N" <c:out value="${pageMaker.cri.type eq 'N'?'selected':'' }"/>>이름</option>
					                <option value="IN" <c:out value="${pageMaker.cri.type eq 'IN'?'selected':'' }"/>>ID+이름</option>

				           		 </select>
								<input type="text" name="keyword" value="${pageMaker.cri.keyword }">
								<button>조회</button>
							</div>
						</div>
				        <hr>
				      <!-- DataTales Example -->
				      <div class="card shadow mb-4 mt-4">
				        <div class="card-header py-3">
				          <h6 class="m-0 font-weight-bold text-primary">유저정보</h6>
				        </div>
				        <div class="card-body">
				          <div class="table-responsive">
				            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				            
				              <thead>
				                <tr class="text-center">
				                  <th>유저ID</th>
				                  
				                  <th>유저이름</th>
				                  <th>가입날짜</th>
				                  <th class="text-center">삭제</th>
				                </tr>
				              </thead>
				
				              <tbody>
				              <c:forEach var="users" items="${userss}">
				                <tr class="text-center">
				                  <td>${users.users_id}</td>
				                  
				                  <td>
				                  	<c:forEach begin="1" end="${board.bindent}">[Re]</c:forEach>
				                    <a href="${pageContext.request.contextPath}/users/users_content/${users.users_id}">${users.users_name}</a>
				                  </td>
				                  <td>${users.users_join}</td>
				                  <td>
				                  	<a href="${pageContext.request.contextPath}/users/users_content2/${users.users_id}"><button class="btn btn-success" value="${users.users_id}">수정</button></a>
				                    <a href="${pageContext.request.contextPath}/users/users_delete/${users.users_id}"><button class="btn btn-danger" value="${users.users_id}">삭제</button></a>
				                  </td>
				                </tr>
				                </c:forEach>	
				              </tbody>
				              
				            </table>
				            
				          </div>
				          
				       <!--    페이징 처리 -->        
				          <nav class="d-flex justify-content-center" aria-label="Page navigation example">
				            <ul class="pagination">
				              
				              <c:if test="${pageMaker.prev}">					
							    <li class="page-item">
				                	<a href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}"><button class="page-link" aria-label="Previous" > « </button></a>
				              	</li>
							  </c:if>
						
							  <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							  	<li class="page-item">
						        	<a href="list${pageMaker.makeQuery(idx)}"><button class="page-link">${idx}</button></a>
						        </li>
							  </c:forEach>
				              
				
				              <c:if test="${pageMaker.next && pageMaker.endPage > 0}">				
							    <li class="page-item">
				                	<a href="list${pageMaker.makeQuery(pageMaker.endPage +1)}"><button class="page-link" aria-label="Next" > » </button></a>
				              	</li>
							  </c:if>
				              
				            </ul>
				          </nav>
				          
				          <hr/>
				          
				          <div class="d-flex justify-content-center">
				            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">유저등록</button>
				            <!-- 모달 스타트 -->
				            <div class="modal fade"  id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				              <div class="modal-dialog modal-sl modal-dialog-centered">
				                <div class="modal-content">
				                  <div class="modal-header">
				                    <h5 class="modal-title" id="exampleModalLabel">유저등록</h5>
				                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button><br />
				                  </div>
				                  
				                  <form id="modal-form" action="${pageContext.request.contextPath}/users/users_write" method="POST" role="form">
					                  <div class="modal-body">
					                    
					                      <div class="form-floating mb-2">
		                                    <input type="text" name="users_id" class="form-control" placeholder="users_id" />
		                                    <label for="recipient-id" class="col-form-label">아이디</label>
		                                    <!-- <div class="double_check text-end">
		                                        <a href="#" class="btn btn-outline-secondary mt-2">중복확인</a>
		                                    </div> -->
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_pw" class="form-control" placeholder="users_pw" />
		                                    <label for="recipient-pw" class="col-form-label">비밀번호</label>
		                                  </div>
		                                  <!-- <div class="form-floating mb-2">
		                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
		                                    <label for="floatingPassword">비밀번호확인</label>
		                                  </div> -->
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_name" class="form-control" placeholder="users_name" />
		                                    <label for="recipient-name" class="col-form-label">이름</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_position" class="form-control" placeholder="users_position" />
		                                    <label for="recipient-position" class="col-form-label">직급</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_rrnum" class="form-control" placeholder="users_rrnum" />
		                                    <label for="recipient-rrnum" class="col-form-label">주민번호</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_email" class="form-control" placeholder="users_email" />
		                                    <label for="recipient-email" class="col-form-label">이메일</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_add" class="form-control" placeholder="users_add" />
		                                    <label for="recipient-add" class="col-form-label">주소</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_hp" class="form-control" placeholder="users_hp" />
		                                    <label for="recipient-hp" class="col-form-label">전화번호</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" name="users_remarks" class="form-control" placeholder="users_remarks" />
		                                    <label for="recipient-remarks" class="col-form-label">비고</label>
		                                  </div>
					                    
					                  </div>
					                  <div class="modal-footer">
					                    <input id="send-users" type="submit" class="btn btn-primary" data-bs-dismiss="modal" value="전송"/>
					                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
	<!-- 				                    <button id="send-board" type="button" class="btn btn-primary" data-bs-dismiss="modal" >전송</button>
					                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button> -->
					                  </div>
				                  </form>
				                  
				                </div>
				              </div>
				            </div>
				            <!-- 모달 엔드 -->
							
				        </div>
				      </div>
				    </div>
				  </div>
				  </div>
		  </section>
	  </div>
	  
	  <form id="actionForm" action="/users/users_list" method="GET">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
					<input type="hidden" name="type" value="${pageMaker.cri.type }">
	  </form>
	  
</main>

		<%@ include file = "../common/footer.jsp" %>

</body>

<script type="text/javascript">

$(document).ready(function(){	
	$( "#users_send-users" ).on( "click", function() {
		$("#modal-form").submit();
	});
});

let actionForm = $("#actionForm");

$(".search_area button").on("click", function(e){
	
	var type = $(".search_area select").val();
	var keyword = $(".search_area input[name='keyword']").val();
	
	var sKey = '<c:out value="${pageMaker.cri.keyword}"/>';
	// Criteria 필드 멤버의 검색어.
	
	console.log("이전 검색어: " + sKey);
	console.log("현재 검색어: " + keyword);
	
	if(!type){
		alert("키워드를 입력하세요");
		return false;
	}
	
	if(!keyword){
		alert("키워드를 입력하세요.");
		return false;
	}
	
	if(sKey != keyword){
		actionForm.find("input[name='pageNum']").val(1);
		// 새로운 검색어라면 1페이지로 이동.
	}
	
	
	actionForm.find("input[name='type']").val(type);
	actionForm.find("input[name='keyword']").val(keyword);
	// 1페이지로 이동하는 구문
	/* actionForm.find("input[name='pageNum']").val(1); */
	actionForm.submit();
});
</script>

</html>

