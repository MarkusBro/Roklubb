<%@ page import="java.util.List" %>
<%@ page import="models.UserInfoModel" %>
<%@ page import="models.ClassResultModel" %>
<%@ page import="tools.repository.ClassRepository" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 23.10.2020
  Time: 10.09
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<%if(session.getAttribute("firstname")== null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>
<meta charset="UTF-8">

<head>
    <title>Datatable test</title>
    <!--- Linker til library --->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" REL="stylesheet" TYPE="text/css">
    <!--- Test om style eller link vil fungere pga JSP --->
</head>

<body>


<div class="navbar">
    <img src="${pageContext.request.contextPath}/assets/img/norges-roforbund-logo.png" class="logo">
    <button class="button" onclick="location.href='myPage.jsp'" type="button">Min side</button>

</div>
<button class="buttonBack" onclick="location.href='classes.jsp'" type="button">
    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor"
         xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd"
              d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
    </svg>
    Tilbake
</button>

</div>
<div class="Table">
    <h1>Velg utøver:</h1>
    <table id="tableTest" class="table table-striped table-bordered" style="width:100%" align="table">
        <!--- Innholdet over table --->
        <thead>
        <tr>
            <th>Fornavn:</th>
            <th>Etternavn:</th>
            <th>Klubb:</th>
            <th>Klasse:</th>
            <th>Brukertype:</th>
            <th>Velg utøver <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
            </svg></th>
        </tr>
        </thead>

        <!--- Innholdet i table --->
        <%
            List<UserInfoModel> tableModelList = (List<UserInfoModel>) request.getAttribute("userlist");
            for (UserInfoModel model : tableModelList) {
        %>

        <form method="post" action="${pageContext.request.contextPath}/AddNewUser">
        <tr style="background-color: white">
            <td><%=model.getFirstName()%></td>

            <td><%=model.getLastName()%> </td>

            <td><%=model.getClub()%> </td>

            <td><%=model.getClassName()%> </td>

            <td><%=model.getUserType()%> </td>
            <td><button class="btn btn-info" type="submit">Velg</button></td>
            <input name="id" type="hidden" value="<%=model.getID()%>">
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>

<!--- Script som kjører DataTable / tableTest er table.id --->
<script type="text/javascript" class="js">
    $(document).ready(function () {
        $('#tableTest').DataTable();
    });
</script>

<style>
    .Table {
        margin-left: 15%;
        margin-right: 15%;

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