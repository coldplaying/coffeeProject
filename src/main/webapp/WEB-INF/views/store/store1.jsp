<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
    	<%@ include file="../includes/header.jsp" %>
    	<%@ include file="../back.jsp" %>
        <%
        request.setCharacterEncoding("utf-8");
		
        String getGdsNum = request.getParameter("gdsNum");
        
		String url = "jdbc:mysql://192.168.0.40/projectdb?useSSL=false";
		String dbId = "scott", dbPwd = "tiger";
		Connection conn = null;
		String sql = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbId, dbPwd);
		
		sql = "select gdsName, gdsPrice, gdsContent from tbl_goods where gdsNum='"+getGdsNum+"'";
		//out.print(sql);
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery(); //select문만 resultSet으로 처리할 수 있다
		
		String gdsName = "";
		String gdsPrice = "";
		String gdsContent = "";
		while(rs.next()){
			
			gdsName = rs.getString("gdsName");
			gdsPrice = rs.getString("gdsPrice");
			gdsContent = rs.getString("gdsContent");
        %>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="/resources/images/<%=gdsName %>.jpg" alt="<%=gdsName %> 상세이미지" /></div>
                    <div class="col-md-6">
                        <!-- <div class="small mb-1">SKU: BST-498</div> -->
                        <h1 class="display-5 fw-bolder pb-2"><%=gdsName %></h1>
                        <div class="fs-5 mb-5">
                            <!-- <span class="text-decoration-line-through">$45.00</span> -->
                            <div style="font-size:0.8em;">판매가</div>
                            <span><fmt:formatNumber value="<%=gdsPrice %>" pattern="#,###"/>원</span>
                        </div>
                        <p class="lead"><%=gdsContent %></p>
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <img src="/resources/images/<%=gdsName %>_detail.jpg" width="100%" />
            </div>
        </section>
        <%} %>
        
        
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">추천상품</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                	<%
                	String sql2 = "";
                	sql2 = "select gdsNum, gdsName, gdsPrice from tbl_goods order by rand() limit 4";
        			//out.print(sql);
        			pstmt = conn.prepareStatement(sql2);
        			rs = pstmt.executeQuery(); //select문만 resultSet으로 처리할 수 있다
        			String gdsNum2 = "";
        			String gdsName2 = "";
        			String gdsPrice2 = "";
        			while(rs.next()){
        				gdsNum2 = rs.getString("gdsNum");
        				gdsName2 = rs.getString("gdsName");
        				gdsPrice2 = rs.getString("gdsPrice");
        				
                	%>
                    <div class="col-lg-3 col-md-6 mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="/resources/images/<%=gdsName2 %>.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=gdsName2 %></h5>
                                    <!-- Product price-->
                                    <fmt:formatNumber value="<%=gdsPrice2 %>" pattern="#,###"/>원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/store/store1?gdsNum=<%=gdsNum2%>">상세페이지</a></div>
                            </div>
                        </div>
                    </div>
                    <%} %>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; BIT COFFEE 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
