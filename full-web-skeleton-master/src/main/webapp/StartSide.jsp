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

</head>
<body>
<div class="hero">


    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo">


        <button class="button" onclick="location.href='MinSide.jsp'" type="button">
            Min side
        </button>
    </div>

    <div class="container1">
        <h1>Testresultater</h1>
        <button class="button1" onclick="location.href='Klasser.jsp'" type="button"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
            <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
        </svg>
            Søk
        </button>
    </div>

    <div class="container2">
        <h2>Registrer testresultater</h2>
        <button class="button2" onclick="location.href='AddUser'" type=button"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
        </svg>
            Registrer
        </button>
    </div>
</div>
</body>
</html>

<style>
    .container1{
        width: 350px;
        height: 200px;
        background: #F1E10B;
        border-radius: 6px;
        position: absolute;
        top: 50%;
        left: 35%;
        transform: translate(-50%, -50%);
        box-shadow: 0px 1px 10px 1px #000;
        overflow: hidden;
        display: inline-block;

    }
    .container2{
        width: 350px;
        height: 200px;
        background: #F1E10B;
        border-radius: 6px;
        position: absolute;
        top: 50%;
        left: 65%;
        transform: translate(-50%, -50%);
        box-shadow: 0px 1px 10px 1px #000;
        overflow: hidden;
        display: inline-block;
    }
   .container1 .button1{
        padding: 20px 60px;
        background: #000000;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 12px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        top: 50%;
        left: 30%;

    }
    .button1:hover {
        background: white;
        color: #000000;
        border: 2px solid #000000;
    }
    .container2 .button2{
        padding: 20px 60px;
        background: #000000;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 12px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        top: 45%;
        left: 25%;
    }
    .button2:hover {
        background: white;
        color: #000000;
        border: 2px solid #000000;
    }
    h1{
        font-size: 25px;
        position: absolute;
        top: 1%;
        left: 30%;
        color: black;


    }
    h2{
        font-size: 25px;
        position: absolute;
        top: 15%;
        left: 18%;
        color: black;
    }
</style>
