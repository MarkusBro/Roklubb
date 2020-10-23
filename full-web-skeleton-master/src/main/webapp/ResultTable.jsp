<%@ page import="models.ResultModel" %>
<%@ page import="java.util.List" %>
<%@ page import="tools.repository.UserRepository" %>
<%@ page import="models.ResultModel" %>
<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 23.10.2020
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />

    <!--- Linker til styles.css --->
    <link rel="stylesheet" href="styles.css">

</head>

<body class="Table">

<h1>TableTest</h1>

    <table id="ResultTable" class="table table-striped table-bordered" style="width:100%" align="table" >
        <!--- Innholdet over table --->
        <thead>
            <tr>
                <th>Navn</th>
                <th>Etternavn</th>
                <th>Dato</th>
            </tr>
        </thead>

        <!--- Innholdet under table --->
        <tfoot>
            <tr>
                <th>Navn</th>
                <th>Etternavn</th>
                <th>Dato</th>
            </tr>
        </tfoot>

        <!--- Innholdet i table --->
        <tbody>
            <tr>
                <td><%= request.getAttribute("fname")%></td>
                <td><%= request.getAttribute("lname")%></td>
                <td><%= request.getAttribute("dob")%></td>
            </tr>


            <%
                List<ResultModel> result = UserRepository.getResult();

                for (ResultModel model : result) {
            %>

            <tr>
                <td><%=model.getFname()%></td>
                <td><%=model.getLname()%></td>
                <td><%=model.getDob()%> </td>
            </tr>

            <%
                }
            %>


        </tbody>
    </table>
</body>

<!--- Script som kjører DataTable / tableTest er table.id --->
<script type="text/javascript" class="js">
    $(document).ready( function () {
        $('#ResultTable').DataTable();

    } );
</script>

<!--- CSS delen av table --->
<style>
    .Table {
        margin-left: 15%;
        margin-right: 15%;
    }
</style>

</html>