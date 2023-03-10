<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"  %>
<%@ page import="common.JDBConnector" %>
<%@ page import="common.SHA256" %>
<%
	// ### 회원가입 입력처리 페이지 ###
	
	//POST 방식의 한글처리 : 이것 안쓰면 한글깨짐!!!
	request.setCharacterEncoding("UTF-8");
	
	// DB연결 객체 생성
	JDBConnector jdbc = new JDBConnector();
	// 암호화 객체 생성
	SHA256 sha = new SHA256();
	
	try{
		
		// 파라미터 정보 가져오기
		// 1.아이디
		String mid = request.getParameter("mid");
		// 2.비번
		String mpw = request.getParameter("mpw");
		
		// 비밀번호 암호화!
		String shampw = sha.encSha256(mpw);
		
		// 3.이름
		String mnm = request.getParameter("mnm");
		// 4.전화번호
		String phone = request.getParameter("phone");
		// 5-1.이메일주소
		String email = request.getParameter("email");
		
		// 넘어온값 찍기!
// 		out.println(
// 			"<h1>" +
// 			"♣ mid : " + mid + "<br>" +
// 			"♣ mpw : " + mpw + "<br>" +
// 			"♣ sha256 : " + shampw + "<br>" +
// 			"♣ mnm : " + mnm + "<br>" +
// 			"♣ phone : " + phone + "<br>" +
// 			"♣ email : " + email + "</h1>"
// 		);

     	
     	// 7. 쿼리문작성 할당
     	String query = "INSERT INTO `join` "+
     			"(`mid`, `mpw`, `name`, `phone`, `email`) "+
     			"VALUES (?,?,?,?,?)";
     	// 쿼리문작성시 삽입될 데이터 부분을 물음표(?)로 처리하면
     	// PreparedStatement 객체에서 이부분을 입력하도록 해준다!
     	
     
     	// 11. 쿼리문 연결 사용준비하기
     	// conn연결된 DB객체
     	jdbc.pstmt = jdbc.conn.prepareStatement(query);
     	// prepareStatement(쿼리문변수)
     	// - 쿼리문을 DB에 보낼 상태완료!
     	// - 중간에 쿼리문에 넣을 값을 추가할 수 있음!
     	
     	// 12. 준비된 쿼리에 물음표부분을 처리하는 순서!
     	jdbc.pstmt.setString(1, mid);
     	jdbc.pstmt.setString(2, shampw);
     	jdbc.pstmt.setString(3, mnm);
     	jdbc.pstmt.setString(4, phone);
     	jdbc.pstmt.setString(5, email);
     	// 물음표 순서대로 값을 셋팅해 준다!
     	
     	// 13. 쿼리를 DB에 전송하여 실행한다.
     	jdbc.pstmt.executeUpdate();
  
     	// 14. 연결해제하기
     	jdbc.close();
     	
     	// 15. 입력성공시 리턴할 메시지찍기
     	out.println("ok");
     	
	} ////////// try //////////
	catch(Exception e){
 		// 실패 메시지 출력(전달값)
 		out.println("no");
	} ///////// catch //////////


%>