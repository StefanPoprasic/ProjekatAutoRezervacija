<%-- 
    Document   : NovAuto
    Created on : Feb 27, 2020, 6:15:45 PM
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
            height: 500px;
             margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%); 
        }
    </style>
    <body>
        <form action="NovAuto" method="POST">
            <div class="form" align="center">
                <h1>Nov Automobil</h1>
                <table>
                    <tr>
                        <td>Marka :</td>
                        <td><input type="text" name="marka"></td>
                    </tr>
                    <tr>
                        <td>Gorivo :</td>
                        <td><input type="text" name="gorivo"></td>
                    </tr>
                    <tr>
                        <td>Menjac :</td>
                        <td><input type="text" name="menjac"></td>
                    </tr>
                    <tr>
                        <td>Karoserija :</td>
                        <td><input type="text" name="karoserija"></td>
                    </tr>
                    <tr>
                        <td>Cena :</td>
                        <td><input type="text" name="cena"></td>
                    </tr>
                     <tr>
                        <td>Serija :</td>
                        <td><input type="text" name="serija"></td>
                    </tr>
                   
                    
                     <tr>
                    <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                    <td><input type="reset" name="resetuj" value="Reset"></td>
                </tr>
                
                       <tr>
                        <td>
                            <a href="Menadzer.jsp">Vratite se</a>
                        </td>
                    </tr
                
                </table>
                <table>
                    <tr>
                        <td>
            <br><% String message=(String) request.getAttribute("Poruka");
            if(message != null && message.length()>0){
                %>
                <p><%=message%></p>
                <%}%>
                        </td>
                </tr>
                </table>
            </div>
                     
        </form>
    </body>
</html>

