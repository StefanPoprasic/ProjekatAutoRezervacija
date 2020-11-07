<%-- 
    Document   : Automobili
    Created on : Feb 21, 2020, 2:39:38 PM
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
        
     
   

          <div class="form">
           
            <table align="center" background="black">
                
                <tr>
                    <td width="150px" bgcolor="blue"><font color="white">Id automobila</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Marka modela</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Gorivo</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Menjac</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Karoserija</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Cena</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Serija</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Brisanje automobila</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Informacije</font></td>
                    
                </tr>
                <c:forEach items="${automobils}" var="automobil">
                    <tr>
                        <td>${automobil.idAuto}</td>
                        <td>${automobil.marka}</td>
                        <td>${automobil.gorivo}</td>
                        <td>${automobil.menjac}</td>
                        <td>${automobil.karoserija}</td>
                        <td>${automobil.cena}</td>
                        <td>${automobil.serija}</td>
                        <form action="BrisanjeAuta" method="post">
                            <input size="2" type="hidden" name="idAuto" value="${automobil.idAuto}">
                            <td><input size=20 type="submit" value="Obrisi"></td>
                        </form>
                        <td><a href="InfoAuto?idInfo=${automobil.idInfo}">Dodatne informacije</a></td>
                     </tr>
                    
                </c:forEach>
                  
                    
            </table>
                  <form action="IzmeniAutomobil" method="post">
                <table>
                    <h1 width="150px"><font color="white">Izmeni automobil</font></h1>
                    <tr>
                    <td width="350px">Id automobila</td>
                    <td width="400px">Marka</td>
                    <td width="400px">Gorivo</td>
                    <td width="400px">Menjac</td>
                    <td width="400px">Karoserija</td>
                    <td width="400px">Cena</td>
                    <td width="400px">Serija</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idAuto"></td>
                        <td><input size="10" type="text" name="marka"></td>
                        <td><input size="10" type="text" name="gorivo"></td>
                        <td><input size="10" type="text" name="menjac"></td>
                        <td><input size="10" type="text" name="karoserija"></td>
                        <td><input size="10" type="text" name="cena"></td>
                        <td><input size="10" type="text" name="serija"></td>
                        <td><input size=20 type="submit" value="Izmeni"></td>
                    </tr>   
                    <tr>
                        <td>
                            <a href="Admin.jsp">Vratite se</a>
                        </td>
                    </tr>
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

    </body>
</html>
