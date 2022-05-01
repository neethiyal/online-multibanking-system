<%-- 
    Document   : index
    Created on : Jan 7, 2022, 10:42:14 AM
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
            /*
==================
  general reset
==================
*/
*,
*::after,
*::before {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
html {
  box-sizing: inherit;
}
/* @import url("https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400;700&display=swap"); */

:root {
  /* primary color */
  --Dark-Blue: hsl(233, 26%, 24%);
  Lime-Green: hsl(136, 65%, 51%);
  Bright-Cyan: hsl(192, 70%, 51%);

  /* neutral color */
  Grayish-Blue: hsl(233, 8%, 62%);
  Light-Grayish-Blue: hsl(220, 16%, 96%);
  Very-Light-Gray: hsl(0, 0%, 98%);
  White: hsl(0, 0%, 100%);

  /* fonts */
  h1: 2.3rem;
  h2: 1.8rem;
 h3: 1.3rem;
  h4: 0.8rem;
 Fw-light: 300;
  Fw-regular: 400;
  Fw-bold: 700;

  /* others */
  Transition: all 0.3s ease-in-out;
  Light-boxshadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  Dark-boxshadow: 0 5px 15px rgba(0, 0, 0, 0.2);
  Line-height: 1.5;
  Opacity: 0.8;
}
/*
==================
  global styles
==================
*/
body {
  font-size: 18px;
  font-family: "Public Sans", sans-serif;
  font-weight:Fw-regular;
  height: 100%;
}
h1 {
  font-size: h1;
}
h2 {
  font-size:h2;
}
h3 {
  font-size: -h3;
}
h4 {
  font-size: h4;
}
h1,
h2,
h3,
h4 {
  color:Dark-Blue;
  font-weight: Fw-regular;
  margin: 0;
  margin-bottom: 0.6em;
}
p {
  color: Grayish-Blue;
  line-height: Line-height;
}
li {
  list-style: none;
}
a {
  text-decoration: none;
}
button {
  background: none;
  border: none;
}
img:not(.logo) {
  max-width: 100%;
}
/* reusable classes*/
.container {
  width:100%;
  margin: 0px auto;
  max-width: 1500px;
}
.cta-btn {
  display: inline-block;
  padding: 0.9em 2.5em;
  background: linear-gradient(to right, hsl(136, 65%, 51%), hsl(192, 70%, 51%));
  color: White;
  font-weight: Fw-bold;
  border-radius: 3em;
  transition: Transition;
}
.cta-btn:hover {
  opacity: 0.6;
}
/* end of reusable classes */
.cta-1 {
  display: none;
}
.nav-wrapper {
  padding: 0em 0;
  position: relative;
  z-index: 1000;
}
.nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.logo {
  align-self: center;
}
.nav-icon {
  width: 40px;
  cursor: pointer;
}
.nav-icon::after,
.nav-icon::before,
.nav-icon div {
  background-color: Dark-Blue;
  border-radius: 3px;
  content: "";
  display: block;
  height: 3px;
  margin: 7px 0;
  transition: all 0.2s ease-in-out;
}
.nav-icon.active::before {
  transform: translateY(11px) rotate(135deg);
}
.nav-icon.active::after {
  transform: translateY(-10px) rotate(-135deg);
}
.nav-icon.active div {
  transform: scale(0);
}
.nav-item {
  display: none;
}
.nav-item.active {
  display: block;
  position: absolute;
  background-color: white;
  top: 100px;
  width: 90%;
  text-align: center;
  padding: 1.5em 0;
  border-radius: 5px;
  box-shadow: var(Light-boxshadow);
  z-index: 1000;
  animation-name: zoom;
  animation-duration: .3s;
  animation-timing-function: linear;
}
@keyframes zoom{
  0% {
    transform: scale(1);
  }
  50% {
    transform: scale(1.03);
  }
  100% {
    transform: scale(1);
  }
}
.nav-links {
  display: inline-block;
  color: var(Dark-Blue);
  font-weight: var(Fw-regular);
  line-height: 1;
  margin: 0.85em 0;
  padding-bottom: 0.5em;
  position: relative;
  transition: var(Transition);
}
.nav-links::after {
  content: "";
  display: block;
  width: 100%;
  height: 2px;
  background: linear-gradient(to right, hsl(136, 65%, 51%), hsl(192, 70%, 51%));
  position: absolute;
  bottom: 0;
  left: 0;
  border-radius: 5px;
  transform-origin: right;
  transform: scaleX(0);
  transition: transform 0.25s linear;
}
.nav-links:hover {
  opacity: 0.8;
}
.nav-links:hover::after {
  transform-origin: left;
  transform: scaleX(1);
}

.hero-section {
  background-color: Very-Light-Gray;
  padding-bottom: 5.5em;
}
.hero-bg {
  position: relative;
  overflow: hidden;
}
.mockup {
  position: absolute;
  top: -130px;
  left: 0;
}
.hero-content {
  text-align: center;
}
.hero-content h1 {
  font-weight: Fw-regular;
}
.hero-content p {
  margin-bottom: 2.5em;
  font-weight: Fw-bold;
}

.value-section {
  background-color:Light-Grayish-Blue;
  text-align: center;
}
.desc {
  padding: 3.5em 0;
}
.value {
  margin-bottom: 2.3em;
}
.value-4 {
  margin-bottom: 0;
  padding-bottom: 3.5em;
}
.value .icon,
.value h3 {
  margin-bottom: 1.4rem;
}

.article-section {
  background-color:Very-Light-Gray;
  padding: 3.5em 0;
}
.article-wrapper h1 {
  font-size: 1.8rem;
  text-transform: capitalize;
  text-align: center;
  margin-bottom: 1em;
}
.article {
  background-color: White;
  margin-bottom: 1em;
  box-shadow: Light-boxshadow;
  border-radius: 5px;
  overflow: hidden;
}
.article .article-content {
  padding: 20px;
}
.article .article-content p:nth-child(1) {
  font-size: 14px;
  margin-bottom: 0.7em;
}
.article .article-content h3 {
  font-size: 20px;
}
.article .article-content p:nth-child(3) {
  font-size: 16px;
  margin-bottom: 0.6em;
}
.article-content > a > h3 {
  transition:Transition;
}
.article-content > a > h3:hover {
  color:Lime-Green;
  transition:Transition;
}

footer {
  background-color:Dark-Blue;
  padding: 3.5em 0 2.5em;
}
.footer-items {
  text-align: center;
  margin-bottom: 2em;
}
.ftr-item-1,
.ftr-item-2 {
  margin-bottom: 2em;
}
.social > a {
  display: inline-block;
  transform: scale(1.3);
  margin: 0 0.5em;
  transition: Transition;
}
.social > a img:hover {
  filter: invert(0.05) sepia(1) saturate(8.5) hue-rotate(50.4deg)
    brightness(0.92);
}
.ftr-logo {
  margin-bottom: 2em;
}
.ftr-nav li {
  line-height: 2;
}
.ftr-nav a {
  color: White;
  transition: Transition;
}
.ftr-nav a:hover {
  color: Bright-Cyan;
}
.cta-3 {
  margin-bottom: 2em;
}
.attribution {
  text-align: center;
  color:White;
}
.attribution a {
  color: Lime-Green;
  font-weight: Fw-bold;
}
.hero-section.blur {
  filter: blur(3px);
}
@media screen and (min-width: 588px) {
  .article-wrapper {
    display: grid;
    grid-template-columns: repeat(12, 1fr);
    gap: 10px;
  }
  .img-wrapper {
    width: 100%;
    height: 12rem;
  }
  .img-wrapper img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  .article {
    margin-bottom: 0;
  }
  .article-wrapper h1 {
    grid-column: span 12;
  }
  .article-1,
  .article-2,
  .article-3,
  .article-4 {
    grid-column: span 6;
  }
}

@media screen and (min-width: 750px) {
  .nav-item.active {
    display: flex;
    position: relative;
    background: none;
    box-shadow: none;
    top: 0;
    width: initial;
    padding: 0;
    border-radius: 5px;
    z-index: initial;
    align-items: center;
  }
  .nav-item {
    display: flex;
    align-items: center;
  }
  .nav-icon {
    display: none;
  }
  .nav-links {
    padding-bottom: 0;
    font-size: 0.8rem;
    margin: 0 0.4em;
    color: Grayish-Blue;
    font-weight: Fw-bold;
  }
  .nav-links:hover {
    color: Dark-Blue;
    
  }
  .nav-links::after {
    bottom: -32px;
    height: 3px;
  }
  .hero-section.blur {
    filter: blur(0);
  }
  .cta-1 {
    display: inline-block;
  }
  .btn {
    font-size: 0.7rem;
  }
  .value-desc {
    display: grid;
    grid-template-columns: repeat(12, 1fr);
    gap: 1rem;
  }
  .value-1,
  .value-2,
  .value-3,
  .value-4 {
    grid-column: span 6;
  }
  .value {
    padding: 0 0 3em;
    margin-bottom: 0;
  }
  .article-wrapper {
    gap: 1rem;
  }
  footer {
    padding: 3.5em 0 2em;
  }
  .footer-items {
    display: flex;
    justify-content: space-between;
  }
  .ftr-item-2 {
    display: flex;
    margin-bottom: 0;
    max-width: 60%;
  }
  .ftr-nav {
    margin: 0 10px;
    padding: 0;
  }
  .ftr-nav li {
    line-height: 1;
    margin-bottom: 1.5em;
  }
  .ftr-nav li:last-child {
    margin-bottom: 0;
  }
  .social > a {
    transform: scale(1);
    margin: 0 0.3em;
    text-align: center;
  }
  .ftr-logo {
    margin-bottom: 3.5em;
  }
}

@media screen and (min-width: 800px) {
  h1 {
    font-size: 30px;
  }
  .hero-section {
    padding-bottom: 0;
    height: auto;
  }
  .hero {
    display: flex;
    overflow: hidden;
    align-items: center;
    height: 100%;
    margin-bottom: -47px;
  }
  .hero-bg {
    order: 1;
    overflow: initial;
    margin-right: -175px;
    margin-top: -70px;
  }
  .hero-content {
    text-align: left;
    margin-left: 5%;
   }
  .hero-content p {
    font-size: 20px;
    margin-bottom: 1.5em;
  }
  .mockup {
    z-index: 999;
    width: 70%;
    height: 100%;
    transform: translate(120px, 160px);
  }
  .cta-3 {
    display: inline-block;
    margin-bottom: 3em;
  }
}
@media screen and (min-width: 1000px) {
  .nav-links {
    margin: 0 0.8em;
  }
  .hero-content h1 {
    font-size: 40px;
    padding-right: 30%;
  }
   .hero-content p {
    padding-right: 10%;
  }
  .desc {
      text-align: left;
      padding-right: 30%;
  } 
  .desc h1 {
    font-size: 2.2rem;
  }
  .value-1,
  .value-2,
  .value-3,
  .value-4 {
    grid-column: span 3;
    text-align: left;
  }
  .article-1,
  .article-2,
  .article-3,
  .article-4 {
    grid-column: span 3;
  }
  .article-wrapper h1 {
      text-align: left;
      font-size: 2.2rem;
  }
  .img-wrapper {
    height: 15rem;
  }
  .ftr-nav {
      margin: 0 2em;
  }
  .cta-3 {
      text-align: right;
  }
  .ftr-item-1 .social > a {
    margin: 0 .7em;
  }
  .ftr-nav.nav-1 {
    margin-right: 3em;
  }
  .copyright {
    margin-top: 10px;
  }
}

@media screen and (min-width: 1575px) {
  .hero-content {
    margin-left: calc(50% - 700px);
  }
}
</style>
</head>
<body style="background-image: url(img/main.jpg)">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<nav class="nav-wrapper" style="background-color: #58d29d;">
<div class="nav container">
<!-- logo -->
        <a href="#" class="logo">
         <img src="img/logo.png" alt="logo">
        </a>
<!-- navigations -->
        <ul class="nav-item" style="margin-left: 540px;margin-right: 65px;">
            <li class="nav-list" ><a href="#" style="    font-family: sans-serif;margin-left: 130px;color:black">Home</a></li>
            <li class="nav-list"><a href="register.jsp" style="    font-family: sans-serif;margin-left: 20px;color:black">Login/Register</a></li>
            <li class="nav-list"><a href="#" style="    font-family: sans-serif;margin-left: 20px;color:black">Contact</a></li>
        </ul>
       
</div>
</nav>

    <div class="hero-section">
      <div class="hero">
        <div class="hero-bg">
           <picture class="picture">
            <source media="(max-width: 799px)" srcset="https://raw.githubusercontent.com/FesoQue/Easybank-landing-page/862ba75ea9d9c1f583baea94870720a316cf6659/images/bg-intro-mobile.svg 100w">
            <source media="(min-width: 800px)" srcset="https://raw.githubusercontent.com/FesoQue/Easybank-landing-page/862ba75ea9d9c1f583baea94870720a316cf6659/images/bg-intro-desktop.svg">
            <img src="https://raw.githubusercontent.com/FesoQue/Easybank-landing-page/862ba75ea9d9c1f583baea94870720a316cf6659/images/bg-intro-mobile.svg" alt="background">
          </picture>
          <img src="https://raw.githubusercontent.com/FesoQue/Easybank-landing-page/master/images/image-mockups.png" class="mockup" alt="mockup">
        </div>
        <div class="hero-content container">
          <h1 style="color:#007445">Multi-Banking System</h1>
          <p style="color:#001c1c">Multi-banking lets people see all their different financial accounts – often from multiple banks – in a single place.
              Offering a multi-banking solution can help businesses engage customers, and provide better services that are based on the user's complete financial picture.</p>
            <!-- cta btn -->
      
        </div>
      </div>
    </div>
<br>
<br>
<br>


    <div class="value-section">
      </div>
      <div class="value-desc container" style="background-color:#58d29d;">
        <div class="value value-1">
          <img src="img/ob_logo.png" class="icon" alt="icon">
          <h3 style="color:black">online banking</h3>
          <p style="color:black">Our modern web and mobile applications allow you to keep track of your finances 
            wherever you are in the world.</p>
        </div>
        <div class="value value-2">
          <img src="img/sec logo.png" class="icon" alt="icon">
          <h3 style="color:black">Higher Security</h3>
          <p style="color:black">Security in the banking sector can be defined as a financial instrument or asset that can be easily traded in the open market.</p>
        </div>
        <div class="value value-3">
          <img src="img/fast logo.png" class="icon" alt="icon">
          <h3 style="color:black">Fast Onboarding</h3>
          <p style="color:black">We don’t do branches. Open your account in minutes online and start taking control 
            of your finances right away.</p>
        </div>
        <div class="value value-4">
          <img src="img/api logo.png" class="icon" alt="icon">
          <h3 style="color:black">Open API</h3>
          <p style="color:black">Manage your savings, investments, pension, and much more from one account. Tracking 
            your money has never been easier.</p>
        </div>   
      </div>
    </div>

    
        
    <script>
        const hamburger = document.querySelector('.nav-icon');
const nav = document.querySelector('.nav-item')

hamburger.addEventListener('click', () => {
    nav.classList.toggle('active')
    hamburger.classList.toggle('active')
})

AOS.init();
    </script>
        
        

    </body>
</html>
