<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 29.10.2020
  Time: 09.13
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NewUser</title>
    <%@ page contentType="text/html; charset=ISO-8859-1" %>
    <%@include file="cssLoader.jsp" %>

</head>
<body>


<div class="hero">

    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo"
             onclick="location.href='index.jsp'">
    </div>

    <div class="leggTil">
        <h2>Velg utøver:</h2>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Handle</th>
            </tr>
            </thead>
            <tbody>
            <%
            request.getAttribute("liste");
            %>
            <tr>
                <th scope="row">1</th>
                <th scope="row">1</th>
                <th scope="row">1</th>
                <th scope="row">1</th>
            </tbody>
        </table>
        <button class="button1" onclick="location.href='LeggInnTest.jsp'" type="button">

            Legg til utøver
        </button>
    </div>

</div>
</body>
</html>
<style>
    .leggTil {
        background-color: darkgray;
        width: 600px;
        height: 500px;
        box-sizing: border-box;
        position: absolute;
        display: grid;
        place-items: center;
        top: 15%;
        left: 30%;
    }

    .table {
        background-color: #f1f1f1;
        left: 50%;
        width: 500px;
    }

    .button1 {
        padding: 12px 26px;
        background: #000000;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 12px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        top: 90%;
        left: 30px;
    }

    .button1:hover {
        background: transparent;
        color: #000000;
        border: 2px solid #000000;
    }

    .fa fa-user {
        color: black;
    }

</style>