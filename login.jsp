
<%@page import="java.util.jar.Attributes.Name"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
      <%@page language="java"%>
        <%@ page import="java.sql.*"%>
<%
    String Roll=request.getParameter("Roll_no");
    String Password=request.getParameter("Password");
    try{
        
  Connection c = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=convertToNull", "root", "");
        String sql="select *from reg where Roll_No=? and Password=? ";
         PreparedStatement ps = (PreparedStatement) c.prepareStatement(sql);
         ps.setString(1,Roll);
         ps.setString(2,Password);
         ResultSet rs=ps.executeQuery();
         
         if(rs.next()){
           String Name=rs.getString(1); // columns of the table 
           String Roll_no=rs.getString(2);
           String Email_id=rs.getString(3);
           String Gender=rs.getString(5);
           String Mobile_no=rs.getString(6);
           String Course=rs.getString(7);
           
           
           session.setAttribute("Name",Name);
           session.setAttribute("Roll_no",Roll);
           session.setAttribute("Email_id",Email_id);
           session.setAttribute("Gender",Gender);
           session.setAttribute("Mobile_no",Mobile_no);
           session.setAttribute("Course",Course);
          //session.setAttribute("");
            response.sendRedirect("detail.jsp");
           
         }
         else{
             response.sendRedirect("index.html");
         }
         
    }
    catch(Exception e)
    {
        
    }   

%>
</html>