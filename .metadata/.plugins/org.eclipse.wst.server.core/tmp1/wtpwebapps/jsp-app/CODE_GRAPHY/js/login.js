// 코드그라피 포트폴리오 로그인 JS - login.js

$(() => {
    //////////////////// jQB ////////////////////

    /*****************************************************
        [ 1. 로그인 화면 메뉴 ]
        회원 , 비화원을 나눠서 각각 클릭시
        해당 영역만 보이게 설정

        [ 2. 로그인 유효성 검사 ]
        아이디 와 비밀번호가 불일치시 알림을 띄우고
        아이디 와 비밀번호 일치시 페이지 리로드 시킨다
    *****************************************************/
    // 회원 메뉴 버튼
    const member = $(".main .signIn_box .signIn .tab .member");
    // 비회원 메뉴 버튼 
    const no_member = $(".main .signIn_box .signIn .tab .no_member");

    // 회원 메뉴 클릭시 이벤트 효과 적용
    member.click(()=>{
        $(".member").css("color","#af231c");
        $(".member").css("fontWeight","bold");
        $(".no_member").css("color","#696969");
        $(".no_member").css("fontWeight","normal");
        $(".main .signIn_box .signIn .login_form").show()
        $(".main .signIn_box .signIn .guest_form").hide()
    })
    // 비회원 메뉴 클릭시 이벤트 효과 적용
    no_member.click(()=>{
        $(".member").css("color","#696969");
        $(".member").css("fontWeight","normal");
        $(".no_member").css("color","#af231c");
        $(".no_member").css("fontWeight","bold");
        $(".main .signIn_box .signIn .login_form").hide()
        $(".main .signIn_box .signIn .guest_form").show()
    })


    // 아이디 입력요소
    let mid = $('#mid');
    // 비밀번호 입력요소
    let mpw = $('#mpw');

    // 회원 로그인 클릭시
    $('#login_btn').click(e => {
        // 기본이동막기
        e.preventDefault();

        // 아이디/비번 빈값 여부확인
        // 입력된 값 읽어오기
        if (mid.val().trim() === "") {
            alert('아이디 항목은 필수 입력값입니다.');
            mid.val('').focus(); // 아이디 지우고 포커스감
            mpw.val(''); //비번 지우기
        } ////////// if /////////////
        else if(mpw.val().trim() === "") {
            alert('패스워드 항목은 필수 입력값입니다.');
            mpw.val('').focus(); // 비밀번호 지우고 포커스감
        }
        else if(mpw.val() <= 3) {
            alert('패스워드 항목이 4자(개) 이상으로 해주십시오.');
            mpw.val('').focus(); // 비밀번호 지우고 포커스감
        }
        else {
            // Ajax의 post방식으로 로그인처리 페이지 호출!
            // $.post(URL,data,callback)
             $.post(
                // 1. 전송할페이지
                "../process/loginSet.jsp",
                // 2. 보낼데이터
                {
                    mid: $("#mid").val(),
                    mpw: $("#mpw").val(),
                },
                // 3. 처리후 함수
                function(res) {
                    // 공백제거
                    res = res.replace(/\s/g, "");
                    console.log("결과:", res);

                    // 1. 일치하면 성공 메시지를 첫페이지로 리로드해준다!
                    if (res === "ok") {
                        alert('로그인에 성공하였습니다!');

                        // 첫페이지로 이동하기!(이전페이지 지움!)
                        location.replace("index.jsp");
                    } /////////// if : 성공시 //////////

                    // 2. 아이디가 없으면 '없는 아이디입니다'
                    else if (res === "no") {
                        alert("사용가능한 아이디가 아닙니다!");
                        mid.val("").focus();
                        mpw.val("");
                    } ////////// else if : 아이디가 없음 /////////

                    // 3. 아이디가 있으나 비번이 틀리면 '비밀번호를 확인해주세요'
                    else if (res === "again") {
                        alert("아이디 또는 비밀번호가 일치하지 않습니다.");
                        mpw.val("").focus();
                    } ////////// else if : 비번 불일치 ///////////

                    else { // DB처리 에러
                        alert("관리자에게 문의 바랍니다!"+res);
                    } //////// else 에러시 ///////
                } /////////// callback ///////
             ); /////////// post //////////
        } ///////// else ////////////

    }); //////////// click ///////////////
}); //////////////////// jQB ////////////////////