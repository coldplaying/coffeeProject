<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<style>
.box {overflow:auto; margin-top:20px;}
.f { float:left; margin-right:25px;margin-left:25px; width:calc((100% - 250px) / 5);}
.f:hover{ cursor: pointer;}
</style>
</head>
<body>
<%@ include file="../back.jsp" %>
<div class="container mt-3">
	<h3>맛을 선택해 주세요</h3>
	<hr>
	
	<%
	String chk = request.getParameter("chk");
	String flavor = request.getParameter("flavor");
	%>
	
	<div class="bigbox mt-4">
	<form id="cateForm" action="/cate/cate" method="get">
		<div class="box">
			<!-- <h5 class="my-3">맛을 선택해 주세요</h5> -->
			<input type="hidden" name="chk" value="y" />
			<div class="f text-center"><input id="1" style="width:30px;height:30px;border:1px;" type="radio" name="flavor" value="100" /><br><label for="1">향</label></div>
			<div class="f text-center"><input id="2" style="width:30px;height:30px;border:1px;" type="radio" name="flavor" value="200" /><br><label for="2">산도</label></div>
			<div class="f text-center"><input id="3" style="width:30px;height:30px;border:1px;" type="radio" name="flavor" value="300" /><br><label for="3">단맛</label></div>
			<div class="f text-center"><input id="4" style="width:30px;height:30px;border:1px;" type="radio" name="flavor" value="400" /><br><label for="4">쓴맛</label></div>
			<div class="f text-center"><input id="5" style="width:30px;height:30px;border:1px;" type="radio" name="flavor" value="500" /><br><label for="5">바디</label></div>
		</div>
		<section class="page-section bg-white">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col">
                        <!-- 추천상품 4가지 정렬 -->
                        <div class="row" style="text-align:center;">
						<%		
						if(chk != ""){
							String url = "jdbc:mysql://192.168.0.40/projectdb?useSSL=false";
							String dbId = "scott", dbPwd = "tiger";
							Connection conn = null;
							String sql = null;
							PreparedStatement pstmt = null;
							ResultSet rs = null;
							Class.forName("com.mysql.cj.jdbc.Driver");
							conn = DriverManager.getConnection(url, dbId, dbPwd);
							
							sql = "select * from tbl_goods where cateCode='"+flavor+"'";
							//out.print(sql);
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery(); //select문만 resultSet으로 처리할 수 있다
							String gdsNum = "";
							String gdsName = "";
							String gdsPrice = "";
							String gdsContent = "";
							while(rs.next()){
								gdsNum = rs.getString("gdsNum");
								gdsName = rs.getString("gdsName");
								gdsPrice = rs.getString("gdsPrice");
								gdsContent = rs.getString("gdsContent");
						%>
						<div class="col-lg-3 col-md-6 mb-5">
	                        <div class="card h-100">
	                            <!-- Product image-->
	                            <img class="card-img-top" src="/resources/images/<%=gdsName %>.jpg" alt="..." />
	                            <!-- Product details-->
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <!-- Product name-->
	                                    <h5 class="fw-bolder"><%=gdsName %></h5>
	                                    <!-- Product price-->
	                                    <fmt:formatNumber value="<%=gdsPrice %>" pattern="#,###"/>원
	                                </div>
	                            </div>
	                            <!-- Product actions-->
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/store/store1?gdsNum=<%=gdsNum%>">상세페이지</a></div>
	                            </div>
	                        </div>
                    	</div>
						<%}}%>
						</div>
                    </div>
                </div>
            </div>
        </section>
		
		<!-- <div class="box">
			<div class="f">산도</div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sando" value="1" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sando" value="2" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sando" value="3" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sando" value="4" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sando" value="5" /></div>
		</div>
		<div class="box">
			<div class="f">단맛</div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sweet" value="1" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sweet" value="2" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sweet" value="3" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sweet" value="4" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="sweet" value="5" /></div>
		</div>
		<div class="box">
			<div class="f">쓴맛</div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="nosweet" value="1" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="nosweet" value="2" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="nosweet" value="3" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="nosweet" value="4" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="nosweet" value="5" /></div>
		</div>
		<div class="box">
			<div class="f">바디</div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="body" value="1" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="body" value="2" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="body" value="3" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="body" value="4" /></div>
			<div class="f"><input style="width:30px;height:30px;border:1px;" type="radio" name="body" value="5" /></div>
		</div> -->
	<!-- <div>
		<button id="searchBtn" type="button" class="btn btn-primary">조회하기</button>
	</div> -->
	</form>
	</div>
	
	
	<script>
	$("input[name='flavor']").change(function(){
		var test = $("input[name='flavor']:checked").val();
		/* $(this).attr("checked", "checked"); */
		$("#cateForm").submit();
	});
	
	

	</script>
	
	<c:if test="${coffee }">
	
	</c:if>
	
</div>
</body>
</html>