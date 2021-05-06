<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("id");
    String driver = "com.mysql.cj.jdbc.Driver";

    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/form?zeroDateTimeBehavior=convertToNull", "root", "");
        statement = conn.createStatement();
        String sql = "select *from stu where Roll_no="+id;
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>

<!DOCTYPE html>
<html>
    <body>
        <h1 style="color:blue;">Enter the new Data :</h1>
        <form method="post" action="update-process.jsp">
            
            
            &nbsp&nbsp Name:<br>
            &nbsp&nbsp <input type="text" name="Name" value="<%=resultSet.getString("Name")%>">
            <br><br>
            &nbsp&nbsp Roll_No:<br>
            &nbsp&nbsp <input type="text" name="Roll_no" value="<%=resultSet.getString("Roll_no")%>">
            <br><br>
            &nbsp&nbsp Email_id:<br>
            &nbsp&nbsp <input type="text" name="Email_id" value="<%=resultSet.getString("Email_id")%>">
            <br><br>
            &nbsp&nbsp Password:<br>
            &nbsp&nbsp <input type="password" name="Password" value="<%=resultSet.getString("Password")%>">
            <br><br>
            &nbsp&nbsp DOB:<br>
            &nbsp&nbsp <input type="text" name="DOB" value="<%=resultSet.getString("DOB")%>">
            <br><br>
            &nbsp&nbsp Address:<br>
            &nbsp&nbsp <input type="text" name="Address" value="<%=resultSet.getString("Address")%>">
             <br><br>
            &nbsp&nbsp Gender:<br>
            &nbsp&nbsp <input type="text" name="Gender" value="<%=resultSet.getString("Gender")%>">
            <br><br>
            &nbsp&nbsp Mobile_no:<br>
            &nbsp&nbsp <input type="text" name="Mobile_no" value="<%=resultSet.getString("Mobile_no")%>">
            <br><br>
            &nbsp&nbsp Course:<br>
            &nbsp&nbsp <input type="text" name="Course" value="<%=resultSet.getString("Course")%>">
            <br><br>
            &nbsp&nbsp&nbsp&nbsp<input type="submit" value="Update Record">
        </form>
        <%
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>