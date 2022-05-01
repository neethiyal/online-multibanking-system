<%-- 
    Document   : hdfctransfer
    Created on : Jan 17, 2022, 4:26:32 PM
    Author     : JAVA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HDFC MONEY TRANSFER</title>
        
        <style>
            /* Code By Alireza Derakhshan */
* {
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, Helvetica, sans-serif;
    background-size: cover;
        background-image: url("img/pic2.jpg");
        width:100%;
        height: 100%;
            background-repeat: no-repeat;
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
 
 
 <!-- for transfer form-->
 <style>
            body {
    background-color: #d6a43100;
}
form {
    margin: 6px auto;
    width: 40%;
    background-color: #ed626200;
    height: 400px;
    border-radius: 10px;
    box-shadow: 1px 1px 5px 0px ;
}
form label ,input {
    display: block;
    text-transform: capitalize;
}
form label ,input {
    padding: 10px;
    width: 355px;
    margin-bottom: 12px;
    position: relative;
    left: 74px;
}
form input {
    border: none;
    border-radius: 10px;
    box-shadow: 0px 1px 1px 0px #000;
    padding: 15px;
}
form input:nth-of-type(5) {
    background-color: #fafffd;
    width: 353px;
    margin: 26px 0px 12px 0px;
    font-size: 13px;
    color: #FFF;
    margin-top :5px;
}
form label  {
    margin-bottom: -3px;
    margin-left: -6px;
    font-size: 20px;
}
form label  span {
    color: red;
}
        </style>
        
        <style>
            body {
    margin: 0;
    padding: 0;
}

.container {
    width: 100%;
    height: 100vh;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
}

.selectbox {
    position: relative;
}

.selectbox::before {
    content: '';
    position: absolute;
    top: 50%;
    margin-top: -6px;
    right: .7rem;
    width: 0;
    height: 0;
    border: solid black;
    border-width: 0 1px 1px 0;
    display: inline-block;
    padding: 3px;
    transform: rotate(45deg);
}

select {
   border: none;
    border-radius: 10px;
    padding: .5rem 1.5rem .5rem .5rem;
    display: flex;
    background-color: white;
    outline: 0;
    cursor: pointer;
    appearance: none;
}
        </style>
 
    </head>
    <body>
<header>
<%
            
            String name=""+session.getAttribute("username");
                        String accno=request.getParameter("accountno");

            %>
    <h1 style="margin-top:10px">Multi Banking</h1>
            <nav>
                <ul class="main-nav" style="height: 20px;">                  
                    <li><a href="hdfchome.jsp"> Home</a></li>

      </ul>
</nav>
            
 </header>

            <image id="testImg" 
               src="img/hdfc logo.png"
                x="190" 
                y="140"  
                height="40" 
                class="LearnCssAnimation " style="height: 180px;
    margin-left: 85px;
    margin-top: 20px;"></image>
        
        <h3 style="    margin-top: -155px;
            font-family: times;font-size: 30px"><center>
            MONEY TRANSFER
            </center> </h3>
     
        <form action="hdfctransfercheck.jsp?<%=accno%>" method="post" style="margin-top: 15px;">
            <label >Account Number <span>*</span></label>
            <input type='text' name="accountno" id =userN placeholder="type your Account Number...">
           
            <label for="ifsc">Amount <span>*</span></label>
            <input type="text" name="cash" id="email" placeholder="type a valid amount">
                      
              <label for="pwd">PIN Number <span>*</span></label>
            <input type="password" name="pin" id='pwd'placeholder="type a complex password for access your account">
            
            
            <input type='submit' value='Transfer' style="margin-top: 30px;background: mediumspringgreen;">
        </form>
    </body>
</html>
