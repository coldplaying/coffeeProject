<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

</head>
<body>
<div class="bg-white p-5">
    <div id="loginform" class="rounded shadow mx-auto my-5 px-3 py-4" style="width:400px;">
        <form id="loginform" action="/member/login" method="post">
            <input class="form-control mb-3" type="text" id="id" name="userId" placeholder="아이디" />
            <input class="form-control mb-3" type="password" id="pw" name="userPwd" placeholder="비밀번호" />
            <div class="text-center mt-4">
                <button id="loginBtn" type="submit" class="btn btn-primary">로그인</button>
                <a class="btn btn-secondary" href="/">돌아가기</a>
            </div>
        </form>
    </div>
</div>
<c:if test="${result == 0 }">
	<script>alert("아이디 또는 비밀번호가 다릅니다.");</script>
</c:if>
<script>
$(document).ready(function(){
	$("#loginBtn").click(function(){
		var id = $("#id").val();
		var pw = $("#pw").val();
		if(id == ""){
			alert("아이디를 입력해 주세요");
			$("#id").focus();
			return false;
		}
		if(pw == ""){
			alert("비밀번호를 입력해 주세요");
			$("#pw").focus();
			return false;
		}
		$("#loginform").submit();
	});
});
</script>
</body>
</html>
<%-- <%@ include file="../includes/footer.jsp" %> --%>