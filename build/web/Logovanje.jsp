<%-- 
    Document   : Logovanje
    Created on : Jan 31, 2020, 6:42:56 PM
    Author     : POPRASIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <style>
        body{
            background-image: url("slike/logo2.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:4px solid black;
            background-image: url("slike/logo.jpg");
            width:700px;
            height: 400px;
             margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%); 
        }
    </style>
    <body>
    <center> <form action="Login" method="POST">
        <div class="form" align="center">
            <h1>Logovanje</h1>
            <table>
                <tr>
                    <td>Email :</td>
                    <td><input type=email" name="email"></td>
                </tr>
                <tr>
                    <td>Lozinka</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                    <td><input type="reset" name="resetuj" value="Reset"></td>
                </tr>
            </table>
            Nemate nalog? <a href="Registracija.jsp">Registruj se</a>
            <br><% String message=(String) request.getAttribute("Poruka");
            if(message != null && message.length()>0){
                %>
                <p><%=message%></p>
                <%}%>
        </div>
    </form>
    </center>
    </body> 
</html>
