// 코드그라피 포트폴리오 회원가입 JS - join.js

$(() => {
  //////////////////// jQB ////////////////////

  /*****************************************************
        [ 1. 회원가입 유효성 검사 ]
        아이디/비밀번호/이름/휴대전화/이메일등 유효성 검사를 하고
        유효성에 적합하지 않으면 에러 메시지 띄우고 유효성 적합시
        계정 생성후 index.jsp로 리로드 시킨다
    *****************************************************/
  $(`input[type=text][id!=search],
   input[type=password]`).blur(function () {
    /// 모든공백 제거함수 //////
    // get rid of space -> 공백을 제거하라!
    const groSpace = (cv) => cv.replace(/\s/g, "");
    // 원형: (cv) => {return cv.replace(/\s/g,"");}
    // 정규식: 슬래쉬(/)사이에 표현, \s 스페이스문자
    // g는 모두 찾으라는 global(전역) 플래그문자임
    // -> 플래그문자 Flag String 즉, 표시하면 작동하는 문법

    // 1. 방금 블러가 발생한 요소의 id는?
    let cid = $(this).attr("id");
    // cid는 current id 즉, 현재아이디라는 뜻으로 작명!

    // 2. 블러가 발생한 요소의 입력값은?
    let cv;
    // cv는 current value 즉, 현재값이라는 뜻으로 작명!

    // 2-1.이름일때 앞뒤공백만 제거
    if (cid === "mnm") cv = $(this).val().trim();
    // 2-2.기타경우엔 모든 공백제거
    else cv = groSpace($(this).val());
    // trim() 문자열 앞뒤공백제거 메서드

    // 제거된 공백문자로 입력창에 다시 출력하기
    $(this).val(cv);
    // val(값) -> 값넣기!

    console.log("블러발생!", cid, "/", cv);

    /**************************************** 
            빈값 여부 체크하기
       ****************************************/
    if (cv === "") {
      switch (cid) {
        case "mid":
          $(this).siblings(".error").text("아이디를 입력해 주세요.");
          break;
        case "mpw":
          $(this).siblings(".error").text("비밀번호를 입력해 주세요.");
          break;
        case "mpw2":
          $(this).siblings(".error").text("비밀번호가 일치하지 않습니다.");
          break;
        case "mnm":
          $(this).siblings(".error").text("이름을 입력해 주세요");
          break;
        case "phone":
          $(this).siblings(".error").text("휴대폰 번호를 입력하세요.");
          break;
        case "email":
          $(this).siblings(".error").text("이메일 주소를 입력하세요.");
          break;

        default:
          $(this).siblings(".error").empty();
          break;
      }
      // 불통과!
      pass = false;
    } /////////// if : 빈값체크 ///////////

    /****************************************************** 
            아이디일 경우 유효성 검사하기
            - 검사기준: 영문자로 시작하는 6~20글자 영문자/숫자
        ******************************************************/
    else if (cid === "mid") {
      // console.log("검사결과:",vReg(cv,cid));

      if (!vReg(cv, cid)) {
        // 불통과시 if안으로 들어오기!
        // false일때 들어오려면 !(NOT)연산자로 결과 뒤집기함!
        // 메시지 띄우기
        $(this)
          .siblings(".error")
          .text("아이디는 영문소문자 또는 숫자 4~16자로 입력해 주세요.")
          .removeClass("on"); //빨간글자

        // 불통과!
        pass = false;
      } ///////// if : 불통과시 //////////
      else {
        // 검사결과가 통과시 /////
        // 메시지 띄우기
        $(this)
          .siblings(".error")
          .text($("#mid").val() + "는 사용 가능한 아이디입니다.")
          .addClass("on"); //회색녹색
      } ////////// else : 통과시 ///////////
    } //////////// else if : 아이디검사 /////////////

    /****************************************************** 
            비밀번호일 경우 유효성 검사하기
            - 검사기준: 특수문자,문자,숫자포함 형태의 5~15자리
        ******************************************************/
    else if (cid === "mpw") {
      let pw = $("#mpw").val();
      let num = pw.search(/[0-9]/g);
      let eng = pw.search(/[a-z]/gi);
      let spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

      if (
        pw.length < 8 ||
        pw.length > 16 ||
        pw.search(/\s/) != -1 ||
        (num < 0 && eng < 0) ||
        (eng < 0 && spe < 0) ||
        (spe < 0 && num < 0)
      ) {
        $(this).siblings(".error").text("비밀번호 입력조건을 준수해주세요.");
        pass = false;
      } else {
        $(this).siblings(".error").empty();
      }
    } //////////// else if : 비밀번호검사 /////////////

    /****************************************************** 
            비밀번호확인일 경우 유효성 검사하기
            - 검사기준: 입력된 비밀번호와 일치여부
        ******************************************************/
    else if (cid === "mpw2") {
      if (cv !== $("#mpw").val()) {
        // 메시지 띄우기
        $(this).siblings(".error").text("비밀번호가 일치하지 않습니다.");

        // 불통과!
        pass = false;
      } ///////// if : 불통과시 //////////
      else {
        // 검사결과가 통과시 /////
        // 메시지 지우기
        $(this).siblings(".error").empty();
      } ////////// else : 통과시 ///////////
    } //////////// else if : 비밀번호확인검사 /////////////

    /****************************************************** 
            이름일 경우 유효성 검사하기
            - 검사기준: 입력된 이름값이 공백인지여부
        ******************************************************/
    else if (cid === "mnm") {
      if ($("#mnm").val() !== "") {
        $(this).siblings(".error").empty();
      }
    } //////////// else if : 비밀번호확인검사 /////////////

    /****************************************************** 
            전화번호일 경우 유효성 검사하기
            - 검사기준: 전화번호 기준에 맞는지 여부
        ******************************************************/
    else if (cid === "phone") {
      if (!vReg(cv, cid)) {
        // 메시지 띄우기
        $(this).siblings(".error").text("휴대폰번호가 올바르지 않습니다.");

        // 불통과!
        pass = false;
      } ///////// if : 불통과시 //////////
      else {
        // 검사결과가 통과시 /////
        // 메시지 지우기
        $(this).siblings(".error").empty();
      } ////////// else : 통과시 ///////////
    } //////////// else if : 전화번호검사 /////////////

    /******************************************************
            이메일일 경우 유효성 검사하기
            - 검사기준: 이메일 형식에 맞는지 여부
        ******************************************************/
    else if (cid === "email") {
      if (!vReg(cv, cid)) {
        // 메시지 띄우기
        $(this).siblings(".error").text("유효한 이메일을 입력해 주세요.")
        .removeClass("on"); //빨간글자
        
        // 불통과!
        pass = false;
      } ///////// if : 불통과시 //////////
      else {
        // 검사결과가 통과시 /////
        // 메시지 지우기
        $(this).siblings(".error").text("사용 가능한 이메일입니다.")
        .addClass("on"); //회색녹색
      } ////////// else : 통과시 ///////////
    } //////////// else if : 이메일검사 /////////////
  });

  $("#phone").on("keyup", function () {
    let intxt = $(this).val();
    let tcnt = intxt.length;
    // console.log("입력:",intxt,"/",tcnt);

    if (tcnt == 3 || tcnt == 8) $(this).val(intxt + "-");
  }); //////////// keyup //////////////////////

  /********************************************** 
        가입하기(submit) 버튼 클릭시 처리하기 
        __________________________________

        전체검사의 원리:
        전역변수 pass를 설정하여 true를 할당하고
        검사중간에 불통과 사유발생시 false로 변경!
        유효성 검사 통과여부를 판단한다!

        검사방법:
        기존 이벤트 blur 이벤트를 강제로 발생시킨다!
        이벤트 강제발생 메서드는? -> trigger(이벤트명)
    **********************************************/
  // 검사용 변수
  let pass;

  // 이벤트 대상: 서브밋 버튼 -> #btnj
  // 원래 서브밋 버튼은 클릭시 싸고 있는 form태그의
  // action속성에 지정되어 있는 페이지로 현재 페이지의
  // input요소들의 값을 가지고 이동하게 되어 있다!
  // 여기서는 버튼 클릭시 통과 여부 체크를 위해
  // 이것을 막는다!
  $("#join_btn").click((e) => {
    // 0. 호출확인!
    console.log("가입해!");

    // 1. 기본이동막기
    e.preventDefault();

    // 2. pass 통과여부 변수에 true를 할당!
    // 처음에 true로 시작하여 검사 중간에 한번이라도
    // false로 할당되면 결과는  false다!
    pass = true;

    // 3. 입력창 blur 이벤트 강제발생시키기!
    // 대상: 블러 이벤트를 발생했던 요소들!
    $(`input[type=text][id!=search],
        input[type=password]`).trigger("blur");

    // 최종통과 여부
    console.log("통과여부:", pass);

    // 4. 검사결과에 따라 메시지 보이기
    if (pass) {
      //// 통과시 //////

      /******************************************** 
                [ Ajax를 이용한 POST방식으로 DB에
                데이터 입력하기!!! ]
                ___________________________________
                AJAX = Asynchronous JavaScript and XML
                - 비동기통신이란? 쉽게 말해서 페이지가
                새로고쳐지지 않고 그대로 있으면서 일부만
                서버통신을 하는 것을 말한다!
                - 제이쿼리는 POST방식으로 ajax를 할 수 있다!
                [ POST 방식 Ajax 메서드 ]
                $.post(URL,data,callback)
                $.post(전송할페이지,전송할데이터,전송후실행함수)
                
            
            ********************************************/

      $.post(
        // 1.전송할페이지
        "../process/ins.jsp",
        // 2.전송할데이터 : 7개의 값을 전달함!
        {
          // 1.아이디
          mid: $("#mid").val(),
          // 2.비번
          mpw: $("#mpw").val(),
          // 3.이름
          mnm: $("#mnm").val(),
          // 4.전화번호
          phone: $("#phone").val(),
          // 5.이메일 주소
          email: $("#email").val(),
        },
        // 3.전송후실행함수
        function (res) {
          // res 처리페이지의 결과값
          res = res.trim(); //앞뒤공백제거!
          console.log("실행결과:", res);
          // 입력 성공시 //
          if (res === "ok") {
            // 1. 메시지 띄우기
            alert("회원가입을 축하드립니다.");
            // 2. 로그인 페이지로 이동하기
            location.replace("login.jsp");
            // location.replace(이동주소)
            // -> 이동후 전페이지 히스토리가 지워진다!
            // 따라서 이전 페이지 이동이 안된다! 굿~!

            // location.href = "login.jsp";
            // location.href = 주소
            // 이 방식으로 페이지 이동을 하면
            // 페이지 히스토리가 남게 된다
            // 이전 페이지로 이동이 가능하고
            // 회원가입 정보가 노출된다! 오! 노우!!!
          } ///// if ////
          // 실패시 /////
          else {
            // 메시지 띄우기
            alert("관리자에게 문의바랍니다!");
          } ///// else ///
        } ////// 콜백함수 //////
      ); ///////// post 메서드 ////////////////

      // 서브밋하기(폼요소의 action 값으로 페이지 이동)
      // $(".logF").submit();
      // 서브밋 메서드 : submit()
      // action값: ../process/ins.jsp

      // 메시지 띄우시
      // alert("회원가입을 축하드립니다! 짝짝짝!!!");
      // 원래는 post방식으로 DB에 회원정보를 입력후
      // DB에 입력완료시 위의 메시지를 띄워준다!
    } ///////// if ///////////
    else {
      //// 불통과시 //////

      alert("입력을 수정하세요.");
    } /////// else ///////////
  }); ///////////// click //////////////////
}); //////////////////// jQB ////////////////////

/*////////////////////////////////////////////////////////
    함수명: vReg (validation with Regular Expression)
    기능: 값에 맞는 형식을 검사하여 리턴함
    (주의: 정규식을 따옴표로 싸지말아라!-싸면문자가됨!)
*/ ////////////////////////////////////////////////////////
function vReg(val, cid) {
  // val - 검사할값, cid - 처리구분아이디
  // //console.log("검사:"+val+"/"+cid);

  // 정규식 변수
  let reg;
  let reg1;
  let reg2;
  let reg3;

  // 검사할 아이디에 따라 정규식을 변경함
  switch (cid) {
    case "mid": // 아이디
      reg = /^[a-z0-9]{4,16}$/;
      // 영문자로 시작하는 6~20글자 영문자/숫자
      // /^[a-z]{1} 첫글자는 영문자로 체크!
      // [a-z0-9]{5,19} 첫글자 다음 문자는 영문 또는 숫자로
      // 최소 5글자에서 최대 19글자를 유효범위로 체크!
      // 첫글자 한글자를 더하면 최소 6글자에서 최대 20글자체크!
      break;
    case "phone": // 전화번호
      reg =
        // /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3";
        /^\d{3}-\d{3,4}-\d{4}$/;
      // 전화번호 형식에 맞는지 검사하는 정규식
      break;
    case "email": // 이메일
      reg =
        /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
      // 이메일 형식에 맞는지 검사하는 정규식
      break;
  } //////////// switch case문 //////////////////

  // //console.log("정규식:"+reg);

  // 정규식 검사를 위한 JS메서드
  // -> 정규식.test(검사할값) : 결과 true/false
  return reg.test(val); //호출한 곳으로 검사결과리턴!
} //////////// vReg 함수 //////////////////////////////////
