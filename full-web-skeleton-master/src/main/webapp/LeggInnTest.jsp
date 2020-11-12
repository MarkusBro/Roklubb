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
            <button class="confirm" onclick="location.href='MinSide.jsp'" type="button"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
                <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
            </svg>  Bekreft
            </button>
        </div>

        <div>
            <button class="buttonBack2" onclick="location.href='MinSide.jsp'" type="button"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
            </svg>  Tilbake
            </button>
        </div>

        <div class="card-container2">

            <table style="columns: 3; width: 80%" id="results">
            <tr>
                <th>Fornavn</th>
                <th>Etternavn</th>
                <th>5000m(tid)</th>
                <th>5000m(watt)</th>
                <th>2000m(tid)</th>
                <th>2000m(watt)</th>
                <th>60m(watt)</th>
                <th>Ligg.ro(%)</th>
                <th>Ligg.ro(kg)</th>
                <th>Squat(%)</th>
                <th>Squat(kg)</th>
                <th>Bevegelighet</th>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>

            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="time" step="1"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
                <td><input type="text"/></td>
            </tr>
        </table>

</body>
</html>


<style>
    body{
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        background: #f1f1f1;
    }

    .card-container2{
        width: 1260px;
        height: 420px;
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

    #results {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 1%;
        position: absolute;
        top: 0%;
        left: 0%;
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
        top: 80%;
        left: 10%;
    }
    .buttonBack2:hover{
        background: #000000;
        color: white;
        border: 2px solid #000000 ;
    }
    .confirm{
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
        top: 80%;
        left: 80%;
    }
    .confirm:hover{
        background: #000000;
        color: white;
        border: 2px solid #000000 ;
    }

</style>
