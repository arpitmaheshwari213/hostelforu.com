<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Css/Header.css" type="text/css">
    </head>
    <body>
         <div style="position:relative;z-index:10;">
                <ul id="menu">
                    <li class="menuItems" ><a href="index.jsp"><img src="Icons/homeIcon.png"/></a></li>
                    <li class="menuItems"  ><a href="index.jsp" style="padding:2px;font-family:Segoe Print,cursive;font-size:28px;color:white;" >hostelforU.com</a></li>
                    <li class="menuItems"><a href="OwnerAddHostel.jsp" >Add Your Hostel</a></li>
                     
                    <li class="menuItems menuItemRightFloat dropdown">
                        <img src="Icons/userIcon.png" class="dropElement"/>
                        <div class="dropdown-content">
                         <img src="Icons/userIconDropDown.png" style="padding:20px"/>
                        <a href="OwnerProfile.jsp">My Profile Page</a> 
                        <a href="OwnerUpdateForm.jsp">Update My Profile</a>
                        <a href="OwnerMyHostels.jsp">Update My Hostels</a>
                        <a href="ViewMyHostelBooking.jsp">My Bookings</a>
                        <a href="logout.jsp">Logout</a>
                        </div>
                   </li>
                   
                    <li class="menuItems menuItemRightFloat"><a href="index.html" >Contact Us</a></li>
                    <li class="menuItems menuItemRightFloat"><a href="index.html" >About Us</a></li>
                    <li class="menuItems menuItemRightFloat"><a href="index.html" ><img src="Icons/searchIcon.png"/></a></li>
                        
                    
                </ul>
        </div>
    </body>
</html>
