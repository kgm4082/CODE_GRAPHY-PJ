<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JOIN | 코드그라피(Code:graphy) 포트폴리오</title>
        <!-- 파비콘 -->
        <link rel="shortcut icon" href="../images/common/favicon.ico" />
        <!-- 회원가입 CSS -->
        <link rel="stylesheet" href="../css/join.css" />
        <!-- 미디어쿼리 CSS -->
        <link rel="stylesheet" href="../css/media.css">
        <!-- 제이쿼리 라이브러리 CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <!-- 제이쿼리 UI CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
        <!-- 공통 -->
        <script src="../js/common.js"></script>
        <!-- 로그인 JS -->
        <script src="../js/join.js"></script>
    </head>
   <body>
    <!-- 로그인세션처리 인클루드 -->
    <%@ include file="../include/loginSession.jsp" %>
    <!-- 1. 헤더영역 -->
    <%@ include file="../include/header.jsp" %>
    <!-- 2.메인영역 -->
    <div id="main">
        <div class="main">
           <div class="signUp_box">
                <div class="signUp">
                    <!-- 제목 -->
                    <div class="tit">JOIN</div>
                    <!-- 회원가입 폼 -->
                    <form action="../process/ins.jsp" method="post" class="logF">
                        <!-- 아이디 -->
                        <div class="minput">
                            <label for="mid">아이디 (필수)</label>
                            <input type="text" name="mid" id="mid">
                            <p class="error"></p>
                            <p class="text"> (영문소문자/숫자, 4~16자)</p>
                        </div>
                        <!-- 비밀번호 -->
                        <div class="minput">
                            <label for="mpw">비밀번호 (필수)</label>
                            <div class="tooltip_wrap">
                                <input type="password" name="mpw" id="mpw" maxlength="16">
                                <!-- 툴팁 -->
                                <div class="tooltip">
                                    <div class="content">
                                        <strong>※ 비밀번호 입력 조건</strong>
                                        <div class="warntxt">
                                            - 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자
                                            <br>
                                            - 입력 가능 특수문자
                                            <br>
                                            &nbsp;&nbsp;&nbsp;  ~ ` ! @ # $ % ^ ( ) _ - = { } [ ] | ; : &lt; &gt; , . ? /
                                            <br>
                                            - 공백 입력 불가능
                                        </div>
                                    </div>
                                    <div class="warn_close"></div>
                                </div>
                                <p class="error"></p>
                                <p class="text"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</p>
                            </div>
                        </div>
                        <!-- 비밀번호 확인 -->
                        <div class="minput">
                            <label for="mpw2">비밀번호 확인 (필수)</label>
                            <input type="password" name="mpw2" id="mpw2" maxlength="16">
                            <p class="error"></p>
                        </div>
                        <!-- 이름 -->
                        <div class="minput">
                            <label for="mnm">이름 (필수)</label>
                            <input type="text" name="mnm" id="mnm" maxlength="20">
                            <p class="error"></p>
                        </div>
                        <div class="minput">
                            <label for="phone">휴대전화</label>
                            <input type="text" name="phone" id="phone" maxlength="13">
                            <p class="error" style="display:block"></p>
                        </div>
                        <div class="minput">
                            <label for="email">이메일 (필수)</label>
                            <input type="text" name="email" id="email">
                            <p class="error"></p>
                        </div>
                        <div class="btnbx">
                            <p>＊ 선택항목은 입력하지 않거나 동의하지 않아도 회원 가입이 가능합니다.</p>
                            <input type="submit" id="join_btn" value="회원가입">
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