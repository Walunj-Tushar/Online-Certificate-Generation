
     <%@ page import="java.sql.*,java.util.*" %>
<%@page import="com.DbConnection.*" %>
<%@page import ="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!--student data updated and store in db -->
<%
		  String id=request.getParameter("id");
          String BirthFirstName=request.getParameter("BirthFirstName");
          String BirthMiddleName=request.getParameter("BirthMiddleName");
          String BirthLastName=request.getParameter("BirthLastName");
          String Gender=request.getParameter("Gender");
          String BirthFatherName=request.getParameter("BirthFatherName");
          String BirthFatherLastName=request.getParameter("BirthFatherLastName");
          String BirthMotherName=request.getParameter("BirthMotherName");
          String BirthMotherLastName=request.getParameter("BirthMotherLastName");
          String BirthPlace=request.getParameter("BirthPlace");
          String BirthDate=request.getParameter("BirthDate");
           
     Connection con=null;
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecertificate", "root", "");           
            String query="Update birthcertificate set BirthFirstName='" + BirthFirstName + "', BirthMiddleName='" + BirthMiddleName + "', BirthLastName='" + BirthLastName + "', Gender='" + Gender + "', BirthFatherName='" + BirthFatherName + "', BirthFatherLastName='" + BirthFatherLastName + "', BirthMotherName='" + BirthMotherName + "' , BirthMotherLastName='" + BirthMotherLastName + "',BirthPlace='"+BirthPlace+"',BirthDate='"+BirthDate+"' where id=" + id; 
            Statement stmt=con.createStatement();
            stmt.executeUpdate(query);

            stmt.close(); 
            con.close(); 
        }
     catch(Exception e)
        {
          System.out.println(e);
        }
%>
<jsp:forward page="GenerateBirthCertificate.jsp"> 
<jsp:param name="Id" value="<%=id %>" /> 
</jsp:forward> 
<script> 
    alert("Record Updated Successfully...");
</script>