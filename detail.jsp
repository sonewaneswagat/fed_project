
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><b>------- Here are your details -------- </b></h1>    
    </body>
<% 
          Object Name=session.getAttribute("Name");
          Object Roll_no=session.getAttribute("Roll_no");
          Object Email_id=session.getAttribute("Email_id");
          Object Gender=session.getAttribute("Gender");
          Object Mobile_no=session.getAttribute("Mobile_no");
          Object Course=session.getAttribute("Course");
          
          if(Roll_no!=null)
          {
              out.println(Name+"  |  "+Roll_no+"  |  "+Email_id+"  |  "+Gender+"  |  "+Mobile_no+"  |  "+Course);
          }
          else{
              out.println("** Wrong Input **");
          }

%>

</html>
