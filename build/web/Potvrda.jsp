<%-- 
    Document   : Potvrda
    Created on : Feb 10, 2020, 11:38:46 PM
    Author     : POPRASIC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Korisnici</title>
    </head>
    <style>
               table{
                background-color: white;
                border-collapse: collapse;
  width: 100%;
            }
            body{
                background-image: url("slike/12.jpeg");
                font-weight: bold;
               height: 1200px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
                
            }
            td,input{
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
          
    </style>
    <body>
        
         <form action="Rezervacija" method="POST">
        <div class="form">
            <h1 width="150px"><font color="white">Podaci o korisniku i rezervaciji</font></h1>
            
            <table align="center" background="black">
                <tr>
                    
                    <td width="150px" bgcolor="blue"><font color="white">Ime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Prezime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Email</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Telefon</font></td>
                    <td width="150px" bgcolor="blue"><font color="white"></font></td>
                    
                </tr>
                 <c:forEach items="${users}" var="user">
                    <tr>
                        
                        <td>${user.ime}</td>
                        <td>${user.prezime}</td>
                        <td>${user.email}</td>
                        <td>${user.telefon}</td>
                        <input size="2" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
                        <input size="2" type="hidden" name="email" value="${user.email}">
                        <input size="2" type="hidden" name="idAuto" value="${user.idAuto}">
                   </tr>
                    
                </c:forEach>
               
                   
                   <tr>
                       <td width="150px" bgcolor="blue"><font color="white">Model</font></td>
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
                   
                   
                   <tr>
                       <td colspan="2" width="150px" bgcolor="blue"><font color="white">Datum</font></td>
                       <td colspan="2" width="150px" bgcolor="blue"><font color="white">Vreme</font></td>
                       <td width="150px" bgcolor="blue"><font color="white"></font></td>
                   </tr>
                    <c:forEach items="${rezervacijas}" var="rezervacija">
                    <tr>
                        <td colspan="2">${rezervacija.datum}</td>
                        <td colspan="2">${rezervacija.vreme}</td>
                        <input size="10" type="hidden" name="idRezervacija" value="${rezervacija.idRezervacija}">
                   </tr>
                    </c:forEach>
                   <tr>
                       <td> <input type="submit" nama="potvrdi" value="Rezervisi auto"></td>
                                </tr>
                    </table>
            
                            
                      
            
          </div>
       
         </form>
    </body>
</html>
