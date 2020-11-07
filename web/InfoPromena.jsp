<%-- 
    Document   : InfoPromena
    Created on : Apr 11, 2020, 7:50:56 PM
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
                background-image: url("slike/12.jpeg");
                font-weight: bold;
                
                font-weight: bold;
               height: 1500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
                
            }
            td,tr {
  padding: 8px;
  text-align: center;
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
              <table>
                  <td width="150px" bgcolor="blue"><font color="white"><h1>Informacije o izabranom automobilu</h1></font></td>
              </table>
           
            <table align="center" background="black">
                <tr>
                    
                    <td width="150px" bgcolor="blue"><font color="white">Zapremina</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Konjske snage</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Maksimalna brzina</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Ubrzanje do 100 km/h</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Potrosnja kombinovane voznje</font></td>
                    
                </tr>
                <c:forEach items="${informacijes}" var="info">
                    <tr>
                        <td>${info.zapremina}</td>
                        <td>${info.konjskaSnaga}</td>
                        <td>${info.maxBrzina}</td>
                        <td>${info.ubrzanje}</td>
                        <td>${info.potrosnjaKom}</td>
                     </tr>
                    
                </c:forEach>
                   
            </table>
              <table>
                  <tr>
                      <td width="150px" bgcolor="blue"><font color="white">Opis automobila</font></td>
                  </tr>
                   <c:forEach items="${informacijes}" var="info">
                    <tr>
                        <td>${info.tekst}</td>
                    </tr>
                    
                </c:forEach>
              </table>
                <form action="IzmeniInfo" method="post">
                    <c:forEach items="${informacijes}" var="info">
                   
                        <input size="2" type="hidden" name="idInfo" value="${info.idInfo}">
                        
                    
                </c:forEach>
                <table>
                    <h1 width="150px"><font color="white">Izmeni informacije</font></h1>
                    <tr>
                    <td width="150px" bgcolor="blue"><font color="white">Zapremina</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Konjske snage</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Maksimalna brzina</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Ubrzanje do 100 km/h</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Potrosnja kombinovane voznje</font></td>
                    <td width="150px" bgcolor="blue"><font color="white">Tekst</font></td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="zapremina"></td>
                        <td><input size="10" type="text" name="konjskaSnage"></td>
                        <td><input size="10" type="text" name="maxBrzina"></td>
                        <td><input size="10" type="text" name="ubrzanje"></td>
                        <td><input size="10" type="text" name="potrosnjaKom"></td>
                        <td><input  size="10" type="text" name="tekst"></td>
                        
                       
                        
                    </tr> 
                    <td><input size=20 type="submit" value="Izmeni"></td>
                    <tr>
                        <td>
                            <a href="Menadzer.jsp">Vratite se</a>
                        </td>
                    </tr>
                </table>
                </form>
              
          </div>

    </body>
</html>
