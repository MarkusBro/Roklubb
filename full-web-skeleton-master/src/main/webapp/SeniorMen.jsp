<%@ page import="java.util.List" %>
<%@ page import="models.UserInfoModel" %>
<%@ page import="models.ClassResultatsModel" %>
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
<meta charset="UTF-8">

<head>
    <title>Datatable test</title>
    <!--- Linker til library --->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>

    <!--- Linker til styles.css --->
    <link rel="stylesheet" href="styles.css">

    <!--- Test om style eller link vil fungere pga JSP --->
    <jsp:include page="./cssLoader.jsp"></jsp:include>
    <style>
        .Table {
            position: absolute;
            top: 15%;
            margin-left: 15%;
            margin-right: 15%;
            background-color: #f1f1f1;
        }


    </style>

</head>
<body>

<div class="hero">
<div class="navbar">
    <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo">
    <button class="button" onclick="location.href='MyPage.jsp'" type="button">Min side</button>

</div>
<button class="buttonBack" onclick="location.href='Classes.jsp'" type="button">
    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor"
         xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd"
              d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
    </svg>
    Tilbake
</button>

<div class="box"></div>
<div class="Table">

    <table id="tableTest" class="table table-striped table-bordered" style="width:100%" align="table">
        <!--- Innholdet over table --->
        <thead>
        <tr>
            <th>Rank</th>
            <th>Score</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Club</th>
            <th>Startdate</th>
            <th>5000m watt</th>
            <th>5000m tid</th>
            <th>2000m watt</th>
            <th>2000m tid</th>
            <th>60" watt</th>

        </tr>
        </thead>

        <!--- Innholdet under table --->

        <!--- Innholdet i table --->
        <%
            List<ClassResultatsModel> tableModelList = (List<ClassResultatsModel>) request.getAttribute("List");
            for (ClassResultatsModel model : tableModelList) {
        %>

        <tr style="background-color: white">
            <td><%=model.getRank()%>
            </td>
            <td><%=model.getScore()%>
            </td>
            <td><%=model.getFname()%>
            </td>
            <td><%=model.getLname()%>
            </td>
            <td><%=model.getClubname()%>
            </td>
            <td><%=model.getStartdate()%>
            </td>
            <td><%=model.getWatt5()%>
            </td>
            <td><%=model.getTime5()%>
            </td>
            <td><%=model.getWatt2()%>
            </td>
            <td><%=model.getTime2()%>
            </td>
            <td><%=model.getWatt60()%>
            </td>

        </tr>

        <%
            }
        %>

    </table>


</div>
</div>
</body>

<!--- Script som kjører DataTable / tableTest er table.id --->
<script type="text/javascript" class="js">
    $(document).ready(function () {
        $('#tableTest').DataTable();
    });
</script>
</html>

<style>
    .box{
        position: absolute;
        top: 15%;
        left: 15%;
        background-color: #f1f1f1;
        padding: 250px;
        width: 300px;
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