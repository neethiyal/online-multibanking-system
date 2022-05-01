<%-- 
    Document   : hdfchome
    Created on : Jan 11, 2022, 4:25:39 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HDFC ACCOUNT</title>
        
<style>
* {
    margin: 12px;
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
      
         
        
<style>
            
.body {
    margin: 0 auto;
    font-family: 'Roboto', sans-serif;
    
}

.container {
    text-align: center;
    margin: -8px;
    font-family: 'Roboto', sans-serif;
    height: auto;
    
}



.container-head {
    background-size: cover;
    background-repeat: no-repeat;
    padding-top: 130px;
    padding-bottom: 80px;
    padding-left: 10px;
    background: rgb(2,0,36);
    background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(12,12,29,0.6306897759103641) 38%, rgba(0,212,255,1) 100%);    
    
}

.menu {
    margin-top: -130px;
    text-align: left;
    color: white;
    line-height: 8px;
    cursor: pointer;
    
}

menu p {
    padding: 0px;
    
}
.profile-picture img {
    border-radius: 100%;
    margin-top: -200px;
    border: solid;
    border-width: 0px;
    border-color: white;
}

.container-body {
    padding-left: 20px;
}

.name {
    text-transform: uppercase;
}

.location {
    color: gray;
    margin: -10px;
        text-transform: uppercase;

}

.bio p {
    padding: 10px;
}

.stats {
    display: flex;
    align-items: center;
    justify-content: center;

}

.stats p {
    color: #080808;
    font-size: 16px;
    margin-bottom: -15px;
    text-transform: uppercase;
}

.followers {
    padding-right: 60px;
}


.following {
    padding-right: 60px;
}

.topics {
    padding-right: 60px;
}

.buttons {
    display: flex;
    width: 104%;
    align-items: center;
    justify-content: center;
    padding: 20px 30px 30px 50px;
    
}

.message-me {
    width: 50%;
    position: relative;
    padding: 18px 10px 18px 10px;
    margin-top: 20px;
    margin-right: 5px;
    border: solid #ff2d55 1px;
    border-radius: 50px;
    background-color: #ff2d55;
    text-transform: uppercase;
    letter-spacing: 2px;
    cursor: pointer;
    color: black;
    font-size: 12px;
}
.follow-me {
    width: 50%;
    position: relative;
    padding: 18px 10px 18px 10px;
    margin-top: 20px;
    border: solid gray 1px;
    border-radius: 50px;
    background-color: #ffffff;
    text-transform: uppercase;
    letter-spacing: 5px;
    cursor: pointer;
    color: rgb(49, 49, 49);
    font-size: 12px;
    margin-left: 5px;
}

.message-me:hover {
    background-color: #ffffff;
    color: rgb(54, 54, 54);
}
.follow-me:hover {
    background-color: #408afa;
    color: rgb(255, 255, 255);
    border-color: #408afa;
}

@media (min-width: 600px) {

    .container {
        width: 50%;
        border-radius: 2px;
        position: absolute;
        margin: 0px 0px 30px 200px;
        box-shadow:
  0 2.8px 2.2px rgba(0, 0, 0, 0.02),
  0 6.7px 5.3px rgba(0, 0, 0, 0.028),
  0 12.5px 10px rgba(0, 0, 0, 0.035),
  0 22.3px 17.9px rgba(0, 0, 0, 0.042),
  0 41.8px 33.4px rgba(0, 0, 0, 0.05),
  0 100px 80px rgba(0, 0, 0, 0.07);
    }

    .container-head {
        border-radius: 2px;
    }
    
    .buttons {
        margin-bottom: 40px;
    }
        
    
}
</style>
        
<style>
            *,
*:before,
*:after {
  box-sizing: border-box;
}

html, body {
  padding: 0;
  margin: 0;
  width: 100%;
  height: 100%;
}
body {
  text-align: center;

  background-size: cover;
        background-image: url("img/.jpg");
        width:100%;
        height: 100%;
            background-repeat: no-repeat;
}
h1,h2,a,p {
  font-family: auto;
}
h1 {
  font-size: 20px;
  text-align: center;
  color: black;
  margin: 0;
  padding: 5vh 0 1em;
}
h2 {
  text-align: center;
  white-space: nowrap;
  color: #00898E;
}
a {
  text-decoration: none;
  color: black;
}
p {
  text-align: center;
}
.btn {
  display: inline-block;
  padding: 10px 20px;
  border: 2px solid #00898E;
  border-radius: 10px;
  transition: background .3s;
}
.btn:hover {
  background: #00898E;
}
.popup {
  position: fixed;
  padding: 10px;
  max-width: 500px;
  border-radius: 10px;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: rgba(255,255,255,.9);
  visibility: hidden;
  opacity: 0;
  /* "delay" the visibility transition */
  -webkit-transition: opacity .5s, visibility 0s linear .5s;
  transition: opacity .5s, visibility 0s linear .5s;
  z-index: 1;
}
.popup:target {
  visibility: visible;
  opacity: 1;
  /* cancel visibility transition delay */
  -webkit-transition-delay: 0s;
  transition-delay: 0s;
}
.popup-close {
  position: absolute;
  padding: 10px;
  max-width: 500px;
  border-radius: 10px;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: rgba(255,255,255,.9);
}
.popup .close {
  position: absolute;
  right: 5px;
  top: 5px;
  padding: 5px;
  color: #000;
  transition: color .3s;
  font-size: 2em;
  line-height: .6em;
  font-weight: bold;
}
.popup .close:hover {
  color: #00E5EE;
}

.close-popup {
  background: rgba(0,0,0,.7);
  cursor: default;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  opacity: 0;
  visibility: hidden;
  /* "delay" the visibility transition */
  -webkit-transition: opacity .5s, visibility 0s linear .5s;
  transition: opacity .5s, visibility 0s linear .5s;
}
.popup:target + .close-popup{  
  opacity: 1;
  visibility: visible;
  /* cancel visibility transition delay */
  -webkit-transition-delay: 0s;
  transition-delay: 0s;
}
        </style>
        
    </head>
    
    <body>
        <%
            String iacc=""+session.getAttribute("iacc");

                        String iname=""+session.getAttribute("iname");

            
            %>
            
        <header style="        width: 1301px;
    margin-top: -1px;
    margin-left: -24px;
    height: 65px;">

    <h1 style="margin-top:10px; margin-left: 5px"> Multi Banking</h1>
            <nav>
                <ul class="main-nav" style="height: 20px;">
                    <li><a href="htransaction.jsp?accountno=<%=iacc%>">Transaction History</a></li>
                                        <li><a href="hdfc.jsp"> Logout</a></li>


       </ul>
            </nav>
            
        </header> 
        
        
        
        <%
                        
                        String query1=("select * from user where name='"+iname+"' ");
		  PreparedStatement ps1 = Database.con().prepareStatement(query1);
                    ResultSet rs11=ps1.executeQuery();
                    
                      
                    while(rs11.next())
                        
                try{
                    String query=("select * from bankdetails where name='"+iname+"' and accountno='"+iacc+"' ");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                    ResultSet rs1=ps.executeQuery();
                    
                      
                    while(rs1.next())
                    {
                     %>
        
           
        <div class="container"  style="           height: 637px;
    margin-top: -20px;
    margin-left: 375px;">
            <div class="container-head">
                <div class="menu">
                </div>
            </div>
            <div class="container-body" style="background-image:linear-gradient(90deg, rgb(2 0 36 / 38%) 0%, rgb(12 12 29 / 0%) 38%, rgb(0 212 255 / 55%) 100%) ;margin-top: -12px; height: 404px;">
                <div class="profile-picture"> 
                    <img src="img/hdfc logo.png" style="height: 260px;     margin-top: -160px;">
            </div>
            <div class="name">
                <p style="    font-size: 25px;">  <b><%=rs1.getString("name")%></b></p>
            </div>
            <div class="location">
                <p style="    font-size: 15px;"> <%=rs11.getString("address")%></p>
            </div>
            
            <div class="stats" style="margin-top:5px">
                <div class="followers">
                    <p>Account Number</p>
                    <h1><%=rs1.getString("accountno")%> (<%=rs1.getString("type")%>)</h1>
                </div>
               
                <div class="following">
                    <p>IFSC</p>
                    <h1><%=rs1.getString("ifsc")%></h1>
                </div>
                <div class="topics">
                    <p>Branch</p>
                    <h1><%=rs1.getString("branch")%></h1>
                </div>
             </div>
                <div class="buttons" style="        margin-top: -50px;
    margin-left: -30px;">
                    <button class="message-me"><a href="hdfctransfer.jsp?accountno=<%=rs1.getString("accountno")%>">Money Transfer
                        </a> </button>
                <a href="#popup1" class="message-me">view Balance
            </a>
<div id="popup1" class="popup">
    <a href="#" class="close">&times;</a><br>
    <br>
  <h2>Account Balance</h2>
  <h3>
     RS. <%=rs1.getString("balance")%>.00
  </h3>
</div>
<a href="#" class="close-popup"></a>            </div>
        </div>
             </div>
     <% }
                }
                catch(Exception ae)
                {JOptionPane.showMessageDialog(null, ae);
                }
                %>
                
                
       
    </body>
</html>
