<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../back.jsp" %>
   
   <div class="container mt-3" style="width:70%;">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">글수정</h3>
                </div>
                <hr>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form role="form" action="/board/modify" method="post">
	                           	<input type="hidden" class="form-control" name="bno" value="<c:out value='${board.bno }'/>" readonly />
	                           	<div class="form-group py-2">
	                           		<label>제목</label>
	                           		<input class="form-control" name="title" value="<c:out value='${board.title }'/>" />
	                           	</div>
	                           	<div class="form-group py-2">
                           		<label>내용</label>
                           		<textarea class="form-control" row="3" name="content"><c:out value='${board.content }'/></textarea>
                          	</div>
	                           	<div class="form-group py-2">
	                           		<label>작성자</label>
	                           		<input class="form-control" name="userName" value="<c:out value='${board.userName }'/>" readonly/>
	                           	</div>
	                           	<div class="form-group py-2">
	                           		<label>작성일</label>
	                           		<input class="form-control" name="regDate" value="<fmt:formatDate pattern="yyyy-MM-dd" value='${board.updateDate }' />" readonly />
	                           	</div>
	                           	<div class="form-group py-2">
	                           		<label>수정일</label>
	                           		<input class="form-control" name="updateDate" value="<fmt:formatDate pattern="yyyy-MM-dd" value='${board.updateDate }' />" readonly />
	                           	</div>
	                           	
	                           	<div class="py-3 text-end">
	                           		<button id="modifyBtn" type="submit" data-oper="modify" class="btn btn-success">수정</button>
	                           		<button id="removeBtn" type="submit" data-oper="remove" class="btn btn-danger">삭제</button>
	                           		<button id="listBtn" type="submit" data-oper="list" class="btn btn-warning">목록</button>    
	                           	</div>
                            
                        	</form>
                        </div>
                        <!-- /.panel-body -->
                        <script>
                        	$(document).ready(function(){
                        		var formObj = $("form");
                        		$("button").on("click", function(e){
                        			e.preventDefault();
                        			var operation = $(this).data("oper");
                        			console.log(operation);
                        			if(operation === 'remove'){
                        				var conf = confirm("삭제하시겠습니까?");
                        				if(conf){
	                        				formObj.attr("action", "/board/remove");                    					
                        				}else{
                        					return false;
                        				}
                        			}else if(operation === 'list'){
                        				formObj.attr("action", "/board/list").attr("method", "get");
                        				formObj.empty();
                        			}
                        			formObj.submit();
                        		});
                        	});
                        </script>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
   </div>
       
<%-- <%@ include file="../includes/footer.jsp" %> --%>