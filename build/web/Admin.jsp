<%-- 
    Document   : Admin
    Created on : Feb 21, 2020, 1:13:13 PM
    Author     : POPRASIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background: black;
            }
            .button{
                background-color: black;
                border: none;
               
            }
            .button:hover {
                background-color: gray;
            }
            h1{
                color:white
            }
    </style>
    </head>
    <body>
        
        <table align="left|right|center">
            <tr>
                <form action="PregledAutomobila" method="POST">
            <button class="button" type="submit" name="id" value="1"><h1 align="center" color="white">Pregled automobila</h1> <img src="slike/all.jpg" width="700" height="500"></button>
                </form>
                </tr>
            <tr>
                <form action="Klijenti" method="POST">
                    <button class="button" type="submit" name="id" value="2" ><h1 align="center">Pregled klijenata</h1><img src="slike/client.jpeg" width="700" height="500"></button>
            </form>
                </tr>
            <tr>
                <form action="TestVoznja" method="POST">
                    <button class="button" type="submit" name="id" value="3" ><h1 align="center">Rezervacija test voznje</h1><img src="slike/key.jpg" width="700" height="500"></button>
           </form>
                </tr>
            <tr>
                <form action="TestVoznja" method="POST">
                    <button class="button" type="submit" name="id" value="4" ><h1 align="center">Prodati automobili</h1><img src="slike/buy.jpg" width="700" height="500"></button>
            </form>
                </tr>
           
            </table>
       
      </body>
</html>
