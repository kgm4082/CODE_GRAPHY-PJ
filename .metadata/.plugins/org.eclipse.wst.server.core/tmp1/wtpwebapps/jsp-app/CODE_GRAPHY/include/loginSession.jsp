<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
/////////////////////////////////////////////////////////////
	if (session.getAttribute("name") != null) {
/////////////////////////////////////////////////////////////
%>
<script>
  /*/////////////////////////////////////////////////
    함수명: loginSet
    기능: JSP코드에서 세션변수로 셋팅된 값을 화면에 반영함
  *//////////////////////////////////////////////////
  function loginSet(auth){// auto-권한

      $(function(){ /// jQB //////////////////

          // 로그인 버튼 텍스트 변경
          // 대상: .login_title / LOGIN -> LOGOUT
            $(".login_title")
            .text("LOGOUT")

          // 로그아웃 클릭시 로그아웃하기
          .click(function(){
              $.post(
                // 1. 호출페이지
                  "/CODE_GRAPHY/process/logout.jsp",
                  // 2. 전달변수셋팅
                  {},
                  // 3. 콜백함수
                  function(res){// res-결과값
                    res = res.replace(/\s/g,"");
                    console.log("실행결과:", res);
                      if(res==="ok"){

                          // 메시지
                          alert("로그아웃 되었습니다.");                          

                          // 첫페이지로 리로드
                          location.replace("/CODE_GRAPHY/html/index.jsp");
                          
                      } ////// if ////////////////
                      else{

                          // 메시지
                          alert("로그아웃시 문제가 발생하였습니다!"+res);

                      } ///// else ///////////////
                    

                  } /// 콜백함수 ///////

              );///////// Ajax - post /////////
          }) ///// click /////////////////////
          
        // 5. auth 권한 값이 "A"일 경우 
        // 관리자 페이지 아이콘 나타내기
        if (auth === "A" || auth === "S") {
            $(".admin_title").show()
            .click(()=>location.href="/CODE_GRAPHY/admin/list.jsp");
                
        } /////////// if /////////////////



      });////////// jQB //////////////////////

  }////////// loginSet 함수 /////////////////////////
  //////////////////////////////////////////////////

</script>
<%

/////////////////////////////////////////////////////////////
String auth = session.getAttribute("auth").toString();
out.print("<script>loginSet('" + auth + "');</script>");


} /////// if //////////////
// 맨위에서 열어놓은 if문이 여기서 닫힘! 여기까지 세션셋팅시 출력됨!
////////////////////////////////////////////////////////////////
%>