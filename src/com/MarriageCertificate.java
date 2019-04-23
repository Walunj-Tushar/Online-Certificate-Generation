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

import com.DbConnection;

@WebServlet("/MarriageCertificate")
public class MarriageCertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MarriageCertificate() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String HusbandSalutation,HusbandFirstName,HusbandMiddleName,HusbandLastName,HusbandGender,Husbandcontact,HusbandOccupation,HusbandBirthDate,HusbandReligion,HusbandEmail,HusbandHouseName,HusbandHouseNo,HusbandHouseArea,HusbandCountry,HusbandState,HusbandCity; 
	String WifeSalutation,WifeFirstName,WifeMiddleName,WifeLastName,WifeGender,WifeReligion,WifeBirthDate,WifeEmail,WifeHouseName,WifeHouseNo,WifeHouseArea,WifeCountry,WifeState,WifeCity,Wifecontact,WifeOccupation; 
	String Witness1Salutation,Witness1FirstName,Witness1MiddleName,Witness1LastName,Witness1Gender,Witness1Religion,Witness1BirthDate,Witness1Email,Witness1HouseName,Witness1HouseNo,Witness1HouseArea,Witness1Country,Witness1State,Witness1City,Witness1contact,Witness1Occupation; 
	String Witness2Salutation,Witness2FirstName,Witness2MiddleName,Witness2LastName,Witness2Gender,Witness2Religion,Witness2BirthDate,Witness2Email,Witness2HouseName,Witness2HouseNo,Witness2HouseArea,Witness2Country,Witness2State,Witness2City,Witness2contact,Witness2Occupation; 
	String Witness3Salutation,Witness3FirstName,Witness3MiddleName,Witness3LastName,Witness3Gender,Witness3Religion,Witness3BirthDate,Witness3Email,Witness3HouseName,Witness3HouseNo,Witness3HouseArea,Witness3Country,Witness3State,Witness3City,Witness3contact,Witness3Occupation; 

	
	
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
		
		HusbandSalutation = request.getParameter("HusbandSalutation");
		HusbandFirstName = request.getParameter("HusbandFirstName");
		HusbandMiddleName = request.getParameter("HusbandMiddleName");
		HusbandLastName = request.getParameter("HusbandLastName");
		HusbandGender = request.getParameter("HusbandGender");
		HusbandBirthDate = request.getParameter("HusbandBirthDate");
		HusbandOccupation = request.getParameter("HusbandOccupation");
		HusbandEmail = request.getParameter("HusbandEmail");
		Husbandcontact = request.getParameter("Husbandcontact");
		HusbandReligion = request.getParameter("HusbandReligion");
		HusbandHouseName = request.getParameter("HusbandHouseName");
		HusbandHouseNo = request.getParameter("HusbandHouseNo");
		HusbandHouseArea = request.getParameter("HusbandHouseArea");
		HusbandCountry = request.getParameter("HusbandCountry");
		HusbandState = request.getParameter("HusbandState");
		HusbandCity = request.getParameter("HusbandCity");
		
		WifeSalutation = request.getParameter("WifeSalutation");
		WifeFirstName = request.getParameter("WifeFirstName");
		WifeMiddleName = request.getParameter("WifeMiddleName");
		WifeLastName = request.getParameter("WifeLastName");
		WifeGender = request.getParameter("WifeGender");
		WifeBirthDate = request.getParameter("WifeBirthDate");
		WifeOccupation = request.getParameter("WifeOccupation");
		WifeEmail = request.getParameter("WifeEmail");
		Wifecontact = request.getParameter("Wifecontact");
		WifeReligion = request.getParameter("WifeReligion");
		WifeHouseName = request.getParameter("WifeHouseName");
		WifeHouseNo = request.getParameter("WifeHouseNo");
		WifeHouseArea = request.getParameter("WifeHouseArea");
		WifeCountry = request.getParameter("WifeCountry");
		WifeState = request.getParameter("WifeState");
		WifeCity = request.getParameter("WifeCity");
		
		Witness1Salutation = request.getParameter("Witness1Salutation");
		Witness1FirstName = request.getParameter("Witness1FirstName");
		Witness1MiddleName = request.getParameter("Witness1MiddleName");
		Witness1LastName = request.getParameter("Witness1LastName");
		Witness1Gender = request.getParameter("Witness1Gender");
		Witness1BirthDate = request.getParameter("Witness1BirthDate");
		Witness1Occupation = request.getParameter("Witness1Occupation");
		Witness1Email = request.getParameter("Witness1Email");
		Witness1contact = request.getParameter("Witness1contact");
		Witness1Religion = request.getParameter("Witness1Religion");
		Witness1HouseName = request.getParameter("Witness1HouseName");
		Witness1HouseNo = request.getParameter("Witness1HouseNo");
		Witness1HouseArea = request.getParameter("Witness1HouseArea");
		Witness1Country = request.getParameter("Witness1Country");
		Witness1State = request.getParameter("Witness1State");
		Witness1City = request.getParameter("Witness1City");
		
		Witness2Salutation = request.getParameter("Witness2Salutation");
		Witness2FirstName = request.getParameter("Witness2FirstName");
		Witness2MiddleName = request.getParameter("Witness2MiddleName");
		Witness2LastName = request.getParameter("Witness2LastName");
		Witness2Gender = request.getParameter("Witness2Gender");
		Witness2BirthDate = request.getParameter("Witness2BirthDate");
		Witness2Occupation = request.getParameter("Witness2Occupation");
		Witness2Email = request.getParameter("Witness2Email");
		Witness2contact = request.getParameter("Witness2contact");
		Witness2Religion = request.getParameter("Witness2Religion");
		Witness2HouseName = request.getParameter("Witness2HouseName");
		Witness2HouseNo = request.getParameter("Witness2HouseNo");
		Witness2HouseArea = request.getParameter("Witness2HouseArea");
		Witness2Country = request.getParameter("Witness2Country");
		Witness2State = request.getParameter("Witness2State");
		Witness2City = request.getParameter("Witness2City");

		Witness3Salutation = request.getParameter("Witness3Salutation");
		Witness3FirstName = request.getParameter("Witness3FirstName");
		Witness3MiddleName = request.getParameter("Witness3MiddleName");
		Witness3LastName = request.getParameter("Witness3LastName");
		Witness3Gender = request.getParameter("Witness3Gender");
		Witness3BirthDate = request.getParameter("Witness3BirthDate");
		Witness3Occupation = request.getParameter("Witness3Occupation");
		Witness3Email = request.getParameter("Witness3Email");
		Witness3contact = request.getParameter("Witness3contact");
		Witness3Religion = request.getParameter("Witness3Religion");
		Witness3HouseName = request.getParameter("Witness3HouseName");
		Witness3HouseNo = request.getParameter("Witness3HouseNo");
		Witness3HouseArea = request.getParameter("Witness3HouseArea");
		Witness3Country = request.getParameter("Witness3Country");
		Witness3State = request.getParameter("Witness3State");
		Witness3City = request.getParameter("Witness3City");

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `onlinecertificate`.`marriagecertificate` "
					+ "(`HusbandSalutation`, `HusbandFirstName`, `HusbandMiddleName`,`HusbandLastName`, `HusbandGender`, `HusbandBirthDate`,`HusbandOccupation`,`HusbandEmail`,`Husbandcontact`,`HusbandReligion`,`HusbandHouseName`,`HusbandHouseNo`,`HusbandHouseArea`,`HusbandCountry`,`HusbandState`,`HusbandCity`,`WifeSalutation`, `WifeFirstName`, `WifeMiddleName`,`WifeLastName`, `WifeGender`, `WifeBirthDate`,`WifeOccupation`,`WifeEmail`,`Wifecontact`,`WifeReligion`,`WifeHouseName`,`WifeHouseNo`,`WifeHouseArea`,`WifeCountry`,`WifeState`,`WifeCity`,`Witness1Salutation`, `Witness1FirstName`, `Witness1MiddleName`,`Witness1LastName`, `Witness1Gender`, `Witness1BirthDate`,`Witness1Occupation`,`Witness1Email`,`Witness1contact`,`Witness1Religion`,`Witness1HouseName`,`Witness1HouseNo`,`Witness1HouseArea`,`Witness1Country`,`Witness1State`,`Witness1City`,`Witness2Salutation`, `Witness2FirstName`, `Witness2MiddleName`,`Witness2LastName`, `Witness2Gender`, `Witness2BirthDate`,`Witness2Occupation`,`Witness2Email`,`Witness2contact`,`Witness2Religion`,`Witness2HouseName`,`Witness2HouseNo`,`Witness2HouseArea`,`Witness2Country`,`Witness2State`,`Witness2City`,`Witness3Salutation`, `Witness3FirstName`, `Witness3MiddleName`,`Witness3LastName`, `Witness3Gender`, `Witness3BirthDate`,`Witness3Occupation`,`Witness3Email`,`Witness3contact`,`Witness3Religion`,`Witness3HouseName`,`Witness3HouseNo`,`Witness3HouseArea`,`Witness3Country`,`Witness3State`,`Witness3City`)VALUES ( '"
					+ HusbandSalutation
					+ "','"
					+ HusbandFirstName
					+ "','"
					+ HusbandMiddleName + "', '" + HusbandLastName + "','" + HusbandGender + "','" + HusbandBirthDate + "','"+HusbandOccupation+"','"+HusbandEmail+"','"+Husbandcontact+"','"+HusbandReligion+"','"+HusbandHouseName+"','"+HusbandHouseNo+"','"+HusbandHouseArea+"','"+HusbandCountry+"','"+HusbandState+"','"+HusbandCity+"', '"
					+ WifeSalutation
					+ "','"
					+ WifeFirstName
					+ "','"
					+ WifeMiddleName + "', '" + WifeLastName + "','" + WifeGender + "','" + WifeBirthDate + "','"+WifeOccupation+"','"+WifeEmail+"','"+Wifecontact+"','"+WifeReligion+"','"+WifeHouseName+"','"+WifeHouseNo+"','"+WifeHouseArea+"','"+WifeCountry+"','"+WifeState+"','"+WifeCity+"','"
					+ Witness1Salutation
					+ "','"
					+ Witness1FirstName
					+ "','"
					+ Witness1MiddleName + "', '" + Witness1LastName + "','" + Witness1Gender + "','" + Witness1BirthDate + "','"+Witness1Occupation+"','"+Witness1Email+"','"+Witness1contact+"','"+Witness1Religion+"','"+Witness1HouseName+"','"+Witness1HouseNo+"','"+Witness1HouseArea+"','"+Witness1Country+"','"+Witness1State+"','"+Witness1City+"','"
					+ Witness2Salutation
					+ "','"
					+ Witness2FirstName
					+ "','"
					+ Witness2MiddleName + "', '" + Witness2LastName + "','" + Witness2Gender + "','" + Witness2BirthDate + "','"+Witness2Occupation+"','"+Witness2Email+"','"+Witness2contact+"','"+Witness2Religion+"','"+Witness2HouseName+"','"+Witness2HouseNo+"','"+Witness2HouseArea+"','"+Witness2Country+"','"+Witness2State+"','"+Witness2City+"','"
					+ Witness3Salutation
					+ "','"
					+ Witness3FirstName
					+ "','"
					+ Witness3MiddleName + "', '" + Witness3LastName + "','" + Witness3Gender + "','" + Witness3BirthDate + "','"+Witness3Occupation+"','"+Witness3Email+"','"+Witness3contact+"','"+Witness3Religion+"','"+Witness3HouseName+"','"+Witness3HouseNo+"','"+Witness3HouseArea+"','"+Witness3Country+"','"+Witness3State+"','"+Witness3City+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
				RequestDispatcher rd=request.getRequestDispatcher("UserHome.jsp");
				rd.forward(request, response);
   				//response.sendRedirect("MarriageCertificateInfo.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
