<%-- 
    Document   : Otkazi
    Created on : Feb 19, 2020, 7:27:26 PM
    Author     : POPRASIC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form action="Otkazi" method="POST">

            <h1 width="150px"><font color="white">Otkazi rezervaciju</font></h1>
            <input size="10" type="hidden" name="korisnik" value="${user.idKorisnik}">
            <table align="center" background="black">
                <tr>
                    
                </tr>
                <tr>
                    
                    <td width="150px" bgcolor="blue"><font color="white">Ime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Prezime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Email</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Telefon</font></td>
                    
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
                   </tr>
                   <c:forEach items="${users}" var="user">
                    <tr>
                        
                        <td>${user.marka}</td>
                        <td>${user.gorivo}</td>
                        <td>${user.menjac}</td>
                        <td>${user.karoserija}</td>
                   </tr>
                    </c:forEach>
                   
                   <tr>
                       <td colspan="2" width="150px" bgcolor="blue"><font color="white">Datum</font></td>
                       <td colspan="2" width="150px" bgcolor="blue"><font color="white">Vreme</font></td>
                   </tr>
                    <c:forEach items="${users}" var="user">
                    <tr>
                        
                        <td colspan="2">${user.datum}</td>
                        <td colspan="2">${user.vreme}</td>
                   </tr>
                    </c:forEach>
                    <c:choose>
                    <c:when test="${user.idAuto!='8'}">
        <td>
                       
                                <input type="submit" nama="potvrdi" value="Otkazi rezervaciju">
                            
                        </td>     
    </c:when>
                        <c:otherwise>
                            <h1>Nemate rezervaciju</h1>
                        </c:otherwise>
                    </c:choose>
                    
            </form>
         
         
            
           
                </body>       
</html>
