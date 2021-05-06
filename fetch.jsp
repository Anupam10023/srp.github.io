<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><a class="logo" href="index.html">Back to Home Page</a></h1><br><br>
        <h1 style="color:red;text-align:center;"><b>|****  Your Details ****|</b></h1>    
    </body>
    <pre>
<% 
          Object Name=session.getAttribute("Name");
          Object Roll_no=session.getAttribute("Roll_no");
          Object Email_id=session.getAttribute("Email_id");
          Object DOB=session.getAttribute("Gender");
          Object Place=session.getAttribute("Mobile_no");
          Object Course=session.getAttribute("Course");
          
          if(Roll_no!=null)
          {  
             out.println("-----------------------------------------------------------------------------------------------------------------------------------------");
             out.println("|         Name          |      Roll_no       |             Email_id                |      DOB      |       Place      |     Course      |");
             out.println("------------------------------------------------------------------------------------------------------------------------------------------");
             out.println("|  "+Name+"          |     "+Roll_no+"    |         "+Email_id+"           |         "+DOB+"          |    "+Place+"        |  "+Course+"     |");
               
          }
          else{
              out.println("** Wrong Input **");
          }

%>
</pre>   

    
</html>
