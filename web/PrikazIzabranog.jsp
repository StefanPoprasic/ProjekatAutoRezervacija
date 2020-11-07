<%-- 
    Document   : PrikazIzabranog
    Created on : Jan 29, 2020, 5:31:52 PM
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
        
        
     
   

          <div class="form">
           
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
                        
                        <td>${automobil.marka}</td>
                        <td>${automobil.gorivo}</td>
                        <td>${automobil.menjac}</td>
                        <td>${automobil.karoserija}</td>
                        <td>${automobil.cena}</td>
                     </tr>
                    
                </c:forEach>
                  
                    
            </table>
              <table>
                  <tr>
                        <td>
                            <h1>Za vise informacija o automobilima ulogujte se !</h1> <h1><a href="Logovanje.jsp"><font color="Blue">Login</font></a> ili <a href="Registracija.jsp"><font color="Blue">Sing up</font></a></h1>
                        </td>
                    </tr>
              </table>
          </div>

    </body>
</html>
