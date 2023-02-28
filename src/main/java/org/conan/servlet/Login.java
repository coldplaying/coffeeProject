package org.conan.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
//@WebServlet("/member/loginAction")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("utf-8");
			String userId = request.getParameter("userId");
			String userPwd = request.getParameter("userPwd");			
			
			String url = "jdbc:mysql://localhost:3306/projectdb?useSSL=false";
			String dbId = "root", dbPwd = "1234";
			Connection conn = null;
			String sql = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbId, dbPwd);
			
			sql = "select * from tbl_member where userId=? and userPwd=?";
			//out.print(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rs = pstmt.executeQuery(); //select문만 resultSet으로 처리할 수 있다
			String sqlId = "";
			String sqlPwd = "";
			String sqlName = "";
			while(rs.next()){
				sqlId = rs.getString("userId");
				sqlPwd = rs.getString("userPwd");
				sqlName = rs.getString("userName");
			}
			
			
			if(userId.equals(sqlId) && userPwd.equals(sqlPwd)){
				HttpSession httpSession = request.getSession();				
				httpSession.setAttribute("userId", sqlId);
				//httpSession.setAttribute("userPwd", sqlPwd);
				httpSession.setAttribute("userName", sqlName);
				response.sendRedirect("/");
			}else{
				response.sendRedirect("/member/login?login=false");
			}
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			//conn.close();
		}
	}

}
