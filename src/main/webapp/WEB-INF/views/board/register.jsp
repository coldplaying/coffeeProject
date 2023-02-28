<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../back.jsp" %>
   <script>
   	var userId = "<c:out value='${member.userId}'/>";
   	console.log(userId);
   	if(userId == ""){
   		alert("로그인 후 작성이 가능합니다.");
   		location.href="/member/login";
   	}
   </script>
   <div class="container mt-3" style="width:70%;">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">글쓰기</h3>
                </div>
                <hr>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <!-- <div class="panel-heading">Board Register</div> -->
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form role="form" action="/board/register" method="post">
                            	<div class="form-group mb-2">
                            		<label>제목</label>
                            		<input class="form-control" name="title" />
                            	</div>
                            	<div class="form-group mb-2">
                            		<label>내용</label>
                            		<textarea class="form-control" row="10" name="content"></textarea>
                            	</div>
                            	<div class="form-group">
                            		<label>작성자</label>
                            		<input class="form-control" name="userName" value="${member.userName }" readonly/>
                            		<input type="hidden" name="userId" value="${member.userId }"/>
                            	</div>
                            	<div class="py-3 text-center">
    	                        	<button type="submit" class="btn btn-primary">글쓰기</button>
	                            	<button type="button" onclick="javascript:history.back();" class="btn btn-secondary">이전</button>
                            	</div>
                            </form>
                            
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
   </div>
       
<%-- <%@ include file="../includes/footer.jsp" %> --%>