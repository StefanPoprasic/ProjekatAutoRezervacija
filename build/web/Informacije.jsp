<%-- 
    Document   : Informacije
    Created on : Feb 28, 2020, 1:12:26 AM
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
        <form action="Info" method="POST">
            <div class="form" align="center">
                <h1>Unesi informacije</h1>
                   <c:forEach items="${automobils}" var="automobil">
                    <tr>
                        <input size="10" type="hidden" name="idInfo" value="${automobil.idAuto}">
                        
                     </tr>
                    
                </c:forEach>
                <table>
         <tr>
                        <td>Zapremina :</td>
                        <td><input type="text" name="zapremina"></td>
                    </tr>
                    <tr>
                        <td>Konjska snaga :</td>
                        <td><input type="text" name="konjskaSnage"></td>
                    </tr>
                    <tr>
                        <td>Maksimalna brzina :</td>
                        <td><input type="text" name="maxBrzina"></td>
                    </tr>
                    <tr>
                        <td>Ubrzanje :</td>
                        <td><input type="text" name="ubrzanje"></td>
                    </tr>
                     <tr>
                        <td>Potrosnja kombinovana :</td>
                        <td><input type="text" name="potrosnjaKom"></td>
                    </tr>
                    <tr>
                        <td>Tekst :</td>
                        <td><input type="text" name="tekst"></td>
                    </tr>
                     
                    
                     <tr>
                    <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                    <td><input type="reset" name="resetuj" value="Reset"></td>
                </tr>
                </table>
                
            <br><% String message=(String) request.getAttribute("Poruka");
            if(message != null && message.length()>0){
                %>
                <p><%=message%></p>
                <%}%>
            </div>
        </form>
    </body>
</html>
