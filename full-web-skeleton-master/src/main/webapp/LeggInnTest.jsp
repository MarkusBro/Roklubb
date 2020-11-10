<%--
  Created by IntelliJ IDEA.
  User: nikgus
  Date: 26/10/2020
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: nikgus
  Date: 26/10/2020
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<html>

<title>Start Page</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Testing testing</title>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@include file="cssLoader.jsp" %>

    <title>Profile Card</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>


<body>
<div class="hero">
    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo">

        <button class="button" type="button">
            Min side
        </button>

        <div>
            <button class="buttonBack2" onclick="location.href='MinSide.jsp'" type="button"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
            </svg>  Tilbake
            </button>
        </div>

        <div class="card-container2"></div>
        <table style="width: 920px;" id="results">
            <tr>
                <th>Fornavn</th>
                <th>Etternavn</th>
                <th>5000m(tid)</th>
                <th>5000m(watt)</th>
                <th>2000m(tid)</th>
                <th>2000m(watt)</th>
                <th>60m(watt</th>
                <th>Ligg.ro(prosent)</th>
                <th>Ligg.ro(kg)</th>
                <th>Squat(prosent)</th>
                <th>Squat(kg)</th>
                <th>Bevegelighet</th>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>

            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
            <tr>
                <td>Ola</td>
                <td>Nordmann</td>
                <td>a</td>
                <td>b</td>
                <td>c</td>
                <td>d</td>
                <td>e</td>
                <td>f</td>
            </tr>
        </table>


        <div class="card-container">
            <div class="upper-container">
                <br />
                <br />
                <br />
                <div>
                    <p><u><h2>Legg til utøvere</h2></u></p>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div>
                    <h3>Trykk på "legg til utøvere" <br /> for å legge til en eller flere utøvere</h3>
                </div>

                <button class="button2" onclick="location.href='LeggTil'" type="button">  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                </svg>  Legg til utøvere</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>


<style>
    body{
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        background: #f1f1f1;
    }
    .card-container{
        width: 300px;
        height: 500px;
        background: #FFF;
        border-radius: 6px;
        position: absolute;
        top: 50%;
        left: 10%;
        transform: translate(-50%,-50%);
        box-shadow: 0px 1px 10px 1px #000;
        overflow: hidden;
        display: inline-block;
    }
    .card-container2{
        width: 950px;
        height: 500px;
        background: #FFF;
        border-radius: 6px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        box-shadow: 0px 1px 10px 1px #000;
        overflow: hidden;
        display: inline-block;
    }
    .upper-container{
        height: 40px;
        background: #FFFF00;
    }
    .card-container .button2{
        padding: 20px 35px;
        background: #000000 ;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 15px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        top: 350px;
        left: 50px;

    }
    .card-container .button2:hover{
        background: transparent;
        color: black;
        border: 2px solid #000000 ;
    }
    .buttonBack2{
        padding: 20px 35px;
        background: #000000 ;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 15px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        top: 90%;
        left: 10%;
    }
    .buttonBack2:hover{
        background: #000000;
        color: white;
        border: 2px solid #000000 ;
    }
    .card-container h2{
        font-family: Arial, Helvetica, sans-serif;
        font-size: 25px;
        font-weight: bold;
        color: black;
        position: absolute;
        top: 10%;
        left: 18%;
    }
    .card-container h3{
        font-family: Arial, Helvetica, sans-serif;
        font-size: 18px;
        font-weight: bold;
        color: black;
        position: absolute;
        top: 35%;
        left: 12%;
    }

    #results {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 1%;
        position: absolute;
        top: 16%;
        left: 18%;
    }

    #results td, #results th, #results input {
        border: 1px solid #ddd;
        padding: 2px;
        width: 100px;
        white-space: nowrap;
    }

    #results tr:nth-child(even){background-color: #f2f2f2;}

    #results tr:hover {background-color: #ddd;}

    #results th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: yellow;
        color: black;
    }

</style>