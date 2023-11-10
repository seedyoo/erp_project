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
 	<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
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
				      <h1 class="text-center h3 mb-2 text-gray-800 mt-4">공지게시판</h1>
				      <!-- <p class="mb-4">
				        DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the{' '}
				        <a target="_blank" href="https://datatables.net"> official DataTables documentation </a>
				        .
				      </p> -->
				      <!-- <div class="hrm_check">
				            
				            <hr>
				            
				            <form class="hrm_searchbox">
				                <select id="department" name="department" >
				                    <option value="btitle">제목</option>
				                    <option value="bcontent">내용</option>
				                    <option value="bname">글쓴이</option>
				                    <option value="btitle_bcpmtent">제목+내용</option>
				                    
				                </select>
				        
				                <input type="text" id="bid" name="bid" />
				        		<input id="search-board" type="submit" value="조회"/>
				                
				            </form>
				        </div> -->
				       
					    <div class="search_wrap">
							<div class="search_area">
								<select name="type">
					                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
					                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
					                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
					                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
					                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목+내용</option>
					                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목+작성자</option>
					                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목+내용+작성자</option>
				           		 </select>
								<input type="text" name="keyword" value="${pageMaker.cri.keyword }">
								<button>조회</button>
							</div>
						</div>
				        
				        <hr>
				      <!-- DataTales Example -->
				      <div class="card shadow mb-4 mt-4">
				        <div class="card-header py-3">
				          <h6 class="m-0 font-weight-bold text-primary">공지사항</h6>
				        </div>
				        <div class="card-body">
				          <div class="table-responsive">
				            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				            
				              <thead>
				                <tr class="text-center">
				                  <th>번호</th>
				                  <th>글쓴이</th>
				                  <th>제목</th>
				                  <th>히트</th>
				                  <th>날짜</th>
				                  <th class="text-center">삭제 및 댓글</th>
				                </tr>
				              </thead>
				
				              <tbody>
				              <c:forEach var="board" items="${boards}">
				                <tr class="text-center">
				                  <td>${board.bid}</td>
				                  <td>${board.bname}</td>
				                  <td>
				                  	<c:forEach begin="1" end="${board.bindent}">[Re]</c:forEach>
				                    <a href="${pageContext.request.contextPath}/board/content/${board.bid}">${board.btitle}</a>
				                  </td>
				                  <td>${board.bhit}</td>
				                  <td>${board.bdate}</td>
				                  <td>
				                    <a href="${pageContext.request.contextPath}/board/reply_view/${board.bid}"><button class="btn btn-success" value="${board.bid}">수정</button></a>
				                    <a href="${pageContext.request.contextPath}/board/delete/${board.bid}"><button class="btn btn-danger" value="${board.bid}">삭제</button></a>
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
				            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">글쓰기</button>
				            <!-- 모달 스타트 -->
				            <div class="modal fade"  id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				              <div class="modal-dialog modal-sl modal-dialog-centered">
				                <div class="modal-content">
				                  <div class="modal-header">
				                    <h5 class="modal-title" id="exampleModalLabel">글쓰기</h5>
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
					                    <input id="send-board" type="submit" class="btn btn-primary" data-bs-dismiss="modal" value="전송"/>
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
	  
	  <form id="actionForm" action="/board/list" method="GET">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
					<input type="hidden" name="type" value="${pageMaker.cri.type }">
	  </form>
	  
</main>

		<%@ include file = "../common/footer.jsp" %>

</body>


<script type="text/javascript">


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

