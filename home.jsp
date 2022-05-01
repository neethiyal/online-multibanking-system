<%-- 
    Document   : home
    Created on : Jan 7, 2022, 4:26:55 PM
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
         <style>
            /* Code By Alireza Derakhshan */
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
    background-image: linear-gradient(to right, #654efe,#ff9d4a);
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
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.scroll-left {
height: 50px; 
overflow: hidden;
position: relative;
}
.scroll-left p {
position: absolute;
width: 100%;
height: 100%;
margin-top: 15px;
line-height: 50px;
text-align: center;
/* Starting position */
-moz-transform:translateX(100%);
-webkit-transform:translateX(100%); 
transform:translateX(100%);
/* Apply animation to this element */ 
-moz-animation: scroll-left 15s linear infinite;
-webkit-animation: scroll-left 15s linear infinite;
animation: scroll-left 15s linear infinite;
}
/* Move it (define the animation) */
@-moz-keyframes scroll-left {
0% { -moz-transform: translateX(100%); }
100% { -moz-transform: translateX(-100%); }
}
@-webkit-keyframes scroll-left {
0% { -webkit-transform: translateX(100%); }
100% { -webkit-transform: translateX(-100%); }
}
@keyframes scroll-left {
0% { 
-moz-transform: translateX(100%); /* Browser bug fix */
-webkit-transform: translateX(100%); /* Browser bug fix */
transform: translateX(100%); 
}
100% { 
-moz-transform: translateX(-100%); /* Browser bug fix */
-webkit-transform: translateX(-100%); /* Browser bug fix */
transform: translateX(-100%); 
}
}
</style>
 <style>
    
      body {
  background-image: url("img/backk.jpg");
width:100%;
height: 577px;
background-repeat: no-repeat;
background-size: cover;

    }
</style>
    </head>
    <body>
        <header>
            <h1>Multi Banking</h1>
            <nav>
                <ul class="main-nav">
                    <li><a href="profile.jsp">Profile</a></li>

                      <li><a href="index.jsp"> Logout</a></li>

                </ul>
            </nav>
            
        </header>
        
        <div>  
        
         <image id="testImgae" 
               src="img/banks.png"
                x="190" 
                y="140"  
                height="90" 
                style="margin-top: 50px;  margin-left: 500px;">
        
         </image>
         
         
<div     style="    margin-top: -50px;margin-left: -70px">
        <a href="indian.jsp">
            <image id="testImg" 
               src="img/2.png"
                x="190" 
                y="140"  
                height="40" 
                class="LearnCssAnimation " style="    height: 180px;
    margin-left: 205px;
    margin-top: 100px;    background: goldenrod;"></image>
        </a>
            
        <h3     style="WIDTH: 125PX;margin-left: 225px; color: black">
            INDIAN BANK
        </h3>
       </div>      
       
   <div style="margin-left: 400px; width: 250px;height: 200px;padding-left: 50px;padding-top: 20px;float: left;margin-top: -237px;">
       <a  href="hdfc.jsp">
  <image id="testImg" 
               src="img/33.png"
                x="190" 
                y="140"  
                height="40" 
                class="LearnCssAnimation " style="   height: 180px;
    margin-left: 80px;
    margin-top: 8px;   background: goldenrod;"></image>
        </a>
       <br>
 <h3     style="WIDTH: 125PX;margin-left: 120px;color: white">
            HDFC  BANK
        </h3>
   </div>
           
           
   <div style="margin-left: 800px; width: 250px;height: 200px;padding-left: 50px;padding-top: 20px;float: left;margin-top: -237px;">
       <a href="union.jsp">
       <img src="img/4.png"  style="height: 180px;
    margin-left: 80px;
    margin-top: 10px;
    background: red;" >
       </a>
       <br>
 <h3     style="WIDTH: 125PX;margin-left: 100px;color: white">
            UNION  BANK
        </h3>
   </div>
        </div>
                <div class="scroll-left">
                <p style="color: black; font-size: 20px; font-style: oblique">Multi-banking lets people see all their different financial accounts often from multiple banks in a single place.</p>
            </div>
</body>
</html>
