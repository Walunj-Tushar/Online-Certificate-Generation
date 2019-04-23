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

@WebServlet("/MarriageCertificateInfo")
public class MarriageCertificateInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MarriageCertificateInfo() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String  HusbandName,WifeName,MDate,Witness1Name,Witness2Name,Witness3Name;
	
	
	
	public void init(ServletConfig config) throws ServletException {
		try {

			con = DbConnection.getConnection();
			System.out.println("connection is " + con);

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}
	
	protected 
	void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		HusbandName = request.getParameter("HusbandName");
		WifeName = request.getParameter("WifeName");
		MDate = request.getParameter("MDate");
		Witness1Name = request.getParameter("Witness1Name");
		Witness2Name = request.getParameter("Witness2Name");
		Witness3Name = request.getParameter("Witness3Name");

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `onlinecertificate`.`marriageinfo`(`HusbandName`, `WifeName`,`MDate`,`Witness1Name`,`Witness2Name`,`Witness3Name`)VALUES ('"
					+ HusbandName
					+ "','"
					+ WifeName
					+ "','" + MDate + "','"
					+ Witness1Name
					+ "','"
					+ Witness2Name
					+ "','"
					+ Witness3Name
					+ "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("UserHome.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
