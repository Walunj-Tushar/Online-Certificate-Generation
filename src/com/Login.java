package com;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DbConnection;


@WebServlet("/Login")
public class Login extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       

	Connection con ;
	PreparedStatement ps;
	ResultSet rs;

	String Email;
	String Password;

	public void init(ServletConfig config) throws ServletException
	{
		try 
		{
			con = DbConnection.getConnection();
			System.out.println("connection is " + con);
		}
		catch (Exception e1)
		{
			e1.printStackTrace();
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {

			Email = request.getParameter("Email");
			Password = request.getParameter("Password");

			System.out.println("username value. . . .. " + Email);
			System.out.println("Password value. . . .. " + Password);
			ps = con.prepareStatement("SELECT * FROM onlinecertificate.userregistration WHERE Email=? and Password=?");
			
			ps.setString(1, Email);
			ps.setString(2, Password);
			rs = ps.executeQuery();
			HttpSession session = request.getSession();
			session.setAttribute("Email", Email);
			if (rs.next()) 
			{	
					System.out.println("Login successfully");
					response.sendRedirect("UserHome.jsp");
				
			}
			else if((Email.equals("admin@gmail.com"))&&(Password.equals("admin")))
			{
				System.out.println("Login successfully");
				response.sendRedirect("AdminHome.jsp");
			}
			else {
				System.out.println("Login failed");

				response.sendRedirect("index.jsp");
			}
			ps.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}


	
		
	}

}
