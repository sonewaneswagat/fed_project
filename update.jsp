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
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?zeroDateTimeBehavior=convertToNull", "root", "");
        statement = conn.createStatement();
        String sql = "select *from reg where Roll_no="+id;
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Update  database</h1>
        <form method="post" action="update1.jsp">
            
            
            Name:<br>
            <input type="text" name="Name" value="<%=resultSet.getString("Name")%>">
            <br>
            Roll_No:<br>
            <input type="text" name="Roll_no" value="<%=resultSet.getString("Roll_no")%>">
            <br>
            Email_id:<br>
            <input type="text" name="Email_id" value="<%=resultSet.getString("Email_id")%>">
            <br>
            Password:<br>
            <input type="password" name="Password" value="<%=resultSet.getString("Password")%>">
            <br>
            DOB:<br>
            <input type="text" name="DOB" value="<%=resultSet.getString("DOB")%>">
            <br>
            Address:<br>
            <input type="text" name="Address" value="<%=resultSet.getString("Address")%>">
            <br>
            Gender:<br>
            <input type="text" name="Gender" value="<%=resultSet.getString("Gender")%>">
            <br>
            Mobile_no:<br>
            <input type="text" name="Mobile_no" value="<%=resultSet.getString("Mobile_no")%>">
            <br>
            Course:<br>
            <input type="text" name="Course" value="<%=resultSet.getString("Course")%>">
            <br><br>
            <input type="submit" value="submit">
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