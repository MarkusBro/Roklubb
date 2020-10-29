<%--
  Created by IntelliJ IDEA.
  User: Eivind Win
  Date: 27.10.2020
  Time: 10:50
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

        <button class="button1" type="button">
            SENIOR-MENN
        </button>

        <button class="button2" type="button">
            A-GUTTER
        </button>

        <button class="button3" type="button">
            B-GUTTER
        </button>

        <button class="button4" type="button">
            SENIOR-DAME
        </button>

        <button class="button5" type="button">
            A-JENTER
        </button>

        <button class="button6" type="button">
            B-JENTER
        </button>

        <button class="button7" type="button">
            C-JENTER
        </button>

        <button class="button8" type="button">
            C-GUTTER
        </button>


        <style>

            .button1{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                border-color: grey;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 40%;
                left: 15%;
                transform: translate(-50%,-50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }

            .button2{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                border-color: grey;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 39%;
                left: 35%;
                transform: translate(-50%,-50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }
            .button3 {
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 40%;
                left: 55%;
                transform: translate(-50%, -50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;

            }
            .button4{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 70%;
                left: 15%;
                transform: translate(-50%,-50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }
            .button5{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 70%;
                left: 35%;
                transform: translate(-50%, -50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }

            .button6{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 70%;
                left: 55%;
                transform: translate(-50%, -50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }
            .button7{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 70%;
                left: 75%;
                transform: translate(-50%, -50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }
            .button8{
                width: 250px;
                height: 200px;
                background: #E6D831;
                border-radius: 6px;
                font-size: 25px;
                color: black;
                font-weight: bold;
                position: absolute;
                top: 40%;
                left: 75%;
                transform: translate(-50%, -50%);
                box-shadow: 0px 1px 10px 1px #000;
                overflow: hidden;
                display: inline-block;
            }
            .button1:hover, .button2:hover, .button3:hover, .button4:hover,
            .button5:hover, .button6:hover, .button7:hover, .button8:hover{
                background: white;
                color: black;
                border: 2px solid black;
            }

        </style>


