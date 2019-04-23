package com;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DbConnection;

@WebServlet("/BirthCertificate")
public class BirthCertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BirthCertificate() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String BirthFirstName,BirthMiddleName,BirthLastName,Gender,BirthFatherName,BirthFatherLastName,BirthMotherName,BirthMotherLastName,BirthPlace,BirthDate ;
	String page="";

	public void init(ServletConfig config) throws ServletException {
		try {

			con = DbConnection.getConnection();
			System.out.println("connection is " + con);

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		BirthFirstName = request.getParameter("BirthFirstName");
		BirthMiddleName = request.getParameter("BirthMiddleName");
		BirthLastName = request.getParameter("BirthLastName");
		Gender = request.getParameter("Gender");
		BirthDate = request.getParameter("BirthDate");
		BirthFatherName = request.getParameter("BirthFatherName");
		BirthFatherLastName = request.getParameter("BirthFatherLastName");
		BirthMotherName = request.getParameter("BirthMotherName");
		BirthMotherLastName = request.getParameter("BirthMotherLastName");
		BirthPlace = request.getParameter("BirthPlace");
		BirthDate = request.getParameter("BirthDate");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `onlinecertificate`.`birthcertificate` (`BirthFirstName`, `BirthMiddleName`, `BirthLastName`,`Gender`, `BirthFatherName`,`BirthFatherLastName`,`BirthMotherName`,`BirthMotherLastName`,`BirthPlace`,`BirthDate`) VALUES ( '"
					+ BirthFirstName
					+ "','"
					+ BirthMiddleName
					+ "','"
					+ BirthLastName + "', '" + Gender + "','" + BirthFatherName + "','"+BirthFatherLastName+"','"+BirthMotherName+"','"+BirthMotherLastName+"','"+BirthPlace+"','"+BirthDate+"');");
			
			
			if (r > 0)
			{
				response.sendRedirect("AdminHome.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("/UserHome.jsp");
				//rd.forward(request, response);
				System.out.println("Data Insert Done");
				
   				//response.sendRedirect("AdminHome.jsp");
   			}


		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}
		finally {
			page="UserHome.jsp";
		}
		RequestDispatcher dd=request.getRequestDispatcher(page);
		dd.forward(request, response);

	}
}
