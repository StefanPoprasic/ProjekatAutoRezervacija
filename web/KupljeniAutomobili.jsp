<%-- 
    Document   : KupljeniAutomobili
    Created on : Feb 21, 2020, 9:26:20 PM
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
          
    </style>

    <body>
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
                        <input size="2" type="hidden" name="idKorisnik" value="${user.idKorisnik}">
                        <input size="2" type="hidden" name="idAuto" value="${user.idAuto}">
                        <td>${user.marka}</td>
                         <td colspan="2">${user.datum}</td>
                        <td colspan="2">${user.vreme}</td>
                       
                   </tr>
                    </c:forEach>
              
                        
                     
                   </table>
                        <table>
                            <tr>
                        <td>
                            <a href="Admin.jsp">Vratite se</a>
                        </td>
                    </tr>
                        </table>
               