<%@ page import="models.UserInfoModel" %>
<%@ page import="java.util.List" %>
<%@ page import="tools.repository.ClassRepository" %><%--
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
    </div>

    <div class="container leggTil">
        <h2>Velg utøver:</h2>
        <table class="table">
            <thead>
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Club</th>
                <th>Usertype</th>
                <th>Go to user</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<UserInfoModel> tableModelList = (List<UserInfoModel>) request.getAttribute("userlist");
                for (UserInfoModel model : tableModelList) {
            %>
            <form method="post" action="/LeggTilBruker">
            <tr>
                <td name="firstname"><%=model.getFirstName()%>
                </td>
                <td name="lastname"><%=model.getLastName()%>
                </td>
                <td name="club"><%=model.getClub()%>
                </td>
                <td name="usertype"><%=model.getUserType()%>
                </td>
                <td name="classname"><%=model.getClassName()%>
                </td>
                <td><button class="btn btn-info" type="submit">Got to user</button></td>
                <input name="id" type="hidden" value="<%=model.getID()%>">
            </tr>
            </form>
            <%
                }
            %>
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
        box-sizing: border-box;
        position: absolute;
        display: grid;
        place-items: center;
        top: 15%;

    }

    .table {
        background-color: #f1f1f1;
        width: 50%;
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