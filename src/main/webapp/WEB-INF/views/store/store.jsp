<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
      
        <!-- Header-->
        <%@include file="../includes/header.jsp" %>
        <%@ include file="../back.jsp" %>
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                	
                	<%
                	request.setCharacterEncoding("utf-8");
        			
        			String url = "jdbc:mysql://192.168.0.40/projectdb?useSSL=false";
        			String dbId = "scott", dbPwd = "tiger";
        			Connection conn = null;
        			String sql = null;
        			PreparedStatement pstmt = null;
        			ResultSet rs = null;
        			Class.forName("com.mysql.cj.jdbc.Driver");
        			conn = DriverManager.getConnection(url, dbId, dbPwd);
        			
        			sql = "select * from tbl_goods order by gdsNum";
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
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <a href = "/store/store1?gdsNum=<%=gdsNum%>"> 
                            <img class="card-img-top" src="/resources/images/<%=gdsName %>.jpg" alt="..." />
                            </a>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=gdsName %></h5>
                                    <!-- Product price-->
                                    <fmt:formatNumber value="<%=gdsPrice %>" pattern="#,###"/>원<br><br>
                                    <%=gdsContent %>
                                </div>
                            </div>
                            <hr>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/store/store1?gdsNum=<%=gdsNum%>">상세페이지</a></div>
                            </div>
                        </div>
                    </div>
                    <%} %>
                </div>
            </div>
        </section>
        <%@include file="../includes/footer.jsp" %>
    </body>
</html>
