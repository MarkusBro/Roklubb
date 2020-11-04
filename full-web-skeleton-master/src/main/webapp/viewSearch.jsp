<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Iterator" %>
<%@page import="servlets.ReceiveUserNameFromDb" %>
<%@ page import="models.UserModel" %>
<%@ page import="models.TableModel" %>
<%@ page import="org.w3c.dom.html.HTMLTableElement" %>
<%@ page import="java.util.List" %>
<%@ page import="tools.repository.UserRepository" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="cssLoader.jsp" %>
<html>
<head>


    <title>tabell</title>
</head>
<body>

<div class="hero">


    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo"
             onclick="location.href='index.jsp'">

    </div>
    <table width="1000px" align="center"
           style="border:2px solid #000000;">
        <tr>
            <td colspan=8 align="center"
                style="background-color:white">
                <b>Testresultater jenterB 2020</b></td>
        </tr>
        <tr style="background-color:white;">

            <td><b>Rank</b></td>
            <td><b>Score</b></td>
            <td><b>Født</b></td>
            <td><b>Navn</b></td>
            <td><b>Klubb</b></td>
            <td><b>2000 meter</b></td>
            <td><b>3000 meter</b></td>
            <td><b>60 meter</b></td>
            <td><b>Krhev</b></td>
            <td><b>Sargeant</b></td>
            <td><b>Beveg</b></td>

        </tr>

    </table>

    <% List<TableModel> list = (ArrayList<TableModel>)request.getAttribute("table");

        for(TableModel Model : list)
        {
            out.print("Rank: " + Model.getRank());
            out.print("<br/>");
            out.print("Name: " + Model.getNavn());
            out.print("<br/>");
            out.print("Født: " + Model.getFødt());

            out.print("<br/>");
            out.print("<br/>");
        }

    %>
</div>

</body>
</html>