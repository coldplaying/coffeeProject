<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../back.jsp" %>
   
   <div class="container mt-3" style="margin-bottom:200px;width:85%;">
   			<div class="row">
   				<div class="col-6 d-grid">
   					<a href="/board/list" class="btn btn-outline-primary active">게시판</a>
   				</div>
   				<div class="col-6 d-grid">
   					<a href="/qna/qna" class="btn btn-outline-primary">FAQ</a>
   				</div>
   			</div>
            <div class="s-title-ty1 mt-5">
				<h4 class="s-title">게시판</h4>				
			</div>	
			<hr>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading mb-2">
							
							<div class="text-end">
								<a href="/board/register" id="regBtn" class="btn btn-sm pull-right btn-primary">글쓰기</a>
							</div>
						</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <tr>
                                	<th width="10%" class="text-center">번호</th>
                                	<th width="50%" class="text-center">제목</th>
                                	<th width="20%" class="text-center">작성자</th>
                                	<th width="20%" class="text-center">작성일</th>
                                	<!-- <th width="20%" class="text-center">수정일</th> -->
                                </tr>
                                
                                <c:forEach items="${list }" var="board" varStatus="status">
                                <c:set var="i" value="${i+1 }"/>
                                <tr>
                                	<td class="text-center">${i }</td>
                                	<td><a style="text-decoration:none;" href="get?bno=<c:out value='${board.bno }'/>"><c:out value="${board.title }" /></a></td>
                                	<td class="text-center"><c:out value="${board.userName }" /></td>
                                	<td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate }" /></td>
                                	<%-- <td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></td> --%>
                                </tr>
                                </c:forEach>
                            </table>
                            
                            <!-- /.modal fade-->    
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModallabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">Modal title</h4>
										</div>
										<div class="modal-body">처리가 완료되었습니다.</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">SaveChanges</button>
										</div>
									</div> <!-- .modal-content -->
								</div>  <!-- .modal-dialog -->
							</div>  <!-- .modal -->
							
                            
                            <script>
                            	$(document).ready(function(){
                            		var result = '<c:out value="${result}"/>';
                            		
                            		checkModal(result);
                            		
                            		function checkModal(result){
                            			if(result === ''){
                            				return;
                            			}
                            			
                            			if(parseInt(result) > 0){
                            				$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
                            			}
                            			$("#myModal").modal("show");
                            		}
                            		
                            		
                            	});
                            </script>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
   </div>
       
<%@ include file="../includes/footer.jsp" %>