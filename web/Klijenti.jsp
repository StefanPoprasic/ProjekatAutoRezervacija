<%-- 
    Document   : Klijenti
    Created on : Feb 21, 2020, 3:46:06 PM
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
                background-image: url("slike/11.jpg");
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
                    <td width="150px" bgcolor="blue"><font color="white">Id korisnika</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Ime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Prezime</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Email</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Telefon</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Omogucena kupovina</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Racun kupovine</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Model</font></td>
                    <td colspan="2"  bgcolor="blue"><font color="white">Datum</font></td>
                    <td colspan="2" bgcolor="blue"><font color="white">Vreme</font></td>
                    <td colspan="2"  bgcolor="blue"><font color="white"></font></td>
                    <td colspan="2"  bgcolor="blue"><font color="white"></font></td>
                    
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.idKorisnik}</td>
                        <td>${user.ime}</td>
                        <td>${user.prezime}</td>
                        <td>${user.email}</td>
                        <td>${user.telefon}</td>
                        <td>${user.kupovina}</td>
                        <td>${user.racun}</td>
                        <input size="2" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
                        <input size="2" type="hidden" name="idAuto" value="${user.idAuto}">
                        <td>${user.marka}</td>
                         <td colspan="2">${user.datum}</td>
                        <td colspan="2">${user.vreme}</td>
                        <form action="ObrisiKorisnika" method="post">
                            <input size="2" type="hidden" name="email" value="${user.email}">
                        <td><input size=20 type="submit" value="Obrisi"></td>
                        </form>
                        <form action="Kupovina" method="post">
                            <input size="2" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
                        <td><input size=20 type="submit" value="Odobri kupovinu"></td>
                        </form>
                   </tr>
                    
                </c:forEach>
                   <form action="IzmeniKorisnika" method="post">
                <table>
                    <h1 width="150px"><font color="white">Izmeni korisnika</font></h1>
                    <tr>
                    <td width="350px">IdKorisnika</td>
                    <td width="400px">Ime</td>
                    <td width="400px">Prezime</td>
                    <td width="400px">Email</td>
                    <td width="400px">Telefon</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idKorisnik"></td>
                        <td><input size="10" type="text" name="ime"></td>
                        <td><input size="10" type="text" name="prezime"></td>
                        <td><input size="10" type="text" name="email"></td>
                        <td><input size="10" type="text" name="telefon"></td>
                        <td><input size=20 type="submit" value="Izmeni"></td>
                    </tr>   
                     <tr>
                        <td>
                            <a href="Admin.jsp">Vratite se</a>
                        </td>
                    </tr>
                </table>
               
            </form>
                   
              
                        
                 
                 
            </table>
                        <table>
                            <tr>
                                <td>
                                    <% String msg= (String) request.getAttribute("Poruka");
                        if(msg != null && msg.length()>0){
                   %>
                        <p><%= msg%></p>
                        <%} %>
                                </td>
                            </tr>
                        </table>
          </div>
       
        
    </body>
</html>
