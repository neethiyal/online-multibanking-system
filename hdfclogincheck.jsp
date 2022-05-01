<%-- 
    Document   : hdfclogincheck
    Created on : Jan 11, 2022, 4:24:34 PM
    Author     : JAVA
--%>

<<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
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
            String pass=request.getParameter("pin");
            String acc=request.getParameter("accountno");
//String type=request.getParameter("type");
//JOptionPane.showMessageDialog(null, acc);

           
                try{                       
                    PreparedStatement check=Database.con().prepareStatement("select * from multibanking.bankdetails where name='"+name+"'  and pin='"+pass+"' and accountno='"+acc+"' ");
                    ResultSet rs=check.executeQuery();
                    if(rs.next())
                    {
                       // 
                        //String iacc=rs.getString("accountno");
                        //JOptionPane.showMessageDialog(null, iacc);
                        session.setAttribute("iname", name);
                        session.setAttribute("iacc", acc);
                        
                        response.sendRedirect("hdfchome.jsp");
                    }else{
                        JOptionPane.showMessageDialog(null, "Username / Password was incorrect...!");
                        response.sendRedirect("hdfc.jsp");
                    }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        %>  
    </body>
</html>
