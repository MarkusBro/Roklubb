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
            margin-left: 15%;
            margin-right: 15%;

        }


    </style>

</head>
<body>


<div class="navbar">
    <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo">
    <button class="button">Min side</button>

</div>
<div class="Table">
    <h1>Senior menn</h1>
    <table id="tableTest" class="table table-striped table-bordered" style="width:100%" align="table">
        <!--- Innholdet over table --->
        <thead>
        <tr>
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
</body>

<!--- Script som kjører DataTable / tableTest er table.id --->
<script type="text/javascript" class="js">
    $(document).ready(function () {
        $('#tableTest').DataTable();
    });
</script>


</html>