package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class IssueController
 */
@WebServlet("/IssueController")
public class IssueController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException, ParseException {
		
		int catid=Integer.parseInt(request.getParameter("catname"));
		 int subcatid=Integer.parseInt(request.getParameter("subcatname"));
		
		String issuename = request.getParameter("name");
		String issueques = request.getParameter("question");
		Connection connection = DbConnection.getConnection();
		String sql = "INSERT into clean_issueadd_mst(Issue_Name,Issue_Description,Issue_Date,User_Id,Category_Id,SubCategory_Id) VALUES (?,?,SYSDATE(),?,?,?)";
		PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
		   preparedStatement.setString(1, issuename);
		   preparedStatement.setString(2, issueques);
		   preparedStatement.setString(3, "2");  
		   preparedStatement.setString(4, "1");
		   preparedStatement.setString(5, "1");
		int i = preparedStatement.executeUpdate();    
		if(i!=1)
		{
			response.sendRedirect("jsp/About.jsp");
		}
		else
		{
			request.getSession().setAttribute("success", "true");
			
			response.sendRedirect("jsp/Issue.jsp");
		} 
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IssueController() {
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
