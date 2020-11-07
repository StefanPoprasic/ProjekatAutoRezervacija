<%-- 
    Document   : PodaciKorisnika
    Created on : Jan 31, 2020, 6:31:27 PM
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
        <script type="text/javascript">
			function showMessage(){
				alert("Postovani korisnice , nemate pravo na kupovinu online , za vise informacija obratite se na bmw@info.rs");
			}
		</script>
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
            <h1 width="150px"><font color="white">Podaci o korisniku i rezervaciji</font></h1>
            <input size="10" type="hidden" name="korisnik" value="${user.idKorisnik}">
            <table align="center" background="black">
                <tr>
                    
                </tr>
                <tr>
                    
                    <td width="150px" bgcolor="blue"><font color="white">Ime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Prezime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Email</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Telefon</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Racun kupovine</font></td>
                    
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        
                        <td>${user.ime}</td>
                        <td>${user.prezime}</td>
                        <td>${user.email}</td>
                        <td>${user.telefon}</td>
                        <td>${user.racun}</td>
                        <input size="2" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
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
                    <tr>
                        <c:forEach items="${users}" var="user">
                           <c:choose>
                               
    <c:when test="${user.idAuto=='8'}">
        <td>
                       <form action="BiranjeAuta.jsp" method="POST">
                                <input type="submit" nama="potvrdi" value="Rezervisi auto">
                            </form>
                        </td>     
    </c:when>
                      
            </c:choose>
                        </c:forEach>
                 
                        <td>
                            <c:choose>
                                
                            <c:when test="${user.kupovina==''}">
                               <input type="submit" id="btnShowMsg" value="Kupi rezervisani automobil" onClick='showMessage()'/>
                                </c:when>
                              
                            <c:otherwise>
                                 <form action="Kupi" method="POST">
                                <c:forEach items="${users}" var="user">
                                 <input size="2" type="hidden" name="kupovina" value="${user.kupovina}">
                                <input size="10" type="hidden" name="idAuto" value="${user.idAuto}">
                                </c:forEach>
                                <c:forEach items="${automobils}" var="automobil">
                        <input size="10" type="hidden" name="idAuto" value="${automobil.idAuto}">
                                </c:forEach>
                         <input type="submit" nama="potvrdi" value="Kupi automobil">
                            </form>
                            </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <form action="Otkazi.jsp" method="POST">
                                <input type="submit" nama="potvrdi" value="Otkazi rezervaciju">
                            </form>
                        </td>
                    </tr>
            </table>
          </div>
       
        
    </body>
</html>
