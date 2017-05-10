<%-- 
    Document   : OwnerLogin
    Created on : 22 Jul, 2016, 4:35:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="Css/commResResponsive.css">
           <link rel="stylesheet" type="text/css" href="Css/Registration.css">
    <script src="Js/formvalidation.js" ></script>
         <script>
            function isFormValid()
            {   
                   str="";
                   email=document.getElementById("owneremail");
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
       </script>
    </head>
    <body>
         <jsp:include page="HeaderHome.jsp"/>
        <jsp:include page="FirstElement.jsp"/>      
         <div class="col-4" style="background-image:url('Images/BgTest9.jpg');background-size:100% auto;color:white;">
             <h2>Hostel Owner LogIn  to Add your Hostel and Manage Room Bookings</h2>
             
             <form method="post" action="OwnerLoginProcess.jsp" id="formLogin" onsubmit="return isFormValid()">
                 <p>Already a member of our community please LogIn </p>
                  Email-id<br><input type="text" name="owneremail"id="owneremail" placeholder="Yourname@email.com" ></input>
               <br><br>
               Password<br><input type="text" name="password" id="password" placeholder="Password" ></input>
               <br><br>
               <input type="submit" name="LogIn" value="LogIn" class="btn" ></input>
             </form>
              <h3>To become a member of our community please SignUp </h3>
              <a href="OwnerRegistration.jsp"><input type="Button" name="SignUp" value="SignUp" class="btn"></input></a>

         </div>
    </body>
</html>
