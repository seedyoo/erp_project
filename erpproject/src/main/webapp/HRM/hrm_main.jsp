<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- bootstrap - css  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- bootstrap - js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <!-- bootstrap_icon - css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link rel="stylesheet" href="css/style.css">

</head>
<body>

    <!-- topmenubar -->
    <header class="topmenubar p-3">
        <div class="container">

            <div class="menucontent d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            
                <a href="/index.html" class="logo d-flex align-items-center mb-43mb-md-0 me-md-auto text-white text-decoration-none">
                    <svg class="bi pe-none me-2" width="0" height="32"><use xlink:href="index.html"/></svg>
                    <img src="/img/img.jpg" alt="" width="32" height="32" class="rounded-circle me-2">
                    <span class="fs-4">Logo</span>
                </a>

                       
                <div class="text-end">
                    <a href="/login/login.html" class="btn btn-outline-light me-2">로그인</a>
                    <a href="/login/sign_up.html" class="btn btn-secondary me-2">회원가입</a>
    
                </div>

          </div>
        </div>
    </header>

    <main class="sidebar d-flex flex-nowrap">
    <section class="sidebar">
        <!-- 사이드바 -->
        <div class="sidebarbox d-flex flex-column flex-shrink-0 p-3">
            <a class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="index.html"/></svg>
            <span class="fs-4">Menu</span>
            </a>
            <hr>
            
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="my-2">
                    <button class="btn d-inline-flex align-items-center collapsed border-0" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#contents-collapse" aria-controls="contents-collapse">
                        <!-- <img src="/img/symbol2.webp" alt="" width="20" height="20"> -->ㅤ공지사항</button>
                    <ul class="list-unstyled ps-3 collapse" id="contents-collapse">
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="#typography">공지게시판</a></li>
                    </ul>
                  </li>
                <li class="my-2">
                    <button class="btn d-inline-flex align-items-center collapsed border-0" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#forms-collapse" aria-controls="forms-collapse">
                        <!-- <img src="/img/symbol2.webp" alt="" width="20" height="20"> -->ㅤ인사관리</button>
                    <ul class="list-unstyled ps-3 collapse" id="forms-collapse">
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/HRM/hrm_main.html">인사정보조회</a></li>
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/HRM/hrm_AM.html">근태관리</a></li>
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/HRM/hrm_salary.html">급여관리</a></li>
                    </ul>
                  </li>
                <li class="my-2">
                    <button class="btn d-inline-flex align-items-center collapsed border-0" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#components-collapse" aria-controls="components-collapse">
                        <!-- <img src="/img/symbol2.webp" alt="" width="20" height="20"> -->ㅤ자재관리</button>
                    <ul class="list-unstyled ps-3 collapse" id="components-collapse">
                        <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/materials/materials_stock/material_stock.html">자재재고관리</a></li>
                        <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/materials/material_receive/material_receive.html">입고자재관리</a></li>
                        <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/materials/material_delivery/material_delivery.html">출고자재관리</a></li>
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/materials/supplycompany/supplycompany.html">공급망업체정보관리</a></li>
                    </ul>
                  </li>
                  <li class="my-2">
                    <button class="btn d-inline-flex align-items-center collapsed border-0" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#mng-collapse" aria-controls="mng-collapse">
                        <!-- <img src="/img/symbol2.webp" alt="" width="20" height="20"> -->ㅤ생산관리</button>
                    <ul class="list-unstyled ps-3 collapse" id="mng-collapse">
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/production/production.html">생산상품조회</a></li>
                      <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="#images">불량품관리</a></li>
                    </ul>
                  </li>
                  <li class="my-2">
                    <button class="btn d-inline-flex align-items-center collapsed border-0" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#ordercustomer-collapse" aria-controls="mng-collapse">
                        <!-- <img src="/img/symbol2.webp" alt="" width="20" height="20"> -->ㅤ판매 및 고객관리</button>
                    <ul class="list-unstyled ps-3 collapse" id="ordercustomer-collapse">
                        <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/customer/customer.html">고객관리</a></li>
                        <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="/OM/om_main.html">주문관리</a></li>
                        <li><a class="d-inline-flex align-items-center rounded text-decoration-none" href="#images">불량품관리</a></li>
                    </ul>
                  </li>
            </ul>
            <hr>
            <div class="dropdown">
            <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                <strong>mdo</strong>
            </a>
            <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                <li><a class="dropdown-item" href="#">환경설정</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Sign out</a></li>
            </ul>
            </div>
        </div>
    </section>



    <!-- 인사 메인 -->
    <section>
        
        <div class="hrm_check">
            
            <h2>인사 조회</h2>
            <hr width="800px">
            
            <form class="hrm_searchbox">
                <label for="department">부서 선택:</label>
                <select id="department" name="department">
                    <option value="hr">임원</option>
                    <option value="finance">Finance</option>
                    <option value="it">IT</option>
                    <option value="marketing">Marketing</option>
                    
                </select>
        
                <label for="employee_number">사원 번호:</label>
                <input type="text" id="employee_number" name="employee_number" required>
        
                <button type="submit" class="hpr_search-button">조 회</button>
            </form>
        </div>

        <div class="hrm_information">
                
            <h3>인사 정보</h3>
            <hr width="800px">
            <a href="/HRM/hrm_PRecord_write.html">
                <input class="hi_write" type="button" value="작성">  
            </a>
        </div>
         
    </section>

        

       


    </main>

    <footer>
        <div class="info">

        </div>
        <p class="copy">
            Copyright All rughts reserved.
        </p>
    </footer>

</body>
</html>