<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>자재재고관리</title>
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
				      <h1 class="text-center h3 mb-2 text-gray-800 mt-4">자재관리</h1>
				      <!-- <p class="mb-4">
				        DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the{' '}
				        <a target="_blank" href="https://datatables.net"> official DataTables documentation </a>
				        .
				      </p> -->
				      <div class="hrm_check">
				            
				            <hr>
				            
				            <form class="hrm_searchbox">
				                <select id="department" name="department">
				                    <option value="hr">입고</option>
				                    <option value="finance">출고</option>
				                    <option value="marketing">입고+출고</option>
				                    
				                </select>
				        
				                <input type="text" id="employee_number" name="employee_number" required>
				        
				                <button type="submit" class="hpr_search-button">조 회</button>
				            </form>
				        </div>
				        <hr>
				      <!-- DataTales Example -->
				      <div class="card shadow mb-4 mt-4">
				        <div class="card-header py-3">
				          <h6 class="m-0 font-weight-bold text-primary">자재재고관리</h6>
				        </div>
				        <div class="card-body">
				          <div class="table-responsive">
				            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				            
				              <thead>
				                <tr class="text-center">
				                  <th>자재번호</th>
				                  <th>자재이름</th>
				                  <th>자재정보</th>
				                  <th>현재총개수</th>
				                  <th class="text-center">삭제</th>
				                </tr>
				              </thead>
				
				              <tbody>
				              <c:forEach var="material" items="${materials}">
				                <tr class="text-center">
				                  <td>${material.ms_num}</td>
				                  <td>
				                  	<c:forEach begin="1" end="${material.bindent}">[Re]</c:forEach>
				                    <a href="${pageContext.request.contextPath}/material/content/${material.mr_num}">${material.ms_remarks}</a>
				                  </td>
				                  <td>${material.mr_num}</td>
				                  <td>${material.mtcount}</td>
				                  
				                  <td>
				                    <%-- <a href="${pageContext.request.contextPath}/board/reply_view/${board.bid}"><button class="btn btn-success" value="${board.bid}">수정</button></a> --%>
				                    <a href="${pageContext.request.contextPath}/board/delete/${material.ms_num}"><button class="btn btn-danger" value="${material.ms_num}">삭제</button></a>
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
				            <a href="${pageContext.request.contextPath}/material/reply_view/${material.ms_stock}"><button class="btn btn-primary" value="${material.ms_stock}">수정</button></a>

							
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

