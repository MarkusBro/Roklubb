<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 03.10.2020
  Time: 20.07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>

<html>

<title>Start Page</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Testing testing</title>
    <%@include file="LoginCSS.jsp" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>


<div class="hero">


    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo"
             onclick="location.href='index.jsp'">
    </div>


    <div class="login-box">
        <% if(request.getAttribute("error") != null) {
            out.println("<div class='alert alert-danger'>" + request.getAttribute("error") + "</div>");
        } %>


        <form action="${pageContext.request.contextPath}/Login" method="POST">
            <h1>Logg inn</h1>
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="Brukernavn" name="name" value="">

            </div>
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" placeholder="Password" name="password" value="">

            </div>
            <input class="btn btn-primary" type="submit" name="" value="Logg inn">
        </form>
    </div>


</div>

</body>
</html>

