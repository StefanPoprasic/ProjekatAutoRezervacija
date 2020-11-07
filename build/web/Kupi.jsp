<%-- 
    Document   : Kupi
    Created on : Feb 19, 2020, 10:02:00 PM
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
            .odjava{
             border:4px solid white;
             background-color: blue;
             width: 80px;
             float: right;
             color: white;
            }
    </style>
    <body>
      <div class="odjava">
            
        <a href="Logovanje.jsp">Odjavi se</a>
        </div> 
      
        
        
     
   <form action="PotvrdiKupovinu" method="POST">

          <div class="form">
              <table>
                  <tr>
                        <td>
                            <h1>Potvrdite kupovinu automobila</h1>
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
                        <input size="10" type="hidden" name="cena" value="${automobil.cena}">
                        
                        <td>${automobil.marka}</td>
                        <td>${automobil.gorivo}</td>
                        <td>${automobil.menjac}</td>
                        <td>${automobil.karoserija}</td>
                        <td>${automobil.cena}</td>
                     </tr>
                    
                </c:forEach>
                  <c:forEach items="${users}" var="users">
                    <input size="10" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
                    <input size="10" type="hidden" name="email" value="${user.email}">
                  </c:forEach>
            </table>
          
              <table>
                  <tr>
                     
                      <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                  </tr>
              </table>
               <table>
                  <tr>
                      <td>Vratite se na proslu <a href="PodaciKorisnika.jsp"> stranu </a></td>
                  </tr>
              </table>
          </div>
   </form>
    </body>
</html>
