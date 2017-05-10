<%-- 
    Document   : superLogin
    Created on : 20 Jul, 2016, 3:01:17 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
        <form name="Login" action="SuperLoginProcess.jsp" method="POST">
            <table border="1" cellpadding="8">
                
                <tbody>
                <caption>Admin Login</caption>
                    <tr>
                        <td>Admin email</td>
                        <td><input type="text" name="adminemail" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="LogIn" name="Login" /></td>
                        
                    </tr>
                </tbody>
            </table>

        </form>
        
    </body>
</html>
