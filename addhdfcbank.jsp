<%-- 
    Document   : addhdfcbank
    Created on : Jan 8, 2022, 3:50:58 PM
    Author     : JAVA
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD ACCOUNT</title>
<!-- 
    CSS FOR ADD ACCOUNT FORM
-->        
<style>
            body {
      background-image: linear-gradient(135deg, #007991c4 30%, #78ffd6bf 90%);
        width:100%;
        height: 100%;
            background-repeat: no-repeat;
}
form {
    margin: 6px auto;
    width: 40%;
    background-color:  #daa52000;
    height: 600px;
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
    font-size: 15px;
    color: black;
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
        
<!-- 
    CSS FOR SELECT OPTION
--> 

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
<!-- 
     FOR LOGO IMAGE
--> 
        <a href="hdfc.jsp">
            <image id="testImg" 
                src="img/hdfc logo.png"
                x="190" 
                y="140"  
                height="40" 
                class="LearnCssAnimation " style="    height: 180px;margin-left: 75px;margin-top: 5px;"></image>
        </a>

<!-- 
     FOR HEADING LINE
--> 
        <p style="margin-top: -188px;  margin-left: 450px; font-size: 50px;">
            Add your Bank Account
        </p>
        
        
<!-- 
     FOR ADD BANK DETAILS FORM
--> 
        <form action="hdfcbankcheck.jsp" method="post" style="margin-top: -30px; height: 590px;">
            <label >Account Number <span>*</span></label>
            <input type='text' name="accountno" id =userN placeholder="type your Account Number...">
            <label for="ifsc">IFSC <span>*</span></label>
            <input type="text" name="ifsc" id="email" placeholder="type a valid IFSC">
            <label for="type">Account Type <span>*</span></label>
            <select   name="type" id="" style="margin-left: 75px;width: 382px;padding: 15px">
                <option value="Current">Current</option>
                <option value="Savings">Savings</option>
                <option value="Joint">Joint</option>
            </select>   
            <input type="hidden" value="hdfc" style="background: white;">
            <label for="branch">Branch <span>*</span></label>
            <input type="text" name="branch" id="phone" placeholder="your Branch here please...">
            <label for="pwd">PIN Number <span>*</span></label>
            <input type="password" name="pin" id='pwd'placeholder="type a complex password for access your account">
            
            <input type='submit' value='Add Account' style="margin-top: 30px;background: mediumspringgreen;">
            <a href="hdfc.jsp"  >
                <center style="margin-left: -50px;">
                Home
                </center>
            </a>
        </form>
    </body>
</html>
