<%-- 
    Document   : Slider
    Created on : 17 Jul, 2016, 2:28:24 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Css/Slider.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="Css/commResResponsive.css">
        <script src="Js/Slider.js"></script>
    </head>
    <body onload="showSlides(slideIndex);">
 <div class="slideshow-container row">

<div class="mySlides ">
  <div class="numbertext">1 / 4</div>
  <img src="Images/Image1.jpg" style="width:100%">
  <div class="Slidertext">Search,Compare and Book Hostel's Room At Kota With Best Price From Home</div>
</div>

<div class="mySlides ">
  <div class="numbertext">2 / 4</div>
  <img src="Images/Image2.jpg" style="width:100%">
  <div class="Slidertext">200+ Hostels Available With Their Authentic Details At Best Price.Get Exciting Offers Every Hour </div>
</div>

<div class="mySlides ">
  <div class="numbertext">3 / 4</div>
  <img src="Images/Image3.jpg" style="width:100%">
  <div class="Slidertext">No Need To Panic For Hostels And There Prices In Kota </div>
</div>
     
<div class="mySlides ">
  <div class="numbertext">4 / 4</div>
  <img src="Images/Image4.jpg" style="width:100%">
  <div class="Slidertext">Add your Hostels Here So That Hosteler From Worldwide Know About It and Book It</div>
</div>

<a class="prev" onclick="plusSlides(-1)"><</a>
<a class="next" onclick="plusSlides(1)">></a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
  <span class="dot" onclick="currentSlide(4)"></span>
</div> 
    </body>
</html>
