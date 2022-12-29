<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>LOGIN | 코드그라피(Code:graphy) 포트폴리오</title>
        <!-- 파비콘 -->
        <link rel="shortcut icon" href="../images/common/favicon.ico" />
        <!-- 로그인 CSS -->
        <link rel="stylesheet" href="../css/login.css" />
        <!-- 미디어쿼리 CSS -->
        <link rel="stylesheet" href="../css/media.css">
        <!-- 제이쿼리 라이브러리 CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <!-- 제이쿼리 UI CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
        <!-- 공통 -->
        <script src="../js/common.js"></script>
        <!-- 로그인 JS -->
        <script src="../js/login.js"></script>
    </head>
    <body>
    <!-- 로그인세션처리 인클루드 -->
    <%@ include file="../include/loginSession.jsp" %>
    <!-- 1. 헤더영역 -->
    <%@ include file="../include/header.jsp" %>
    <!-- 2.메인영역 -->
    <div id="main">
        <div class="main">
           <div class="signIn_box">
                <div class="signIn">
                    <!-- 제목 -->
                    <div class="tit">LOGIN</div>
                    <!-- 탭 메뉴 -->
                    <ul class="tab">
                        <li class="member">회원</li>
                        <li class="no_member">비회원</li>
                    </ul>
                    <!-- 회원 로그인 폼 -->
                    <form action="../process/loginSet.jsp" class="login_form">
                        <!-- 아이디 -->
                        <div class="minput">
                            <label for="mid">아이디</label>
                            <input type="text" name="mid" id="mid">
                        </div>
                        <!-- 비밀번호 -->
                        <div class="minput">
                            <label for="mpw">비밀번호</label>
                            <input type="password" name="mpw" id="mpw">
                        </div>
                        <!-- 서브밋 버튼 -->
                        <div class="btnbx">
                            <input type="submit" id="login_btn" value="로그인">
                            <a href="join.jsp" class="join">회원가입</a>
                        </div>
                        <!-- 아이디/비밀번호 찾기 -->
                        <div class="addbtn">
                            <a href="#">아이디/비밀번호 찾기</a>
                        </div>
                        <!-- SNS 로그인 -->
                            <ul class="sns_login">
                                <li><a href="#"><span class="naver"></span></a></li>
                                <li><a href="#"><span class="kakao"></span></a></li>
                                <li><a href="#"><span class="apple"></span></a></li>
                            </ul>
                    </form>
                    <!-- 비회원 주문조회 폼 -->
                    <form action="" class="guest_form">
                        <p class="des">비회원의 경우, 주문시의 주문번호로 주문조회가 가능합니다.</p>
                        <!-- 주문자명 -->
                        <div class="minput">
                            <label for="gid">주문자명</label>
                            <input type="text" name="gid" id="gid">
                        </div>
                        <!-- 주문번호 -->
                        <div class="minput">
                            <label for="gnum">주문번호</label>
                            <input type="text" name="gnum" id="gnum" placeholder="주문번호">
                        </div>
                        <!-- 비회원주문 비밀번호 -->
                        <div class="minput">
                            <label for="gpw">비회원주문 비밀번호</label>
                            <input type="password" name="gpw" id="gpw">
                        </div>
                        <!-- 서브밋 버튼 -->
                        <div class="btnbx">
                            <input type="submit" id="lookup_btn" value="조회">
                        </div>
                    </form>
                </div>
           </div>
        </div>
    </div>
    <!-- 3. 푸터영역 -->
    <%@ include file="../include/footer.jsp" %>
    </body>
</html>