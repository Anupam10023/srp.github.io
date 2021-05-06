<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
    
    String Name = request.getParameter("Name");
    String id = request.getParameter("Roll_no");
    String Email_id = request.getParameter("Email_id");
    String Password = request.getParameter("Password");
    String DOB = request.getParameter("DOB");
    String Address = request.getParameter("Address");
    String Gender = request.getParameter("Gender");
    String Mobile_no = request.getParameter("Mobile_no");
     String Course = request.getParameter("Course");
    if (id != null) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/form?zeroDateTimeBehavior=convertToNull", "root", "");
            String sql = "Update stu set Name=?,Roll_no=?,Email_id=?,Password=?,DOB=?,Address=?,Gender=?,Mobile_no=?,Course=? where Roll_no="+id;
            ps = con.prepareStatement(sql);
            
            ps.setString(1, Name);
            ps.setString(2, id);
            ps.setString(3, Email_id);
            ps.setString(4, Password);
            ps.setString(5,DOB);
            ps.setString(6, Address);
            ps.setString(7, Gender);
            ps.setString(8, Mobile_no);
            ps.setString(9, Course);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.print(" ********* The Record has been Updated Successfully !!! *********");
            } else {
                out.print("There is a problem in updating Record.");
            }
        } catch (SQLException sql) {
            request.setAttribute("error", sql);
            out.println(sql);
        }
    }
%>
<br><br><button  Onclick="window.location.href='see.jsp'">Click to View Database</button>
&nbsp&nbsp&nbsp<button onclick="window.location.href='index.html'">Back to Home</button>