<%-- 
    Document   : IzabranModel
    Created on : Feb 7, 2020, 8:44:51 PM
    Author     : POPRASIC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<c:if test="condition"></c:if>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
     <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jsgl.min.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
    
        </script>
      
     <style>
            table{
                background-color: white;
                border-collapse: collapse;
  width: 100%;
            }
            body{
                background-image: url("slike/11.jpg");
                font-weight: bold;
                background-position: center;
                
            }
            td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
            .img{
                background-position: center;
            }
            
    </style>
    <body>
       
        <c:choose>
    <c:when test="${automobil.serija=='1'}">
        <table align="center">
                <tr>
                    <img src="slike/bmw1.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw1.2.jpg" width="700" height="500"/> 
                </tr>
            </table> 
    </c:when>
        <c:when test="${automobil.serija=='2'}">
        <table align="center">
                <tr>
                    <img src="slike/bmw2.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw2.2.jpg" width="700" height="500"/> 
                </tr>
            </table> 
    </c:when>
        <c:when test="${automobil.serija=='3'}">
            <table align="center">
                <tr>
                    <img src="slike/bmw3.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw3.2.jpg" width="700" height="500"/> 
                </tr>
            </table>
    </c:when>
    <c:when test="${automobil.serija=='4'}">
            <table align="center">
                <tr>
                    <img src="slike/bmw4.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw4.2.jpg" width="700" height="500"/> 
                </tr>
            </table>
    </c:when>
    <c:when test="${automobil.serija=='5'}">
            <table align="center">
                <tr>
                    <img src="slike/bmw5.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw5.2.jpg" width="700" height="500"/> 
                </tr>
            </table>
    </c:when>
    <c:when test="${automobil.serija=='6'}">
            <table align="center">
                <tr>
                    <img src="slike/bmw6.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw6.2.jpg" width="700" height="500"/> 
                </tr>
            </table>
    </c:when>
    <c:when test="${automobil.serija=='7'}">
            <table align="center">
                <tr>
                    <img src="slike/bmw7.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw7.2.jpg" width="700" height="500"/> 
                </tr>
            </table>
    </c:when>
    <c:when test="${automobil.serija=='8'}">
            <table align="center">
                <tr>
                    <img src="slike/bmw8.1.jpg" width="700" height="500"/> 
                </tr>
                <tr>
                    <img src="slike/bmw8.2.jpg" width="700" height="500"/> 
                </tr>
            </table>
    </c:when>
    
        </c:choose>
        
        
     
   <form action="PotvrdiVreme" method="POST">

          <div class="form">
              <table>
                  <tr>
                        <td>
                            <h1>Izabrali ste automobil</h1>
                        </td>
                    </tr>
              </table>
           
            <table align="center" background="black">
            
                <tr>
                    
                    <td width="150px" bgcolor="blue"><font color="white">Marka modela</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Gorivo</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Menjac</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Karoserija</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Cena</font></td>
                    
                </tr>
                <c:forEach items="${automobils}" var="automobil">
                    <tr>
                        <input size="10" type="hidden" name="idAuto" value="${automobil.idAuto}">
                        
                        <td>${automobil.marka}</td>
                        <td>${automobil.gorivo}</td>
                        <td>${automobil.menjac}</td>
                        <td>${automobil.karoserija}</td>
                        <td>${automobil.cena}</td>
                     </tr>
                    
                </c:forEach>
                  <c:forEach items="${users}" var="users">
                    <input size="10" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
                  </c:forEach>
            </table>
              <table>
                  <tr>
                        <td>
                             
            <label for="datepicker">Izaberite datum rezervacije:</label>
                <input type="text" name="datum" id="datepicker">
            
            
        
                        </td>
                        <td>
                            <label>Izaberite vreme rezervacije:</label>
                            <input type="time" id="vreme" name="vreme"
       min="09:00" max="18:00"  >
                        </td>
                    </tr>
              </table>
              <table>
                  <tr>
                     
                      <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                  </tr>
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
