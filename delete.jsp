<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.Integer"%>

<%
String r=request.getParameter("r");
int roll=Integer.parseInt(request.getParameter("r"));;
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/form?zeroDateTimeBehavior=convertToNull","root","");
Statement st=conn.createStatement();
st.executeUpdate("DELETE FROM stu WHERE Roll_no="+r);
out.println("******* Data has been Deleted Successfully from database !!! ");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}%>
<br><br>
<button  Onclick="window.location.href='see.jsp'">Click to View Database</button>
&nbsp&nbsp&nbsp<button onclick="window.location.href='index.html'">Back to Home</button>

