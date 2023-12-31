<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
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

    <link rel="stylesheet" href="/login/css/style.css">

</head>
<body>
	
	<% 
	String loginBtn = "로그인";
	String loginLink = "login.jsp";
	if(session.getAttribute("memid")==null) {
		loginBtn = "로그인";
		loginLink = "login.jsp";
	}else{
		loginBtn = "로그아웃";
		loginLink = "logout.jsp";
	}
	%>

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

    <!-- 로그인 -->
    <section>
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow rounded">
                        <div class="card-body p-5 text-center">
                            <h3 class="mb-5">로그인</h3>

                            <div class="form-floating mb-2">
                                <input type="text" class="form-control" id="userid" placeholder="Id">
                                <label for="floatingInput">아이디</label>
                            </div>

                            <div class="form-floating mb-2">
                                <input type="text" class="form-control" id="userid" placeholder="Id">
                                <label for="floatingInput">비밀번호</label>
                            </div>

                            <div class="form-check d-flex justify-content-around mb-3">
                                <div class="item">
                                <input type="checkbox" class="form-check-input" id="remember-id">
                                <label for="rememver-id" class="form-check-label">아이디 저장</label>
                                </div>
                                <div class="item">
                                <input type="checkbox" class="form-check-input" id="remember-me">
                                <label for="rememver-me" class="form-check-label">자동 로그인</label>
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

                            <hr class="mt-3">

                            <div class="loginbtn">
                            <a href="/index.html">
                            <button class="btn btn-primary btn-lg btn-block">로그인</button>
                            </a>

                            <a href="/index.html">
                            <button class="btn btn-success btn-lg btn-block">돌아가기</button>
                            </a>
                            </div>

                            <hr class="mt-4 mb-3">

                        </div>
                    </div>
                </div>
            </div>

        </div>
      </section>


    <footer>
        <div class="info">

        </div>
        <p class="copy">
            Copyright All rughts reserved.
        </p>
    </footer>

</body>
</html>