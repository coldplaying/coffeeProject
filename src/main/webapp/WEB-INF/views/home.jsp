<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="includes/header.jsp" %>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    
</head>
		<header style="margin-top:73.5px;width:100%;margin:auto;">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/resources/assets/images/1.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/resources/assets/images/2.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/resources/assets/images/3.jpg" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </header>
        <!-- BEST ITEMS-->
        <section class="page-section bg-white">
            <div class="container px-4 px-lg-5" style="width:80%;">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col">
                        <h2 class="text-dark mt-0 text-center">BEST ITEMS</h2>
                        <hr class="divider divider-dark" />
                        <!-- 추천상품 4가지 정렬 -->
                        <div class="row" style="text-align:center;">
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
            			
            			sql = "select * from tbl_goods order by gdsName asc limit 4";
            			//out.print(sql);
            			pstmt = conn.prepareStatement(sql);
            			rs = pstmt.executeQuery();
            			String gdsNum = "";
            			String gdsName = "";
            			String gdsPrice = "";
            			while(rs.next()){
            				gdsNum = rs.getString("gdsNum");
            				gdsName = rs.getString("gdsName");
            				gdsPrice = rs.getString("gdsPrice");
            			%>
            			<div class="col-xl-3 col-md-6 col-sm-6 col-xs-6">
            				<a href="/store/store1?gdsNum=<%=gdsNum%>" style="text-decoration:none;color:black;">
	                        	<div><img src="/resources/images/<%=gdsName %>.jpg" width="100%"></div>
    	                    	<div class="py-2" style="font-size:1.2em;"><b><%=gdsName %></b></div>
        	                	<div><fmt:formatNumber value="<%=gdsPrice %>" pattern="#,###"/>원</div>
            				</a>
                        </div>
            			<%
            			
            			}
            			
                        %>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- BEST REVIEW -->
        <section class="page-section bg-light">
            <div class="container px-4 px-lg-5" style="width:80%;">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col">
                        <h2 class="text-dark mt-0 text-center">HOT ITEMS</h2>
                        <hr class="divider divider-dark" />
                        <!-- 추천상품 4가지 정렬 -->
                        <div class="row" style="text-align:center;">
                        <%
            			sql = "select * from tbl_goods order by gdsName desc limit 4";
            			//out.print(sql);
            			pstmt = conn.prepareStatement(sql);
            			rs = pstmt.executeQuery();
            			String gdsNum3 = "";
            			String gdsName3 = "";
            			String gdsPrice3 = "";
            			while(rs.next()){
            				gdsNum3 = rs.getString("gdsNum");
            				gdsName3 = rs.getString("gdsName");
            				gdsPrice3 = rs.getString("gdsPrice");
            			%>
            			<div class="col-xl-3 col-md-6 col-sm-6 col-xs-6">
            				<a href="/store/store1?gdsNum=<%=gdsNum3%>" style="text-decoration:none;color:black;">
	                        	<div><img src="/resources/images/<%=gdsName3 %>.jpg" width="100%"></div>
    	                    	<div class="py-2" style="font-size:1.2em;"><b><%=gdsName3 %></b></div>
        	                	<div><fmt:formatNumber value="<%=gdsPrice %>" pattern="#,###"/>원</div>
            				</a>
                        </div>
            			<%
            			
            			}
            			
                        %>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section bg-white">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">Today's Coffee</h2>
                <hr class="divider" />
                <div class="row mt-5">
                	<%
                	String sql2 = "";
                	sql2 = "select * from tbl_goods order by rand() limit 1";
        			//out.print(sql);
        			pstmt = conn.prepareStatement(sql2);
        			rs = pstmt.executeQuery(); //select문만 resultSet으로 처리할 수 있다
        			String gdsName2 = "";
        			String gdsPrice2 = "";
        			while(rs.next()){
        				gdsName2 = rs.getString("gdsName");
        				
                	%>
                    <div class="col text-center">
                       	<div><img src="/resources/images/<%=gdsName2 %>.jpg" width="100%"></div>
                       	<div class="py-3" style="font-size:1.5em;"><b><%=gdsName2 %></b></div>
                       	<a href="/cate/cate" class="btn btn-outline-primary py-2 my-3" style="text-decoration:none;"><b>추천메뉴 보러가기 →</b></a>
                    </div>
                    <%} %>
                    
                </div>
            </div>
        </section>
        <!-- Portfolio-->
        <!-- <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="/resources/assets/img/portfolio/fullsize/1.jpg" title="Project Name">
                            <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/1.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="/resources/assets/img/portfolio/fullsize/2.jpg" title="Project Name">
                            <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/2.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="/resources/assets/img/portfolio/fullsize/3.jpg" title="Project Name">
                            <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/3.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="/resources/assets/img/portfolio/fullsize/4.jpg" title="Project Name">
                            <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/4.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="/resources/assets/img/portfolio/fullsize/5.jpg" title="Project Name">
                            <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/5.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="/resources/assets/img/portfolio/fullsize/6.jpg" title="Project Name">
                            <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/6.jpg" alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div> -->
        
        
        <!-- 지도
        <section class="py-5 bg-dark" id="about">
        	<h2 class="text-white mt-0 text-center">오시는 길</h2>
            <hr class="divider divider-dark" />
            google지도
			<iframe class="mt-5" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.56319499316!2d127.02543101550178!3d37.49463293600002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15a8df30f01%3A0x44f6db1c2b6c3bf7!2z67mE7Yq46rWQ7Jyh7IS87YSw!5e0!3m2!1sko!2skr!4v1666176814184!5m2!1sko!2skr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			<div class="text-center text-white" style="margin-top:50px;">
				<a href="#" style="color:white; text-decoration:none;">이용안내</a> |
				<a href="#" style="color:white; text-decoration:none;">서비스 이용안내</a> |
				<a href="#" style="color:white; text-decoration:none;">개인정보 취급방침</a> |
				<a href="#" style="color:white; text-decoration:none;">이메일 무단수집거부</a> |
				<a href="#" style="color:white; text-decoration:none;">공지사항</a>
			</div>                 
        </section> -->
        

<%@ include file="includes/footer.jsp" %>