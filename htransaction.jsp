<%-- 
    Document   : htransaction
    Created on : Jan 17, 2022, 5:58:39 PM
    Author     : JAVA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HDFC BANK TRANSACTION HISTORY</title>
<style>
            /* Code By Alireza Derakhshan */
* {
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, Helvetica, sans-serif;
     background-image: url("img/pic2.jpg");
        width:100%;
        height: 100%;
}
.ham-menu {
    width: 30px;
    height: 30px;
    cursor: pointer;
}
.ham-menu span {
    display: block;
    width: 30px;
    height: 5px;
    background: #fff;
    margin: 5px 0;
    border-radius: 10px !important;
}
.main-nav {
    display: none;
    list-style-type: none;
}
header {
    display: flex;
    justify-content: space-between;
    padding: 15px 20px;
    align-items: center;
    /* background: #654EFE; */
    background-image: linear-gradient(to right, #654efe,#eab140);
}
header h1 {
    color: #fff;
    font-size: 1.5rem;
    cursor: pointer;
}
.main-nav a {
    text-decoration: none;
    padding: 5px 10px;
    color: #fff;
    font-weight: 600;
    transition: all ease 0.1s;
    margin-left: 3px;
}
.main-nav a:hover {
    background: #fff;
    border-radius: 7px;
    color: #ff9d4a;
}
.main-nav li:last-child a {
    background-color: #fff;
    color: #ff9d4a;
    border-radius: 7px;
    box-shadow: 2px 3px 10px 5px #ff9d4a;
}
.main-nav li:last-child a:hover {
    background-color: #2F4858;
    color: #fff;
    box-shadow: 0 0 0;
}
@media (min-width: 768px) {
    .ham-menu {
        display: none;
    } 
    .main-nav {
        display: flex;
    }
}
.me {
  margin:25px;
  text-align: center;
}
.me a {
  font-size:15px;
  color: #fff;
  font-weight: 400;
  text-decoration: none;
  background: #010101;
  padding: 10px;
  border-radius: 8px;
  transition: all 0.3s;
}
.me a:hover {
  color: #fff;
  background: #FFA200;
  transition: all easy 0.3s;
}
 </style>
 
<style>
            table{
                max-width: 1000px;
                margin-left: 100px;
                margin-top:20px;
     box-shadow: 2px 9px 8px 2px rgba(0,0,0,0.8);
}
      table, th, td {
         
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    text-align: center;
    padding: 15px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: #97ceff;
    color: #b18a8a;
}
</style>
        
        
<style>
            
.notebook table {
  border-collapse: collapse;
  width: 100%;
}

.notebook th {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
.notebook td{
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

INPUT {
	FONT-WEIGHT: normal; FONT-SIZE: 8pt; FONT-FAMILY: Verdana,Arial,helvetica,sans-serif
}
TEXTAREA {
	FONT-WEIGHT: normal; FONT-SIZE: 8pt; FONT-FAMILY: Verdana,Arial,helvetica,sans-serif;
	BACKGROUND-COLOR: #D3D3D3;COLOR: #000000
}
SELECT,OPTION,LI {
	FONT-WEIGHT: normal; FONT-SIZE: 8pt; FONT-FAMILY: Verdana,Arial,helvetica,sans-serif
}
DIV.notebook {
	BORDER-RIGHT: midnightblue thin inset; DISPLAY: none; BORDER-LEFT: midnightblue thin inset; WIDTH: 90%; BORDER-BOTTOM: midnightblue thin inset; HEIGHT: auto; BACKGROUND-COLOR: #ffffff
}
TABLE.notebook {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 90%; BORDER-BOTTOM: 0px
}

.row_even {
	FONT-SIZE: 15px; 
	BACKGROUND-COLOR: #fffefe; 
	FONT-WEIGHT: Normal;
	FONT-FAMILY: Verdana,Arial,helvetica,sans-serif
}
.row_odd {
	FONT-SIZE: 8pt; 
	BACKGROUND-COLOR: #D3D3D3; 
	FONT-WEIGHT: Normal;
	FONT-FAMILY: Verdana,Arial,helvetica,sans-serif
}
.row_title {
	FONT-SIZE: 15px;
	FONT-WEIGHT: bold;
	BACKGROUND-COLOR: #eab140;
	BORDER-RIGHT: #8B0000 2px outset; 
	BORDER-TOP: #8B0000 2px outset; 
	BORDER-LEFT: #8B0000 2px outset; 
	BORDER-BOTTOM: #8B0000 2px outset; 
	COLOR: #330000;
	FONT-FAMILY: Verdana,Arial,helvetica,sans-serif
}
            </style>
    </head>
    <body>
        <header>
            <h1 style="margin-top:10px">Online MultiBanking</h1>
            <nav>
                <ul class="main-nav" style="height: 20px;">                  
                    <li><a href="hdfchome.jsp"> Home</a></li>
                    <li><a href="hdfc.jsp"> Logout</a></li>
                </ul>
            </nav>
        </header>
       
<div style="padding:10px 0 10px 0;float: left">

    <%
             
      String name=""+session.getAttribute("username");
      String accno=request.getParameter("accountno");
      
      try{
              String query=("select * from transactn_histroy where name='"+name+"' and accno='"+accno+"' order by time desc limit 10");
	      PreparedStatement ps = Database.con().prepareStatement(query);
              ResultSet rs1=ps.executeQuery();
     %>
<h3 style="margin-left: 100px;margin-top: 100px;">Debited Transaction</h3>
                     
                <table class=notebook align=center >
                <tr class=row_title>
                <th align="center"> Sender Acc.NO</th>
		<th align="center"> Receiver Acc.NO</th>
		<th align="center">Amount</th>
		<th align="center">Date and Time</th>

                   
                   
                <% 
                   while(rs1.next())
                 {%>
                   
                <tr class= "row_even" >
                <td align="center"><%=rs1.getString("accno")%></td>
		<td align="center"><%=rs1.getString("receiver")%></td>
                <td align="center" style="color: red;"><%=rs1.getString("cash")%></td>
		<td align="center"><%=rs1.getString("time")%></td>
                </tr>
                <% }%>
                </table>
                
<% }
                catch(Exception ae)
                {JOptionPane.showMessageDialog(null, ae);
                }
%>
  </div>
        
<div style="padding:10px 0 10px 0;float: left">
<%
    try{
        String query=("select * from transactn_histroy where  receiver='"+accno+"' order by time desc limit 10");
        PreparedStatement ps = Database.con().prepareStatement(query);
        ResultSet rs1=ps.executeQuery();
%>

<h3 style="margin-left: 100px;margin-top: 100px;">  Credited Transaction </h3>
                     
            <table class=notebook align=center >
                <tr class=row_title>
                <th align="center"> Sender Acc.NO</th>
                <th align="center"> Sender Name</th>
		<th align="center">Amount</th>
		<th align="center">Date and Time</th>

               <% 
                    while(rs1.next())
               {%>
                   
                <tr class= "row_even" >
                <td align="center"><%=rs1.getString("accno")%></td>
                <td align="center" ><%=rs1.getString("name")%></td>
                <td align="center" style="color: darkgreen;"><%=rs1.getString("cash")%></td>
		<td align="center"><%=rs1.getString("time")%></td>
                </tr>
               <% }%>
                            
             </table>
                
<% }
                catch(Exception ae)
                {JOptionPane.showMessageDialog(null, ae);
                }
%>
</div>
        
</body>
</html>
