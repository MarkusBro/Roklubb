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

</style>