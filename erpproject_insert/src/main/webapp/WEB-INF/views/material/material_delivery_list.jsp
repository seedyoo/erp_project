<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>자재출고관리</title>
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
				      <h1 class="text-center h3 mb-2 text-gray-800 mt-4">자재출고관리</h1>
				      <!-- <p class="mb-4">
				        DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the{' '}
				        <a target="_blank" href="https://datatables.net"> official DataTables documentation </a>
				        .
				      </p> -->
				      <div class="hrm_check">
				            
				            <hr>
				            
				            <form class="hrm_searchbox">
				                <select id="department" name="department">
				                    <option value="hr">자재명</option>
				                    <option value="finance">업체명</option>
				                    <option value="marketing">자재명+업체명</option>
				                    
				                </select>
				        
				                <input type="text" id="employee_number" name="employee_number" required>
				        
				                <button type="submit" class="hpr_search-button">조 회</button>
				            </form>
				        </div>
				        <hr>
				      <!-- DataTales Example -->
				      <div class="card shadow mb-4 mt-4">
				        <div class="card-header py-3">
				          <h6 class="m-0 font-weight-bold text-primary">자재출고관리</h6>
				        </div>
				        <div class="card-body">
				          <div class="table-responsive">
				            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				            
				              <thead>
				                <tr class="text-center">
				                  <th>출고자재번호</th>
				                  <th>출고자재이름</th>
				                  <th>공급업체이름</th>
				                  <th>출고개수</th>
				                  <th>출고날짜</th>
				                  <th class="text-center">삭제</th>
				                </tr>
				              </thead>
				
				              <tbody>
				              <c:forEach var="material" items="${materials}">
				                <tr class="text-center">
				                  <td>${material.md_num}</td>
				                  <td>
				                  	<c:forEach begin="1" end="${material.bindent}">[Re]</c:forEach>
				                    <a href="${pageContext.request.contextPath}/material/content/${material.md_num}">${material.md_name}</a>
				                  </td>
				                  <td>${material.sc_name}</td>
				                  <td>${material.md_count}</td>
				                  <td>${material.md_date}</td>
				                  
				                  <td>
				                    <a href="${pageContext.request.contextPath}/board/reply_view/${board.bid}"><button class="btn btn-success" value="${board.bid}">수정</button></a>
				                    <a href="${pageContext.request.contextPath}/board/delete/${material.ms_num}"><button class="btn btn-danger" value="${material.mr_num}">삭제</button></a>
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
				                	<a href="material_stock_list${pageMaker.makeQuery(pageMaker.startPage - 1)}"><button class="page-link" aria-label="Previous" > « </button></a>
				              	</li>
							  </c:if>
						
							  <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							  	<li class="page-item">
						        	<a href="material_stock_list${pageMaker.makeQuery(idx)}"><button class="page-link">${idx}</button></a>
						        </li>
							  </c:forEach>
				              
				
				              <c:if test="${pageMaker.next && pageMaker.endPage > 0}">				
							    <li class="page-item">
				                	<a href="material_stock_list${pageMaker.makeQuery(pageMaker.endPage +1)}"><button class="page-link" aria-label="Next" > » </button></a>
				              	</li>
							  </c:if>
				              
				            </ul>
				          </nav>
				          
				          
				          <hr/>
				          <div class="d-flex justify-content-center">
				            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">출고등록</button>
				            <!-- 모달 스타트 -->
				            <div class="modal fade"  id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				              <div class="modal-dialog modal-sl modal-dialog-centered">
				                <div class="modal-content">
				                  <div class="modal-header">
				                    <h5 class="modal-title" id="exampleModalLabel">등록</h5>
				                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button><br />
				                  </div>
				                  
				                  <form id="modal-form" action="${pageContext.request.contextPath}/board/write" method="POST" role="form">
					                  <div class="modal-body">
					                  
					                  
					                    <div class="mb-3">
					                      <label for="recipient-name" class="col-form-label">작성자:</label>
					                      <input type="text" name="bname" class="form-control" />
					                    </div>
					                    <div class="mb-3">
					                      <label for="recipient-name" class="col-form-label">제목:</label>
					                      <input type="text" name="btitle"  class="form-control" />
					                    </div>
					                    <div class="mb-3">
					                      <label for="message-text" class="col-form-label">내용:</label>
					                      <textarea class="form-control" name="bcontent"  rows="8" ></textarea>
					                    </div>
					                    <div class="mb-3">
					                      <input type="hidden" name="bremarks"  class="form-control" />
					                    </div>
					                    <div class="mb-3">
					                      <input type="hidden" name="users_id"  class="form-control" />
					                    </div>
					                    
					                  </div>
					                  
					                  <div class="modal-footer">
					                    <input id="send-board" type="submit" class="btn btn-primary" data-bs-dismiss="modal" value="등록"/>
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
</main>

		<%@ include file = "../common/footer.jsp" %>

</body>

<script type="text/javascript">

/* $(document).ready(function(){	
	$( "#send-board" ).on( "click", function() {
		console.log("AAAAAA");
		$("#modal-form").submit();
	});
}); */
</script>

</html>

