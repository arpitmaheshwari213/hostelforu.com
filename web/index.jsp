<%-- 
    Document   : index
    Created on : 17 Jul, 2016, 1:33:36 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home/hostelforU.com</title>
        <link rel="stylesheet" type="text/css" href="Css/commResResponsive.css">
        <link rel="stylesheet" type="text/css" href="Css/index.css">
        
        <script src="Js/formvalidation.js" ></script>
         <script>
            function isFormValid()
            {   
                   str="";
                   email=document.getElementById("hosteleremail");
                   pass=document.getElementById("password");
                 if(!isEmailID(email))
                    str+="\n Invalid Email ID";
                 if(isEmpty(pass))
                    str+="\n Password Required";
                
                
                 if(str.length==0)
                    return true;   
                 else
                {   alert(str);
                    return false;
                }
                
            }
             function isFormValid2()
            {   
                   str="";
                   email=document.getElementById("owneremail");
                   pass=document.getElementById("password2");
                 if(!isEmailID(email))
                    str+="\n Invalid Email ID";
                 if(isEmpty(pass))
                    str+="\n Password Required";
                
                
                 if(str.length==0)
                    return true;   
                 else
                {   alert(str);
                    return false;
                }
                
            }
       </script>
    </head>
    <body>
        <jsp:include page="HeaderHome.jsp"/>
        <jsp:include page="FirstElement.jsp"/>      
        <jsp:include page="Slider.jsp"/>
        <a name="Login">
        <div class="row">
         <div class="col-6" style="background-image:url('Images/BgForSection.jpg'); background-size:100% auto;">
             <h2>Search a Hostel</h2>
             <form method="post" action="">
             <input type="text" name="Search" required></input>
             <button class="btn"> <img src="Icons/searchIcon.png" /></button>
             </form>
         </div>
         <div class="col-6" style="background-image:url('Images/BgForSection.jpg'); background-size:100% auto;">
             <h2>Add Your Hostel</h2>
             <a href="OwnerLogin.jsp"><input type="Button" value="Click Here" class="btn"></input></a>
         </div>
        </div> 
        
        <div class="row">
         <div class="col-6" style="background-image:url('Images/BgTest7.jpg'); background-size:100% auto;">
             <h2>Hosteler LogIn or SignUp to Get exciting Offers on Hostel bookings in Kota</h2>
             <h3>Already a member of our community please LogIn </h3>
             <form method="post" action="HostelerLoginProcess.jsp" onsubmit="return isFormValid()">
                 Email-id<br>
                 <input type="text" name="hosteleremail" id="hosteleremail" placeholder="Yourname@email.com" ></input>
               <br>
               Password<br>
               <input type="password" name="password" id="password" placeholder="Password" ></input><br><br>
               <input type="submit" name="LogIn" value="LogIn" class="btn"></input>
             </form>
              <h3>To become a member of our community please SignUp </h3>
              <a href="HostelerRegistration.jsp"><input type="Button" name="SignUp" value="SignUp" class="btn" ></input></a>
         </div>
         <div class="col-6" style="background-image:url('Images/BgTest7.jpg'); background-size:100% auto;">
                <h2>Hostel Owner LogIn or SignUp to Add your Hostel and Manage Room Bookings</h2>
             <h3>Already a member of our community please LogIn </h3>
             <form method="post" action="OwnerLoginProcess.jsp" onsubmit="return isFormValid2()"> 
                 Email-id<br>
                 <input type="text" name="owneremail" id="owneremail" placeholder="Yourname@email.com"  ></input>
               <br>
               Password<br>
               <input type="password" name="password" id="password2" placeholder="Password" ></input><br><br>
               <input type="submit" name="LogIn" value="LogIn" class="btn" ></input>
             </form>
              <h3>To become a member of our community please SignUp </h3>
              <a href="OwnerRegistration.jsp"><input type="Button" name="SignUp" value="SignUp" class="btn"></input></a>
         </div>
        </div> 
        </a>
        
        <div class="row">
         <div class="col-6" style="background-image:url('Images/BgTest6.jpg'); background-size:100% auto;">
             <h2>Why to use hostelforU.com For room booking???</h2>
             <ul>
                 <li>Search from 200+ hostels from Kota </li>  
                 <li>Compare them with Location, Facilities and Prices </li>
                 <li>When satisfied book hostel's room from home at Best Prices</li>
                 <li>Get Exciting Every Hour and with Every Booking</li>
                 <li>Safe and Secure way of  Payment </li>
                 <li>Get instantly confirmation receipt  </li>
                 <li>Review hostels so that other hostler know about that hostels more precisely and Hostel Owners can improve their hostel </li>
             </ul>
             
         </div>
         <div class="col-6" style="background-image:url('Images/BgTest6.jpg'); background-size:100% auto;">
             <h2>Why to add your hostel on hostelforU.com??</h2>
             <li>Add your Hostels Here So That Hosteler From Worldwide Know About It </li>
             <li>Hosteler can book your hostel's room from home</li>
             <li>Instantly know about your Hostel's Room Booking and get paid for it</li>
             <li>Your hostel will become more popular and more technical</li>
             <li>You can update and remove hostel's room</li>
             <li>You can make your particular hostel's room unavailable also, in case of booking from other source or in any other case</li>
             <li>Read Reviews of hostler to improve your hostel facilities and make them happy for their next visit to your hostel</li>
             
         </div>
        </div> 
        <jsp:include page="Footer.jsp"/>
    </body>    
</html>