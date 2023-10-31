<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

  <div class="d-flex flex-column flex-shrink-0 p-3" style="width: 280px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
      <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">Menu</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#notice-collapse" aria-expanded="false">
          공지사항
        </button>
        <div class="collapse" id="notice-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="${pageContext.request.contextPath}/board/list" class="link-body-emphasis d-inline-flex text-decoration-none rounded">게시판</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#hrm-collapse" aria-expanded="false">
          인사관리
        </button>
        <div class="collapse" id="hrm-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">인사정보관리</a></li>
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">근태관리</a></li>
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">급여관리</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#materials-collapse" aria-expanded="false">
          자재관리
        </button>
        <div class="collapse" id="materials-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">자재재고관리</a></li>
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">입고자재관리</a></li>
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">출고자재관리</a></li>
            <li><a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">공급망업체정보관리</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#production-collapse" aria-expanded="false">
          생산관리
        </button>
        <div class="collapse" id="production-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">생산상품조회</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">불량품관리</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#customer-collapse" aria-expanded="false">
          고객 및 판매관리
        </button>
        <div class="collapse" id="customer-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">고객관리</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">주문관리</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">주문불량품관리</a></li>
          </ul>
        </div>
      </li>
      
      <li class="border-top my-3"></li>
            <div class="dropdown">
	            <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	                <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
	                <strong>mdo</strong>
	            </a>
	            <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
	                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/users_list">관리자페이지</a></li>
	                <li><a class="dropdown-item" href="#">환경설정</a></li>
	                <li><hr class="dropdown-divider"></li>
	                <li><a class="dropdown-item" href="#">Sign out</a></li>
	            </ul>
            </div>
    </ul>
  </div>

