<!DOCTYPE html>

<html>


    <title>Start Page</title>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Testing testing</title>
        <%@ page contentType="text/html; charset=UTF-8" %>
        <%@include file="cssLoader.jsp"%>

    </head>
<body>
    <div class="hero">


        <div class="navbar">
            <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo"
                 onclick="location.href='index.jsp'">

            <button class="buttonReg" onclick="location.href='StartSide.jsp'" type="button">
                Registrer deg
            </button>
            <button class="button" onclick="location.href='Login.jsp'" type="button">
                Logg inn</button>
        </div>

        <div class="content">
            <h1>Testresultater</h1>
            <button class="buttonSearch" onclick="location.href='ReceiveUserNameFromDb'" type="button">
                Søk</button>
        </div>
    </div>

</body>
</html>

<style>
    .buttonSearch{
    font-size: 25px;
    color:white;
    padding: 10px 25px;
    background: black;
    border-radius: 20px;
    outline: none;
    cursor: pointer;
    position: absolute;
    left: 50%;
    }
    .buttonSearch:hover {
        background: black;
        color: white;
        border: 2px solid #000000;
    }
    .buttonReg{
        font-size: 25px;
        color:white;
        padding: 10px 25px;
        background: black;
        border-radius: 20px;
        outline: none;
        cursor: pointer;
        position: absolute;
        left: 50%;
    }
    .buttonReg:hover {
        background: black;
        color: white;
        border: 2px solid #000000;
    }
</style>