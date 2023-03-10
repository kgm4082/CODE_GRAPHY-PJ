<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>CGP | 코드그라피(Code:graphy) 포트폴리오</title>
        <!-- 파비콘 -->
        <link rel="shortcut icon" href="../images/common/favicon.ico" />
        <!-- 스와이퍼 CSS -->
        <link rel="stylesheet" href="../css/swiper-bundle.min.css">
        <!-- 메인 CSS -->
        <link rel="stylesheet" href="../css/main.css" />
        <!-- 미디어쿼리 CSS -->
        <link rel="stylesheet" href="../css/media.css">
        <!-- 제이쿼리 라이브러리 CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <!-- 제이쿼리 UI CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
        <!-- 스와이퍼 JS 라이브러리 -->
        <script src="../js/swiper-bundle.min.js"></script>
        <!-- 공통 JS -->
        <script src="../js/common.js"></script>
        <!-- 메인 JS -->
        <script src="../js/main.js"></script>
    </head>
    <body>
        <!-- 로그인세션처리 인클루드 -->
        <%@ include file="../include/loginSession.jsp" %>
        <!-- 1. 헤더영역 -->
        <%@ include file="../include/header.jsp" %>
        <!-- 2.메인영역 -->
        <div id="main">
            <div class="main">
                <!-- 2-1. 메인배너 컨텐츠  -->
                <div class="banner">
                    <!-- 메인베너 비디오 -->
                    <a href="https://www.musinsa.com/brands/codegraphy" target=”_blank id="main_banner">
                        <video autoplay="" loop="" muted="" playsinline="">
                            <source src="../images/common/main_banner.mp4">
                        </video>
                    </a>
                    <!-- 마우스 스크롤 아이콘 -->
                    <div class="scroll_down_icon">
                        <span class="scroll_down_icon_mouse">
                            <span class="scroll_down_icon_mouse_move"></span>
                        </span>
                        <div class="scroll_down_icon_text">스크롤을 내리세요!</div>
                    </div>
                </div>
               <!-- 2-2. 카테고리 컨텐츠  -->
                <div class="category">
                    <div class="inner">
                        <!-- <div class="tit"><p>오늘의 <span>OOTD</span> 는?</p></div> -->
                        <div class="tit">CATEGORIES</div>
                        <ul class="contents">
                            <li>
                                <a href="">
                                    <img src="../images/category/category_outer.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../images/category/category_setup.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../images/category/category_pertex.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../images/category/category_top.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../images/category/category_bottom.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../images/category/category_acc.png" alt="">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 2-3. BEST 상품 컨텐츠 -->
                <div class="best">
                    <div class="inner">
                        <div class="tit">BEST ITEMS</div>
                        <div class="contents">
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g1"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[패딩 Ver.] 2-WAY 유틸리티 MA-1 자켓_그레이</p>
                                    <p class="normal">89,000원</p>
                                    <div class="price">
                                        <p class="sale">69,900원</p>
                                        <p class="per">21%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g2"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">헤비 보아 CGP 플리스 후드 집업 점퍼_4color</p>
                                    <p class="normal">89,000원</p>
                                    <div class="price">
                                        <p class="sale">69,900원</p>
                                        <p class="per">21%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g3"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[DIVO] RDS 에센셜 덕다운 푸파 숏패딩_5color</p>
                                    <p class="normal">124,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">19%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g4"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">하이넥 리치포켓 패딩 점퍼_쿨그레이</p>
                                    <p class="normal">129,000원</p>
                                    <div class="price">
                                        <p class="sale">89,900원</p>
                                        <p class="per">30%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g5"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[PRIMALOFT] 몬스터 숏패딩_블랙</p>
                                    <p class="normal">139,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">28%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g6"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">밀리터리 US-ARMY 패딩 점퍼_크림</p>
                                    <p class="normal">129,000원</p>
                                    <div class="price">
                                        <p class="sale">89,900원</p>
                                        <p class="per">30%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g7"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[DIVO] RDS 유틸리티 덕다운 푸파 숏패딩_쿨그레이</p>
                                    <p class="normal">124,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">19%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g8"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[DIVO] RDS 유틸리티 덕다운 푸파 숏패딩_라이트그레이</p>
                                    <p class="normal">124,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">19%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- more 박스 -->
                        <div class="more">
                            <a href="">
                                <div class="btn">VIEW MORE</div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- 2-4. BEST 상품 컨텐츠 -->
                <div class="best">
                    <div class="inner">
                        <div class="tit">ITEMS</div>
                        <div class="contents">
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g1"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[패딩 Ver.] 2-WAY 유틸리티 MA-1 자켓_그레이</p>
                                    <p class="normal">89,000원</p>
                                    <div class="price">
                                        <p class="sale">69,900원</p>
                                        <p class="per">21%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g2"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">헤비 보아 CGP 플리스 후드 집업 점퍼_4color</p>
                                    <p class="normal">89,000원</p>
                                    <div class="price">
                                        <p class="sale">69,900원</p>
                                        <p class="per">21%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g3"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[DIVO] RDS 에센셜 덕다운 푸파 숏패딩_5color</p>
                                    <p class="normal">124,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">19%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g4"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">하이넥 리치포켓 패딩 점퍼_쿨그레이</p>
                                    <p class="normal">129,000원</p>
                                    <div class="price">
                                        <p class="sale">89,900원</p>
                                        <p class="per">30%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g5"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[PRIMALOFT] 몬스터 숏패딩_블랙</p>
                                    <p class="normal">139,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">28%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g6"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">밀리터리 US-ARMY 패딩 점퍼_크림</p>
                                    <p class="normal">129,000원</p>
                                    <div class="price">
                                        <p class="sale">89,900원</p>
                                        <p class="per">30%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g7"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[DIVO] RDS 유틸리티 덕다운 푸파 숏패딩_쿨그레이</p>
                                    <p class="normal">124,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">19%</p>
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="bg3">
                                    <a href="">
                                        <div class="b3g8"></div>
                                    </a>
                                </div>
                                <div class="info">
                                    <p class="name">[DIVO] RDS 유틸리티 덕다운 푸파 숏패딩_라이트그레이</p>
                                    <p class="normal">124,000원</p>
                                    <div class="price">
                                        <p class="sale">99,900원</p>
                                        <p class="per">19%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- more 박스 -->
                        <div class="more">
                            <a href="">
                                <div class="btn">VIEW MORE</div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- 2-4. 스타일링 컨텐츠 -->
                <div class="style">
                    <div class="inner">
                        <!-- 제목 -->
                        <div class="tit">STYLING</div>
                        <div class="contents">
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g1"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 컴퍼스</li>
                                            <li># 플리스</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">헤비 보아 CGP 플리스 후드 집업 점퍼_4color</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g2"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 아메카지</li>
                                            <li># 가을룩</li>
                                            <li># 코듀로이</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[내피분리형] US-ARMY 밀리터리 피쉬테일 후드 롱파카_카키</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g3"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 꾸안꾸</li>
                                            <li># 벌룬핏</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[PRIMALOFT] 몬스터 롱파카_블랙</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">139,000원</p>
                                                    <p class="normal">184,000원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g4"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 셋업코디</li>
                                            <li># 캔버스</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[SET] (맨투맨 OR 후드 선택) CGP 아치 로고 트레이닝 셋업_멜란지그레이</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">59,900원</p>
                                                    <p class="normal">97,900원</p>
                                                </div>
                                                <p class="per">39%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g5"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 아메카지</li>
                                            <li># 가을룩</li>
                                            <li># 코듀로이</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[패딩 Ver.] 2-WAY 유틸리티 MA-1 자켓_블랙</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">52,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">41%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g3"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 꾸안꾸</li>
                                            <li># 벌룬핏</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[PRIMALOFT] 몬스터 롱파카_블랙</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g1"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 컴퍼스</li>
                                            <li># 플리스</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">헤비 보아 CGP 플리스 후드 집업 점퍼_4color</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g2"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 아메카지</li>
                                            <li># 가을룩</li>
                                            <li># 코듀로이</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[내피분리형] US-ARMY 밀리터리 피쉬테일 후드 롱파카_카키</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g3"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 꾸안꾸</li>
                                            <li># 벌룬핏</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[PRIMALOFT] 몬스터 롱파카_블랙</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g1"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 컴퍼스</li>
                                            <li># 플리스</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">헤비 보아 CGP 플리스 후드 집업 점퍼_4color</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g2"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 아메카지</li>
                                            <li># 가을룩</li>
                                            <li># 코듀로이</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[내피분리형] US-ARMY 밀리터리 피쉬테일 후드 롱파카_카키</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g3"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 꾸안꾸</li>
                                            <li># 벌룬핏</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[PRIMALOFT] 몬스터 롱파카_블랙</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g1"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 컴퍼스</li>
                                            <li># 플리스</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">헤비 보아 CGP 플리스 후드 집업 점퍼_4color</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g2"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 아메카지</li>
                                            <li># 가을룩</li>
                                            <li># 코듀로이</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[내피분리형] US-ARMY 밀리터리 피쉬테일 후드 롱파카_카키</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                  <div class="swiper-slide">
                                    <div class="bg4">
                                        <a href="">
                                            <div class="b4g3"></div>
                                        </a>
                                    </div>
                                    <div class="info">
                                        <ul class="keyword">
                                            <li># 캐주얼</li>
                                            <li># 꾸안꾸</li>
                                            <li># 벌룬핏</li>
                                        </ul>
                                        <div class="des">
                                            <p class="name">[PRIMALOFT] 몬스터 롱파카_블랙</p>
                                            <div class="price">
                                                <div class="num">
                                                    <p class="sale">39,900원</p>
                                                    <p class="normal">89,900원</p>
                                                </div>
                                                <p class="per">55%</p>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                                 
                                  
                                  
                                </div>
                              </div>
                        </div>
                    </div>
                </div>
                <!-- 2-5. 인스타그램 컨텐츠 -->
                <div class="instagram">
                    <div class="inner">
                        <!-- 제목 -->
                        <div class="tit">
                            <a href="https://www.instagram.com/code_graphy/">
                                <img src="../images/common/tit_insta.png" alt="인스타그램 로고">
                                <!-- INSTAGRAM -->
                            </a>
                        </div>
                        <!-- 컨텐츠 -->
                        <div class="contents">
                            <a href="https://www.instagram.com/p/ClOBXG7vOgm/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g1"></div>
                            </a>
                            <a href="https://www.instagram.com/p/Cj17W2jL9wE/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g2"></div>
                            </a>
                            <a href="https://www.instagram.com/p/Ciznr3prfTS/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g3"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CkiT7YOBztU/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g4"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CjzJJQUOnj5/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g5"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CjedgixL5Qw/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g6"></div>
                            </a>
                            <a href="https://www.instagram.com/p/Ck-pOFLh_ZS/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g7"></div>
                            </a>
                            <a href="https://www.instagram.com/p/Ck43Eh0Lqmv/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g8"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CioQ6pesiBz/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g9"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CdvFJBjLZaj/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g10"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CkLDzzsrfrl/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g11"></div>
                            </a>
                            <a href="https://www.instagram.com/p/CizOkRbvrqh/?utm_source=ig_web_copy_link" target=”_blank class="bg5">
                                <div class="b5g12"></div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 3. 푸터영역 -->
        <%@ include file="../include/footer.jsp" %>
    </body>
</html>