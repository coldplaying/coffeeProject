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
 * Servlet implementation class Join
 */
//@WebServlet("/member/joinAction")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
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
			String userName = request.getParameter("userName");	
			String email = request.getParameter("email");	
			String address1 = request.getParameter("address1");	
			String address2 = request.getParameter("address2");	
			
			String url = "jdbc:mysql://localhost:3306/projectdb?useSSL=false";
			String dbId = "root", dbPwd = "1234";
			Connection conn = null;
			String sql = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbId, dbPwd);
			
			sql = "insert into tbl_member (userId, userPwd, userName, email, address1, address2, regDate) values (?,?,?,?,?,?,now())";
			//out.print(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			pstmt.setString(3, userName);
			pstmt.setString(4, email);
			pstmt.setString(5, address1);
			pstmt.setString(6, address2);
			pstmt.execute(); //select문만 resultSet으로 처리할 수 있다
			
			response.sendRedirect("/");
			
			
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			//conn.close();
		}
		
	
	}

}
