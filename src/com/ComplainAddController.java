package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class ComplainAddController
 */
@WebServlet("/ComplainAddController")
public class ComplainAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException, ParseException {
		
		System.out.println("1111");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String description = request.getParameter("description");
		System.out.println("1111");
		Connection connection = DbConnection.getConnection();
		String sql = "INSERT INTO clean_complaintype_mst(ComplainType_Name,ComplainType_Description,Complain_Email) VALUES (?,?,?)";
		PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
		   preparedStatement.setString(1, name);
		   preparedStatement.setString(2, description);
		   preparedStatement.setString(3, email);
		   System.out.println(name);
		int i = preparedStatement.executeUpdate();
		System.out.println("2");
		if(i!=1)
		{
			response.sendRedirect("jsp/About.jsp");
		}
		else
		{
			request.getSession().setAttribute("success", "true");
			
			response.sendRedirect("jsp/Complain.jsp");
		} 
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplainAddController() {
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
		// TODO Auto-generated method stub
		try {
			processRequest(request, response);
		} catch (ClassNotFoundException | SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}

}
