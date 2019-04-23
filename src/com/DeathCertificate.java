package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DbConnection;

@WebServlet("/DeathCertificate")
public class DeathCertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeathCertificate() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String FirstName,MiddleName,LastName,Gender,BirthDate,DeathDate,BirthPlace,DeathPlace ;
	

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
	
		FirstName = request.getParameter("FirstName");
		MiddleName = request.getParameter("MiddleName");
		LastName = request.getParameter("LastName");
		Gender = request.getParameter("Gender");
		BirthDate = request.getParameter("BirthDate");
		DeathDate = request.getParameter("DeathDate");
		BirthPlace = request.getParameter("BirthPlace");
		DeathPlace = request.getParameter("DeathPlace");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `onlinecertificate`.`deathcertificate` (`FirstName`, `MiddleName`, `LastName`,`Gender`, `BirthDate`, `DeathDate`,`BirthPlace`,`DeathPlace`) VALUES ( '"
					+ FirstName
					+ "','"
					+ MiddleName
					+ "','"
					+ LastName + "', '" + Gender + "','" + BirthDate + "','" + DeathDate + "','"+BirthPlace+"','"+DeathPlace+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
				response.sendRedirect("UserHome.jsp");
   				super.doPost(request, response);
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}
	
	}
}
