<%@ page import="models.UserInfoModel" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 29.10.2020
  Time: 09.13
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <meta charset="ISO-8859-1">
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
        <button class="button" onclick="location.href='MinSide.jsp'" type="button">
            Min side
        </button>
    </div>

    <div>
        <button class="buttonBack" onclick="location.href='MinSide.jsp'" type="button">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
            </svg>
            Tilbake
        </button>
    </div>

    <div class="container">
        <p><u><h2>Velg utøver</h2></u></p>
        <table class="table">
            <thead>
            <tr>
                <th>Fornavn:</th>
                <th>Etternavn:</th>
                <th>Klubb:</th>
                <th>Brukertype:</th>
                <th>Klasse:</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<UserInfoModel> tableModelList = (List<UserInfoModel>) request.getAttribute("userlist");
                for (UserInfoModel model : tableModelList) {
            %>
            <form method="post" action="${pageContext.request.contextPath}/LeggTilBruker">
            <tr>
                <td value="<%=model.getFirstName()%>"><%=model.getFirstName()%>
                </td>
                <input name="firstname" type="hidden" value="<%=model.getFirstName()%>">
                <td name="lastname"><%=model.getLastName()%>
                </td>
                <input name="lastname" type="hidden" value="<%=model.getLastName()%>">
                <td name="club"><%=model.getClub()%>
                </td>
                <td name="usertype"><%=model.getUserType()%>
                </td>
                <td value="classname"><%=model.getClassName()%>
                </td>
                <input name="classname" type="hidden" value="<%=model.getClassName()%>">
                <td><button class="btn btn-info" type="submit">Velg</button></td>
                <input name="id" type="hidden" value="<%=model.getID()%>">
            </tr>
            </form>
            <%
                }
            %>
            </tbody>
        </table>

    </div>

</div>
</body>
</html>

<style>
    .container {
        width: 700px;
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
    .table {
        background-color: #f1f1f1;
        position: absolute;
        top: 15%;
        left: 0%;
    }
    .fa fa-user {
        color: black;
    }
     h2{
        position: absolute;
        top: 5%;
        left: 40%;
    }
    .buttonBack {
        padding: 20px 35px;
        background: #000000;
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

    .buttonBack:hover {
        background: #000000;
        color: white;
        border: 2px solid #000000;
    }

</style>