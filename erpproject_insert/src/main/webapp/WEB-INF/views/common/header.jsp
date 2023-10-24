<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="/">ERPProject</a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${pageContext.request.contextPath}/lotto">로또</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">        
        <button class="btn btn-outline-success me-4" type="submit">Search</button>
      </form>
      
        <div>
        <div class="d-flex justify-content-center">
				            <button type="button" class="btn btn-outline-light me-2" data-bs-toggle="modal" data-bs-target="#loginModal">로그인</button>
				            <!-- 모달 스타트 -->
				            <div class="modal fade"  id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
				              <div class="modal-dialog modal-sl modal-dialog-centered">
				                <div class="modal-content">
				                  <div class="modal-header">
				                    <h5 class="modal-title" id="loginModalLabel">로그인</h5>
				                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button><br />
				                  </div>
				                  
				                  <form id="modal-form" action="${pageContext.request.contextPath}/board/write" method="POST" role="form">
					                  <div class="modal-body">
					                  
					                    <div class="form-floating mb-3">
			                                <input type="text" class="form-control" id="userid" placeholder="Id">
			                                <label for="floatingInput-id">아이디</label>
			                            </div>
					                    <div class="form-floating mb-3">
			                                <input type="text" class="form-control" id="userpw" placeholder="Pw">
			                                <label for="floatingInput-pw">비민번호</label>
			                            </div>
					                    
					                    <div class="form-check d-flex justify-content-around mb-3">
			                                <div class="item">
			                                <input type="checkbox" class="form-check-input" id="remember-id">
			                                <label for="rememver-id" class="form-check-label">아이디 저장</label>
			                                </div>
			                            </div>
					                    <div class="d-flex justify-content-center">
			                                <div class="item">
			                                    <a href="#">아이디 찾기</a>
			                                    <a> / </a>
			                                    <a href="#">비밀번호 찾기</a>
			                                </div>
			                                <div class="item">
			                                </div>
			                            </div>
					                    
					                  </div>
					                  
					                  <div class="modal-footer">
					                    <button id="send-board" type="button" class="btn btn-primary" data-bs-dismiss="modal" >로그인</button>
					                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					                  </div>
				                  </form>
				                  
				                </div>
				              </div>
				            </div>
				            <!-- 모달 엔드 -->
							

				            <button type="button" class="btn btn-outline-warning me-2" data-bs-toggle="modal" data-bs-target="#sign_upModal">회원가입</button>
				            <!-- 모달 스타트 -->
				            <div class="modal fade"  id="sign_upModal" tabindex="-1" aria-labelledby="sign_upModalLabel" aria-hidden="true">
				              <div class="modal-dialog modal-sl modal-dialog-centered">
				                <div class="modal-content">
				                  <div class="modal-header">
				                    <h5 class="modal-title" id="sign_upModalLabel">정보입력</h5>
				                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button><br />
				                  </div>
				                  
				                  <form id="modal-form" action="${pageContext.request.contextPath}/board/write" method="POST" role="form">
					                  <div class="modal-body">
					                  
					                      <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingInput" placeholder="Id">
		                                    <label for="floatingInput">ID</label>
		                                    <div class="double_check text-end">
		                                        <a href="#" class="btn btn-outline-secondary mt-2">중복확인</a>
		                                    </div>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
		                                    <label for="floatingPassword">비밀번호</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
		                                    <label for="floatingPassword">비밀번호확인</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingName" placeholder="Name">
		                                    <label for="floatingName">이름</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingPosition" placeholder="Position">
		                                    <label for="floatingPosition">직급</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingSsnum" placeholder="Rrnum">
		                                    <label for="floatingRrnum">주민번호</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingEmail" placeholder="Email">
		                                    <label for="floatingEmail">이메일</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingAddress" placeholder="Address">
		                                    <label for="floatingAddress">주소</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingHp" placeholder="Hp">
		                                    <label for="floatingHp">전화번호</label>
		                                  </div>
		                                  <div class="form-floating mb-2">
		                                    <input type="text" class="form-control" id="floatingRemarks" placeholder="remarks">
		                                    <label for="floatingRemarks">비고</label>
		                                  </div>
					                    
					                  </div>
					                  <div class="modal-footer">
					                    <button id="send-board" type="button" class="btn btn-primary" data-bs-dismiss="modal" >등록</button>
					                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
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
</nav>


