<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="header">
	<!-- 1-1. 데스크탑(DESKTOP) -->
	<div class="header ibx">
		<div class="contents_box">
			<!-- 1-1-0. 햄버거 버튼 -->
			<div class="ham">
				<svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
                            <title>Icons/24px/Menu</title>
                            <defs>
                                <path
						d="M11.0024554,18 C11.514032,18 11.9356655,18.3827202 11.9932888,18.8826674 L12,19 C12,19.5522847 11.5536886,20 11.0024554,20 L3.99754465,20 C3.44661595,20 3,19.5561352 3,19 C3,18.4477153 3.4463114,18 3.99754465,18 L11.0024554,18 Z M20.0066023,11 C20.5160523,11 20.935933,11.3827202 20.9933167,11.8826674 L21,12 C21,12.5522847 20.5550537,13 20.0066023,13 L3.99339768,13 C3.44475929,13 3,12.5561352 3,12 C3,11.4477153 3.44494629,11 3.99339768,11 L20.0066023,11 Z M20.0066023,4 C20.5160523,4 20.935933,4.38272018 20.9933167,4.88266744 L21,5 C21,5.55228475 20.5550537,6 20.0066023,6 L3.99339768,6 C3.44475929,6 3,5.55613518 3,5 C3,4.44771525 3.44494629,4 3.99339768,4 L20.0066023,4 Z"
						id="path-1"></path>
                            </defs>
                            <g stroke="none" stroke-width="1"
						fill="none">
                                <mask id="mask-2" fill="white">
                                    <use xlink:href="#path-1"></use>
                                </mask>
                                <use id="Combined-Shape" fill="#000000"
						fill-rule="nonzero" xlink:href="#path-1"></use>
                            </g>
                        </svg>
			</div>
			<!-- 1-1-1. 로고 -->
			<div class="logo">
				<a href="/CODE_GRAPHY/html/index.jsp"> <img src="../images/common/main_logo.png"
					alt="메인로고" />
				</a>
			</div>
			<!-- 1-1-2. Global Navigation Bar -->
			<div class="GNB">
				<ul>
					<!-- 상품 -->
					<li class=""><a href=""><span>SHOP</span></a> <!-- Local Navigation Bar -->
						<div class="LNB">
							<ul>
								<li><a href="">BEST</a></li>
								<li><a href="">OUTER</a></li>
								<li><a href="">SET</a></li>
								<li><a href="">PERTEX</a></li>
								<li><a href="">TOP</a></li>
								<li><a href="">BOTTOM</a></li>
								<li><a href="">ACC</a></li>
								<li><a href="">개인결제창</a></li>
							</ul>
						</div></li>
					<!-- 룩북 -->
					<li><a href=""><span>LOOKBOOK</span></a></li>
					<!-- 매장찾기 -->
					<li><a href="/CODE_GRAPHY/html/aboutus.jsp"><span>ABOUT US</span></a></li>
					<!-- 커뮤니티 -->
					<li class=""><a href=""><span>COMMUNITY</span></a> <!-- Local Navigation Bar -->
						<div class="LNB">
							<ul>
								<li><a href="">NOTICE</a></li>
								<li><a href="">Q&A</a></li>
								<li><a href="">REVIEW</a></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- 1-1-3. TAB -->
		<ul class="tab_box">
			<!-- 로그인 -->
			<li><a href="/CODE_GRAPHY/html/login.jsp"><span class="login_title">LOGIN</span></a></li>
			<!-- 관리자페이지 -->
			<li class="admin_title pc_admin" style="height:80px; line-height:80px; cursor:pointer; display:none">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#af231c" class="bi bi-person-fill-gear" viewBox="0 0 16 16">
  					<path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Zm9.886-3.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z"/>
				</svg>
			</li>
			<!-- MYPAGE -->
			<li>
				<a href="">
					<svg class="svg-icon" style="vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg">
						<path d="M939.904 821.333A439.296 439.296 0 0 0 633.557 503.34a233.259 233.259 0 0 0 111.574-198.87C745.13 175.915 640.555 71.296 512 71.296S278.87 175.915 278.87 304.469a233.259 233.259 0 0 0 111.573 198.87A439.296 439.296 0 0 0 84.096 821.333a103.595 103.595 0 0 0 19.541 89.088c21.035 26.88 52.608 42.24 86.614 42.24h643.456a109.227 109.227 0 0 0 86.613-42.24c20.139-25.6 27.221-58.069 19.584-89.088zM330.069 304.47c0-100.352 81.622-181.973 181.931-181.973s181.93 81.621 181.93 181.973S612.353 486.4 512 486.4s-181.93-81.621-181.93-181.93z m549.974 574.422a59.307 59.307 0 0 1-46.336 22.613H190.25a59.307 59.307 0 0 1-46.336-22.613 52.096 52.096 0 0 1-10.155-45.312C176.725 659.328 332.245 537.6 512 537.6s335.275 121.728 378.197 295.979a52.053 52.053 0 0 1-10.154 45.312z" />
					</svg>
				</a> 
				<!-- Local Navigation Bar -->
				<div class="LNB">
					<ul>
						<li><a href="">ORDER LIST</a></li>
						<li><a href="">PROFILE</a></li>
						<li><a href="">COUPON LIST</a></li>
						<li><a href="">MILEAGE</a></li>
						<li><a href="">BOARD</a></li>
					</ul>
				</div>
			</li>
			<!-- 장바구니 -->
			<li>
				<a href="">
					<svg aria-hidden="true" class="pre-nav-design-icon" focusable="false" viewBox="0 0 24 24" role="img" width="24px" height="24px" fill="none">
						<path stroke="currentColor" stroke-width="1.5" d="M8.25 8.25V6a2.25 2.25 0 012.25-2.25h3a2.25 2.25 0 110 4.5H3.75v8.25a3.75 3.75 0 003.75 3.75h9a3.75 3.75 0 003.75-3.75V8.25H17.5"></path>
					</svg>
				</a>
			</li>
			<!-- 위시리스트 -->
			<li>
				<a href="">
					<svg aria-hidden="true" class="pre-nav-design-icon" focusable="false" viewBox="0 0 24 24" role="img" width="24px" height="24px" fill="none">
						<path stroke="currentColor" stroke-width="1.5" d="M16.794 3.75c1.324 0 2.568.516 3.504 1.451a4.96 4.96 0 010 7.008L12 20.508l-8.299-8.299a4.96 4.96 0 010-7.007A4.923 4.923 0 017.205 3.75c1.324 0 2.568.516 3.504 1.451l.76.76.531.531.53-.531.76-.76a4.926 4.926 0 013.504-1.451"></path>
					</svg>
				</a>
			</li>
			<!-- 검색창 -->
			<li class="sch" style="height:80px; line-height:80px; cursor:pointer">
				<svg class="svg-icon" style="vertical-align: middle; fill: currentColor; overflow: hidden;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg">
					<path d="M192 480a256 256 0 1 1 512 0 256 256 0 0 1-512 0m631.776 362.496l-143.2-143.168A318.464 318.464 0 0 0 768 480c0-176.736-143.264-320-320-320S128 303.264 128 480s143.264 320 320 320a318.016 318.016 0 0 0 184.16-58.592l146.336 146.368c12.512 12.48 32.768 12.48 45.28 0 12.48-12.512 12.48-32.768 0-45.28" />
				</svg>
			</li>
		</ul>
	</div>
	<!-- 1-2. 모바일 LNB -->
	<div class="mobx">
		<div class="mob_box">
			<div class="mob_wrap">
				<div class="mgnb">
					<ul>
						<li><span>SHOP</span>
							<div class="mlnb" style="display:none">
								<ul>
									<li><a href="">BEST</a></li>
									<li><a href="">OUTER</a></li>
									<li><a href="">SET</a></li>
									<li><a href="">PERTEX</a></li>
									<li><a href="">TOP</a></li>
									<li><a href="">BOTTOM</a></li>
									<li><a href="">ACC</a></li>
									<li><a href="">개인결제창</a></li>
								</ul>
							</div></li>
						<li><a href="">LOOKBOOK</a></li>
						<li><a href="/CODE_GRAPHY/html/login.jsp">ABOUT US</a></li>
						<li><span>COMMUNITY</span>
							<div class="mlnb" style="display: none;">
								<ul>
									<li><a href="">NOTICE</a></li>
									<li><a href="">Q&A</a></li>
									<li><a href="">REVIEW</a></li>
								</ul>
							</div></li>
						<li><span>MY</span>
							<div class="mlnb" style="display: none;">
								<ul>
									<li><a href="">ORDER LIST</a></li>
									<li><a href="">PROFILE</a></li>
									<li><a href="">COUPON LIST</a></li>
									<li><a href="">MILEAGE</a></li>
									<li><a href="">BOARD</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="mtab">
					<ul>
						<li class="admin_title mobile_admin" style="color:red; display:none; font-size: 1.4rem; line-height: 28px; color: #af231c;">관리자</li>
						<li><a href="/CODE_GRAPHY/html/login.jsp" class="login_title">로그인</a></li>
						<li><a href="/CODE_GRAPHY/html/join.jsp">회원가입</a></li>
						<li><a href="">장바구니</a></li>
						<li><a href="">찜하기</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 1-3. 검색창 -->
	<div class="sch_area">
		<div class="sch_cover"></div>
		<div class="sch_boxs">
			<form action="/CODE_GRAPHY/html/search.jsp">
				<div class="sch_box">
					<input id="search" name="search" type="text" maxlength="25"
						style="outline: 0;"> <input id="sbtn" name="submit"
						type="submit" value="">
				</div>
				<div class="key_box">
					<ul class="list">
						<li><a href=""># 헤비아우터</a></li>
						<li><a href=""># 플리스</a></li>
						<li><a href=""># 트레이닝셋업</a></li>
						<li><a href=""># 하프집업</a></li>
						<li><a href=""># 조거팬츠</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
	<!-- 1-4. 위젯 레이어 -->
	<div class="widget-layer">
		<div class="util-btn">
			<a href=""><div class="find"></div></a> <a
				href="https://pf.kakao.com/_CgIxjxb" target=”_blank><div
					class="talk"></div></a>
		</div>
		<div class="top-btn">
			<div class="top"></div>
		</div>
	</div>
</div>