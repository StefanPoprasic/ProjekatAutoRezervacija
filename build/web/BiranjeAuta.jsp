<%-- 
    Document   : BiranjeAuta
    Created on : Feb 3, 2020, 6:48:21 PM
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
            .odjava{
             border:4px solid white;
             background-color: blue;
             width: 80px;
             float: right;
             color: white;
            }
    </style>
    </head>
    <body>
        <form action="Izbor" method="POST">
            <input size="10" type="hidden" name="korisnik" value="${user.idKorisnik}">
        <table align="left|right|center">
            <tr>
            <button class="button" type="submit" name="id" value="1"><h1 align="center" color="white">BMW SERIJA 1</h1> <img src="slike/bmw1.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="2" ><h1 align="center">BMW SERIJA 2</h1><img src="slike/bmw2.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="3" ><h1 align="center">BMW SERIJA 3</h1><img src="slike/bmw3.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="4" ><h1 align="center">BMW SERIJA 4</h1><img src="slike/bmw4.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="5" ><h1 align="center">BMW SERIJA 5</h1><img src="slike/bmw5.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="6" ><h1 align="center">BMW SERIJA 6</h1><img src="slike/bmw6.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="7" ><h1 align="center">BMW SERIJA 7</h1><img src="slike/bmw7.jpg" width="700" height="500"></button>
            </tr>
            <tr>
                    <button class="button" type="submit" name="id" value="8" ><h1 align="center">BMW SERIJA 8</h1><img src="slike/bmw8.jpg" width="700" height="500"></button>
            </tr>
            </table>
        </form>
      </body>
</html>

