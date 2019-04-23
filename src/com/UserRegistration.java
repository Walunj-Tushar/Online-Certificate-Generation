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

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserRegistration() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String FirstName,MiddleName,LastName,Address,Gender,Contact,Email,Password,ConfirmPassword ;
	

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
		Address = request.getParameter("Address");
		Gender = request.getParameter("Gender");
		Contact = request.getParameter("Contact");
		Email = request.getParameter("Email");
		Password = request.getParameter("Password");
		ConfirmPassword = request.getParameter("ConfirmPassword");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `onlinecertificate`.`userregistration` (`FirstName`, `MiddleName`, `LastName`,`Address`,`Gender`, `Contact`, `Email`,`Password`,`ConfirmPassword`) VALUES ( '"
					+ FirstName
					+ "','"
					+ MiddleName
					+ "','"
					+ LastName + "','"+Address+"', '" + Gender + "','" + Contact + "','" + Email + "','"+Password+"','"+ConfirmPassword+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("index.jsp");
   				System.out.println("Data Insert Done");
				SendMail SendMail = new SendMail();
				String sub = "Regarding Registration ";
				String pkey = "Your Registration is Successful.....!<br> Username :"+Email+"  '\n'Password :"+Password+"";
				SendMail.EmailSending(Email, sub, pkey);
			
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
