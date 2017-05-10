<%-- 
    Document   : OwnerUpdateForm
    Created on : 23 Jul, 2016, 12:58:32 AM
    Author     : user
--%>

<%@page import="HostelforU.Util"%>
<%@include file="CheckSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
       <link rel="stylesheet" type="text/css" href="Css/commResResponsive.css">
         <link rel="stylesheet" type="text/css" href="Css/Registration.css">
         <script src="Js/formvalidation.js" ></script>
         <script>
            function isFormValid()
            {   
                   str="";
                cname=document.getElementById("ownername");
                 contact=document.getElementById("contact");
               
                pass=document.getElementById("password");
                repass=document.getElementById("repass");
                
                
                 if(isEmpty(cname))
                    str+="\n Owner Name Required";
                else
                    if(isDigit(cname))
                     str+="\n Invalid Owner Name";
                
               
                         
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
        <script src="Js/jquery.js" ></script>
        <script>
            $(document).ready(abc);
            function abc()
            {
                $("#dd").val($("#dd1").val());
                $("#mm").val($("#mm1").val());
                $("#yy").val($("#yy1").val());
            }
        </script>
    </head>
    <body>
         <jsp:useBean id="ob" scope="page" class="HostelforU.beans.Owner" />
        <%  
            String oid=(""+session.getAttribute("userid"));
            ob=ob.getRecord(oid);
        %>
        <jsp:include page="HeaderOwner.jsp"/>
        <jsp:include page="FirstElement.jsp"/>
        <div class="row">
         
        
         <div class="col-8" style="background-image:url('Images/BgSignup.jpg');background-size:100%">
             <form method="post"  action="OwnerUpdateProcess.jsp" name="Signup" onsubmit="return isFormValid()">
                  <input type="hidden" name="owneremail" value="<%= ob.getOwneremail() %>" > 
                 <table id="tblSignup">
                     <caption>Update Profile : <%= ob.getOwneremail() %></caption>
                    
                     <tr>
                         <td>Name:-</td>  
                         <td><input type="text" name="ownername" id="hostelername" placeholder="Yourname" value="<%= ob.getOwnername() %>"  ></input></td> 
                     </tr>
                        
                      <tr>
                         <td>Gender:-</td>  
                         <td> <%  String chk1="",chk2="";
                                if(ob.getGender().equals("M"))
                                    chk1="Checked";
                                else
                                    chk2="Checked";
                            %>
                             Male<input type="radio" name="gender" value="M" <%= chk1 %> ></input>
                         Female<input type="radio" name="gender" value="F" <%= chk2 %> ></input></td> 
                     </tr>
                      <tr>
                         <td>Date Of Birth:-</td>  
                         <td>
                            <input type="hidden" id="dd1" value="<%= Util.toDD(ob.getDob()) %>" >
                            <input type="hidden" id="mm1" value="<%= Util.toMM(ob.getDob()) %>" >
                            <input type="hidden" id="yy1" value="<%= Util.toYY(ob.getDob()) %>" >
                            Day<select name="dd" id="dd" >
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
                            Year<select name="yy" id="yy" >
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
                         <td><input type="text" name="contact" id="contact" placeholder="eg:1234567890" value="<%= ob.getContact() %>" ></input</td> 
                     </tr>
                      <tr>
                         <td>Password:-</td>  
                         <td><input type="password" name="password" id="password" placeholder="Password" value="<%= ob.getPassword() %>" ></input></td> 
                     </tr>
                      <tr>
                         <td> Re-Enter Password:-</td>  
                         <td><input type="password" name="repass" id="repass" placeholder="Password"  value="<%= ob.getPassword() %>"></input></td> 
                     </tr>
                     <tr>
                         <td><input type="Submit" name="Update" value="Update" class="btn" ></input></td>
                     </tr>
                 </table>  
                  
             </form>
         </div>
        </div>
    </body>
</html>

