<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../back.jsp" %>
   
   <div class="container mt-3" style="width:70%;">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">게시글조회</h3>
                </div>
                <hr>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"></div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           	
                           	
                           	<div class="form-group py-2">
                           		<label>제목</label>
                           		<input class="form-control" name="title" value="<c:out value='${board.title }'/>" readonly />
                           	</div>
                           	<div class="form-group py-2">
                           		<label>내용</label>
                           		<textarea class="form-control" row="10" name="content" readonly><c:out value='${board.content }'/></textarea>
                          	</div>
                           	<div class="form-group py-2">
                           		<label>작성자</label>
                           		<input class="form-control" name="userName" value="<c:out value='${board.userName }'/>" readonly />
                           	</div>
                           	<div class="py-2 text-end">
                           		<c:if test="${member.userName == board.userName }">
                           		<button id="modifyBtn" data-oper="modify" class="btn btn-success">수정</button>
                           		</c:if>
                           		<button id="listBtn" onclick="javascript:history.back()" class="btn btn-warning">목록</button>
                           	</div>
                           	<form id="operForm" action="/board/modify" method="get">
                           		<input type="hidden" id="bno" name="bno" value="<c:out value='${board.bno }'/>" >
                           	</form>    
                            
                        </div>
                        <!-- /.panel-body -->
                        <!-- <hr> -->
                        
                    </div>
                    <!-- /.panel -->
		
		            		            
		            <!-- 댓글 반복 -->
		            <!-- <div class="panel panel-default">
		            	<div class="panel-heading">
		            		<span class="btn btn-pill">댓글</span>
		            		<button id="addReplyBtn" class="btn btn-primary btn-sm float-end">댓글작성</button>
		            	</div>
		            	<div class="panel-body">
		            		<ul class="chat">
		            			data-rno =>댓글번호
		            			<li class="left clearfix" data-rno="12">
		            				<div>
		            					<div class="header">
		            						<strong class="primary-font">user00</strong>
		            						<small class="pull-right text-musted">2018-01-01 13:13</small>
		            					</div>
		            					<p>Good job!</p>
		            				</div>
		            			</li>
		            			
		            		</ul>
		            	</div>
		            </div>
		            댓글반복 끝
		            /.modal fade    
		            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModallabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Reply</label>
										<input class="form-control" name="reply" value="New Reply!!!">
									</div>
									<div class="form-group">
										<label>Replyer</label>
										<input class="form-control" name="replyer" value="replyer">
									</div>
									<div class="form-group">
										<label>Reply Date</label>
										<input class="form-control" name="replyDate" value="">
									</div>
								</div>
								<div class="modal-footer">
									<button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>
									<button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
									<button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
									<button id="modalCloseBtn" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									<button id="modalClassBtn" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div> .modal-content
						</div>  .modal-dialog
					</div> -->  <!-- .modal -->
		            

					<!-- reply.js추가 -->
                    <script src="/resources/js/reply.js"></script>
                        
                    <script>
                     	$(document).ready(function(){
                       		var operForm = $("#operForm");
                       		$("#modifyBtn").click(function(){
                       			operForm.submit();
                       		});
                       		$("#listBtn").click(function(){
                       			/* operForm.find("#bno").remove();
                       			operForm.attr("action", "/board/list");
                       			operForm.submit(); */
                       		});
                        		
                           		
                       		//json 테스트
                       		console.log(replyService);
                       		
                       		var bnoValue='<c:out value="${board.bno}"/>';
                       		
                       		//add
                       		/* replyService.add(
                       			{reply: "JS TEST", replyer: "js tester", bno: bnoValue},
                       			function(result){
                       				alert("RESULT : " + result);
                       			}
                       		);
                       		
                       		//getList
                       		replyService.getList(
                       			{bno: bnoValue, page: 1},
                       			function(list){
                       				for(var i=0, len=list.length||0; i<len; i++){
                       					console.log(list[i]);
                       				}
                       			}
                       		); */
                       		
                        		
                       		//remove
                       		/* replyService.remove(
                       			3,
                       			function(count){
                       				console.log(count);
                       				if(count === "success"){
                       					alert("REMOVED");
                       				}
                       			},
                       			function(err){
                       				alert("error occurred...");
                       			}
                       		); */
                        		
                       		//update
                       		/* replyService.update(
                       			{
                       				rno: 4,
                       				bno: bnoValue,
                       				reply: "modify reply..."
                       			},
                       			function(result){
                       				alert("수정완료");
                       			}
                       		); */
                       		
                       		//get
                       		/* replyService.get(
                       			4,
                       			function(data){
                       				console.log(data);
                       			}
                       		); */
                       		
                       		
                       		//모달창 스크립트
                       		var replyUL = $(".chat");
                       	   	showList(1);
                       	   
                       	   	function showList(page){
                       	    	replyService.getList({bno:bnoValue, page: page||1}, function(list){
                       	        var str="";
                       	        if(list == null || list.length ==0){
                       	        	replyUL.html("");
                       	            return;
                       	        }
                       	        for (var i = 0, len = list.length || 0; i<len; i++) {
                       	        	str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
                       	            str +="<div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>";
                       	            str +="<small class='pull-right text-muted'>"+list[i].replyDate+"</small></div>";
                       	            str+="<p>"+list[i].reply+"</p></div></li>";
                       	        }
                       	        replyUL.html(str);
                       	      	}); //end function
                       	   	} // end showlist
                       	   	
                       	   	
                       	//댓글 처음입력할때(new reply) 모달창 작동
                       	   	var modal = $(".modal");
                       	   	var modalInputReply = modal.find("input[name='reply']");
                       	 	var modalInputReplyer = modal.find("input[name='replyer']");
                       		var modalInputReplyDate = modal.find("input[name='replyDate']");
                       		
                       		var modalModBtn = $("#modalModBtn");
                       		var modalRemoveBtn = $("#modalRemoveBtn");
                       		var modalRegisterBtn = $("#modalRegisterBtn");
                       		
                       		$("#addReplyBtn").click(function(){
                       			modal.find("input").val("");
                       			modalInputReplyDate.closest("div").hide();
                       			modal.find("button[id != 'modalCloseBtn']").hide();
                       			
                       			modalRegisterBtn.show();
                       			
                       			$(".modal").show();
                       		});
                       	   	
                       		//모달 Register클릭시
                       		modalRegisterBtn.on("click", function(e){
                       			var reply = {
                       				reply: modalInputReply.val(),
                       				replyer: modalInputReplyer.val(),
                       				bno: bnoValue
                       			};
                       			replyService.add(reply, function(result){
                       				alert(result);
                       				
                       				modal.find("input").val("");
                       				modal.modal("hide");
                       				
                       				showList(1);
                       			});
                       		});
                       		
                       		//댓글클릭이벤트처리
                       		$(".chat").on("click", "li", function(e){
                       			var rno = $(this).data("rno");
                       			console.log(rno);
                       			
                       			//댓글이벤트처리
                       			replyService.get(rno, function(reply){
                       				modalInputReply.val(reply.reply);
                       				modalInputReplyer.val(reply.replyer);
                       				modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
                       				modal.data("rno", reply.rno);
                       				
                       				modal.find("button[id != 'modalCloseBtn']").hide();
                       				modalModBtn.show();
                       				modalRemoveBtn.show();
                       				
                       				$(".modal").modal("show");
                       			});
                       		});
                       		
                       		//modalModBtn클릭시
                       		modalModBtn.on("click", function(e){
                       			var reply = {
                       				rno: modal.data("rno"),
                       				reply: modalInputReply.val()
                       			};
                       			
                       			replyService.update(reply, function(result){
                       				//alert(result);
                       				alert("댓글이 수정되었습니다");
                       				modal.modal("hide");
                       				showList(1);
                       			});
                       		});
                       		
                       		//modalRemove클릭시
                       		modalRemoveBtn.on("click", function(e){
                       			var rno = modal.data("rno");
                       			
                       			replyService.remove(rno, function(result){
                       				//alert(result);
                       				alert("댓글이 삭제되었습니다");
                       				modal.modal("hide");
                       				showList(1);
                       			});
                       		});
                       		
                       	});//ready end
                        </script>
		           
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
   </div>
            
            
       
<%-- <%@ include file="../includes/footer.jsp" %> --%>