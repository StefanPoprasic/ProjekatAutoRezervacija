<%-- 
    Document   : Registracija
    Created on : Feb 19, 2020, 6:53:36 PM
    Author     : POPRASIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
        <form action="Registracija" method="POST">
            <div class="form" align="center">
                <h1>Registracija</h1>
                <table>
                    <tr>
                        <td>Ime :</td>
                        <td><input type="text" name="ime"></td>
                    </tr>
                    <tr>
                        <td>Prezime :</td>
                        <td><input type="text" name="prezime"></td>
                    </tr>
                    <tr>
                        <td>Email :</td>
                        <td><input type="email" name="email"></td>
                    </tr>
                    <tr>
                        <td>Telefon :</td>
                        <td><input type="number" name="telefon"></td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                     <tr>
                    <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                    <td><input type="reset" name="resetuj" value="Reset"></td>
                </tr>
                </table>
                <br><br> Imate nalog? <a href="Logovanje.jsp">Ulogujte se !</a>
            <br><% String message=(String) request.getAttribute("Poruka");
            if(message != null && message.length()>0){
                %>
                <p><%=message%></p>
                <%}%>
            </div>
        </form>
    </body>
</html>
