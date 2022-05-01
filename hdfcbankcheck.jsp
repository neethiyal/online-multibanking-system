<%-- 
    Document   : hdfcbankcheck
    Created on : Jan 8, 2022, 3:51:31 PM
    Author     : JAVA
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
String name=""+session.getAttribute("username");
String accountno = request.getParameter("accountno");
String type = request.getParameter("type");
// String bank = request.getParameter("bank");
// JOptionPane.showMessageDialog(null,bank); 
String ifsc = request.getParameter("ifsc");
String branch = request.getParameter("branch");
String pass = request.getParameter("pin");
   
try{
	String query="insert into bankdetails(name,accountno,type,bank,ifsc,branch,pin)values(?,?,?,'hdfc',?,?,?)";
        PreparedStatement ps = Database.con().prepareStatement(query);
        //      ps.setString(1, id);
                  ps.setString(1, name);
		  ps.setString(2, accountno);
                  ps.setString(3, type);
                  ps.setString(4, ifsc);
                  ps.setString(5, branch);
                  ps.setString(6, pass);
                  ps.executeUpdate();
                  
		  JOptionPane.showMessageDialog(null, "Added Successfully");
		  response.sendRedirect("hdfc.jsp");
		  
	  }
     catch(Exception e){
		   JOptionPane.showMessageDialog(null,e); 
	  }
     %>
    </body>
</html>
