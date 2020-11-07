<%-- 
    Document   : IzborSerija
    Created on : Jan 29, 2020, 4:39:54 PM
    Author     : POPRASIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
        <h1 align="center">DOBRODOSLI</h1>
             <div class="w3-content w3-section" style="width:100%">
                 
  <img class="mySlides w3-animate-fading" src="slike/c.jpg" style="width:100%">
 
 
                 </div>
<h1 align="center">IZABERITE SERIJU</h1>
            <script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 9000);    
}
</script>
        <form align="center" action="Izbor" method="POST">
       
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
