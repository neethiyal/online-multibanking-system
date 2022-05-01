<%-- 
    Document   : indian
    Created on : Jan 8, 2022, 12:29:29 PM
    Author     : JAVA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDIAN BANK</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- FOR POP UP VIEW ACCOUNTS -->
<style>
body {
	font-family: 'Varela Round', sans-serif;
}
.modal-login {
	width: 320px;
}
.modal-login .modal-content {
	border-radius: 1px;
	border: none;
}
.modal-login .modal-header {
	position: relative;
	justify-content: center;
	background: #f2f2f2;
}
.modal-login .modal-body {
	padding: 30px;
}
.modal-login .modal-footer {
	background: #f2f2f2;
}
.modal-login h4 {
	text-align: center;
	font-size: 26px;
}
.modal-login label {
	font-weight: normal;
	font-size: 13px;
}
.modal-login .form-control, .modal-login .btn {
	min-height: 60px;
	border-radius: 2px; 
}
.modal-login .hint-text {
	text-align: center;
}
.modal-login .close {
	position: absolute;
	top: 15px;
	right: 15px;
}
.modal-login .checkbox-inline {
	margin-top: 12px;
}
.modal-login input[type="checkbox"] {
	position: relative;
	top: 1px;
}
.modal-login .btn {
	min-width: 100px;
	background: #3498db;
	border: none;
	line-height: normal;
}
.modal-login .btn:hover, .modal-login .btn:focus {
	background: #248bd0;
}
.modal-login .hint-text a {
	color: #999;
}
.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}
</style>
        
        
<!--  FOR MENU BAR AND HEADER -->   
        
<style>
* {
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, Helvetica, sans-serif;
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
 
 <!-- FOR BACKGROUND IMAGE -->
      
 <style>
    
      body {
  background-image: url("img/b2.jpg");
width:100%;
height: 100%;
            background-repeat: no-repeat;
}
    
    .LearnCssAnimation {
    transform-origin: 50% 50%;
    animation-name: ImgRotate3dAnimation;
    animation-duration: 10s;
    animation-iteration-count: infinite;
    animation-delay: 0s; 
}

   @keyframes ImgRotate3dAnimation {
    50%  { transform: rotate3d(2, 0, 1, 180deg); }
    100% { transform: rotate3d(2, 0, 1, 360deg); }
}
</style>

    </head>
    
    <body>
        
        <%
            
            String name=""+session.getAttribute("username");
            String type=request.getParameter("type");
                        
     PreparedStatement check=Database.con().prepareStatement("select * from bankdetails where  name='"+name+"' and bank='indian'  ");
     ResultSet rs=check.executeQuery();
     %>
            
            
          
<!-- HEADER -->
            
<header>

    <h1 style="margin-top:10px"> Multi Banking</h1>
            <nav>
                <ul class="main-nav" style="height: 20px;">                  
                    <li><a href="home.jsp"> Home</a></li>

                    <li><a href="addindianbank.jsp">Add Account</a></li>
       <li>
       <div class="text-center">
	<!-- Button HTML (to Trigger Modal) -->
        <a href="#myModal" class="trigger-btn" data-toggle="modal" style="    margin-top: -3px;"> Accounts</a>
</div>

<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
                    <form action="indianlogincheck.jsp" method="post">
				<div class="modal-header">				
					<h4 class="modal-title">View Accounts</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">				
					<div class="form-group">
						<label>Username</label>
						<input disabled class="form-control"   placeholder="<%=name%>"  required="required">
					</div>
                                        
                                    
                                    <div class="form-group">
						<label>Account Number</label>
 <select    name="accountno" id="" class="form-control"  style="margin-left: 1px;
    width: 260px;
    padding: 22px;
    height: 64px;">
     <option>
         select
     </option>
     <%
     
     while(rs.next())
                    {
                        
                     String ano=rs.getString("accountno");
		  //JOptionPane.showMessageDialog(null, ano);

            %>
     <option value="<%=ano%>"><%=ano%></option>
           <%}%>
        </select> 
                               
         
 </div>
                  <div class="form-group">
						<label>PIN</label>
						<input type="password" name="pin" class="form-control"   placeholder="enter valid pin"  required="required">
					</div>
					
				</div>
				<div class="modal-footer justify-content-between">
					<input type="submit" class="btn btn-primary" value="View">
				</div>
			</form>
		</div>
	</div>
</div>     
       
</li>
<!-- Modal HTML CLOSE-->
</ul>
</nav>
            
 </header>
 
 <!-- HEADER CLOSE -->          
 <!--  LOGO IMAGE -->
        
 <image id="testImg" 
               src="img/indian logo.png"
                x="190" 
                y="140"  
                height="40" 
                class="LearnCssAnimation " style="height: 123px;
    margin-left: 600px;
    margin-top: 30px; ">
        
 </image>
 
 <!-- TITLE -->
      <image id="testImg" 
               src="img/indd.png"
                x="190" 
                y="140"  
                height="40" 
                 style="margin-top: 20px;  margin-left: 550px; ">
            </image>
            <div class="container" style="width:100%; height: 180px ;  background-color: #ffffff78">    
   <p style="margin-top: 30px;  margin-left: 20px; font-size: 25px;color:black; font-size: 25px">
           Indian Bank is a major nationalized bank. 
           It is under the ownership of the Ministry of Finance, Government of India. It was established in 1907 and is headquartered in Chennai, India. 
           It serves over 100 million customers with 41,620 employees, 6,004 branches with 5,428 ATMs and Cash deposit machines and is one of the top performing public sector banks in India. 
        </p>
        
            </div>
            

                                        
            
    </body>
</html>
