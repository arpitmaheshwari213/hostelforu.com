<%-- 
    Document   : HostelerRegistration
    Created on : 17 Jul, 2016, 11:46:55 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hosteler SignUp /hostelforU.com</title>
         
         <link rel="stylesheet" type="text/css" href="Css/commResResponsive.css">
         <link rel="stylesheet" type="text/css" href="Css/Registration.css">
         <script src="Js/formvalidation.js" ></script>
         <script>
            function isFormValid()
            {   
                   str="";
                cname=document.getElementById("hostelername");
                 contact=document.getElementById("contact");
                email=document.getElementById("hosteleremail");
                pass=document.getElementById("password");
                repass=document.getElementById("repass");
                
                
                 if(isEmpty(cname))
                    str+="\n Hosteler Name Required";
                else
                    if(isDigit(cname))
                     str+="\n Invalid Hosteler Name";
                
                if(!isEmailID(email))
                    str+="\n Invalid Email ID";
                         
                 if(isEmpty(contact))
                    str+="\n Contact Required";
                else
                    if(!isPhone(contact))
                        str+="\n Invalid Contact";
                
                if(isEmpty(pass))
                    str+="\n Password Required";
                else
                    if(isEmpty(repass))
                      str+="\n Please Re-enter Password"; 
                else
                    if(pass.value!=repass.value)
                    str+="\n Password Not Matching";
                    
                
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
        <div class="row">
         
        
         <div class="col-8" style="background-image:url('Images/BgSignup.jpg');background-size:100%">
             <form method="post"  action="HostelerRegistrationProcess.jsp" name="Signup" onsubmit="return isFormValid()">
                 <table id="tblSignup">
                     <caption>To become a member of our community please SignUp</caption>
                     <tr>
                         <td>Name:-</td>  
                         <td><input type="text" name="hostelername" id="hostelername" placeholder="Yourname" ></input></td> 
                     </tr>
                      <tr>
                         <td> Email-id:-</td>  
                         <td><input type="text" name="hosteleremail" id="hosteleremail" placeholder="Yourname@email.com"  ></input></td> 
                     </tr>
                      <tr>
                         <td>Gender:-</td>  
                         <td>Male<input type="radio" name="gender" value="M" checked ></input>
                         Female<input type="radio" name="gender" value="F" ></input></td> 
                     </tr>
                      <tr>
                         <td>Date Of Birth:-</td>  
                         <td>
                            Day<select name="dd" id="dd">
                                <script>
                                    for(i=1;i<=31;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                            Month<select name="mm" id="mm" >
                                <script>
                                    for(i=1;i<=12;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                            Year<select name="yy" id="yy">
                                <script>
                                    d=new Date();
                                    for(i=1970;i<=d.getFullYear();i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                        </td> 
                     </tr>
                      <tr>
                         <td>Contact:-</td>  
                         <td><input type="text" name="contact" id="contact" placeholder="eg:1234567890" ></input</td> 
                     </tr>
                      <tr>
                         <td>Password:-</td>  
                         <td><input type="password" name="password" id="password" placeholder="Password" ></input></td> 
                     </tr>
                      <tr>
                         <td> Re-Enter Password:-</td>  
                         <td><input type="password" name="repass" id="repass" placeholder="Password" ></input></td> 
                     </tr>
                     <tr>
                         <td><input type="Submit" name="SignUp" value="SignUp" class="btn" ></input></td>
                     </tr>
                 </table>  
                  
             </form>
         </div>
        </div>
    </body>
</html>
