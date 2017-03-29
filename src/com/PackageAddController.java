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
 * Servlet implementation class PackageAddController
 */
@WebServlet("/PackageAddController")
public class PackageAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException, ParseException {
		
		 String pacname = request.getParameter("pacname");
		 int pacprice=Integer.parseInt(request.getParameter("pacprice"));
		 int pacserv=Integer.parseInt(request.getParameter("pacserv"));
		 int pacval=Integer.parseInt(request.getParameter("pacval"));
		 String pacdes = request.getParameter("pacdes");
		 Connection connection = DbConnection.getConnection();
		 String sql = "INSERT INTO clean_package_mst(Package_Name,Package_Description,Package_Price,Package_Service,Package_Validity) VALUES (?,?,?,?,?)";
		 PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
		   preparedStatement.setString(1, pacname);
		   preparedStatement.setString(2, pacdes);
		   preparedStatement.setInt(3, pacprice); 
		   preparedStatement.setInt(4, pacserv);
		   preparedStatement.setInt(5, pacval);
		int i = preparedStatement.executeUpdate();    
		if(i!=1)
		{
			response.sendRedirect("jsp/About.jsp");
		}
		else
		{
			request.getSession().setAttribute("success", "true");
			
			response.sendRedirect("jsp/Package.jsp");
		} 
	}

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageAddController() {
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
