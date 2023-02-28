<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../back.jsp" %>
<div class="container mt-3" style="width:70%;">
	<h3>내정보수정</h3>
	<hr>
	<%
	request.setCharacterEncoding("utf-8");
	String getId = request.getParameter("userId");
	
	String url = "jdbc:mysql://192.168.0.40/projectdb?useSSL=false";
	String dbId = "scott", dbPwd = "tiger";
	Connection conn = null;
	String sql = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, dbId, dbPwd);
	
	sql = "select * from tbl_member where userId='"+getId+"'";
	//out.print(sql);
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery(); //select문만 resultSet으로 처리할 수 있다
	String userNo = "";
	String userId = "";
/* 	String userPwd = ""; */
	String userName = "";
	String phoneNo = "";
	String email = "";
	String address1 = "";
	String address2 = "";
	String regDate = "";
	
	while(rs.next()){
		userNo = rs.getString("userNo");
		userId = rs.getString("userId");
		/* userPwd = rs.getString("userPwd"); */
		userName = rs.getString("userName");
		phoneNo = rs.getString("phoneNo");
		email = rs.getString("email");
		address1 = rs.getString("address1");
		address2 = rs.getString("address2");
		regDate = rs.getString("regDate");
		
	%>
<form id="joinform" action="/member/modify" method="post">
    <small class="text-danger">* : 필수 입력 사항</small>
    <input type="hidden" name="userNo" value="<%=userNo %>" />
    <div class="form-group mt-3 mb-2">
        <label for="name">성명<span class="text-danger">*</span></label>
        <input name="userName" id="name" type="text" class="form-control" value="<%=userName%>" readonly/>
    </div>
    <div class="form-group mb-2">
        <label for="id">아이디<span class="text-danger">*</span></label> &nbsp;&nbsp;
        <span class="id_comment1" style="color:blue;display:none;font-size:0.8em;">사용가능한 아이디 입니다.</span>
        <span class="id_comment2" style="color:red;display:none;font-size:0.8em;">사용중인 아이디 입니다.</span>
        <input name="userId" id="id" type="text" class="form-control" value="<%=userId%>" readonly/>
    </div>
    <div class="form-group mb-2">

        <label for="pw">비밀번호<span class="text-danger">*</span></label> <small id="pwchk"></small>
        <input name="userPwd" id="pw" type="password" class="form-control" />
    </div>
    <div class="form-group mb-2">
        <label for="mail">이메일</label>
        <input name="email" id="mail" type="text" class="form-control" value="<%=email%>"/>
    </div>
    <div class="form-group mb-2">
        <label for="phone">휴대폰번호</label>
        <div class="input-group">
            <input name="phoneNo" id="phone" type="text" class="form-control" maxlength="13" value="<%=phoneNo%>"/>
        </div>
    </div>
    <div class="form-group">
        <label for="">주소</label>
        <input type="text" id="sample4_postcode" placeholder="우편번호" name="post" class="form-control mb-2" style="width:120px" disabled>
        <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn btn-primary mb-2"><br>
        
        <div class="row">
            <div class="col-sm-6">
                <input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="address1" class="form-control mb-2 col" value="<%=address1%>" readonly>
                <input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="addr2" class="form-control mb-2 col" readonly>
            </div>
            <div class="col-sm-6">
                <input type="text" id="sample4_detailAddress" placeholder="상세주소" name="address2" class="form-control mb-2 col" value="<%=address2%>">
                <input type="text" id="sample4_extraAddress" placeholder="참고항목" name="addr4" class="form-control mb-2 col" readonly>
            </div>
        </div>
        <span id="guide" style="color:#999;display:none"></span>
        
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
            //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
            function sample4_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                        
                        // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                        var extraRoadAddr = ''; // 참고 항목 변수
                        
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraRoadAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraRoadAddr !== ''){
                            extraRoadAddr = ' (' + extraRoadAddr + ')';
                        }
                        
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('sample4_postcode').value = data.zonecode;
                        document.getElementById("sample4_roadAddress").value = roadAddr;
                        document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                        
                        // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                        if(roadAddr !== ''){
                            document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                        } else {
                            document.getElementById("sample4_extraAddress").value = '';
                        }
                        
                        var guideTextBox = document.getElementById("guide");
                        // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                        if(data.autoRoadAddress) {
                            var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                            guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                            guideTextBox.style.display = 'block';
                            
                        } else if(data.autoJibunAddress) {
                            var expJibunAddr = data.autoJibunAddress;
                            guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                            guideTextBox.style.display = 'block';
                        } else {
                            guideTextBox.innerHTML = '';
                            guideTextBox.style.display = 'none';
                        }
                    }
                }).open();
            }
        </script>
    </div>
    <div class="form-group text-center py-5">
        <button type="submit" class="btn btn-primary">수정하기</button>
        <button class="btn btn-secondary" onclick="javascript:location.href='/'">홈으로</button>
    </div>
    <%} %>
</form>
<!-- <div class="text-center mb-5">
	<button class="btn btn-danger" onclick="javascript:location.href='/member/delete'">회원탈퇴</button>
</div> -->
</div>
</body>
<%@ include file="../includes/footer.jsp" %>
</html>