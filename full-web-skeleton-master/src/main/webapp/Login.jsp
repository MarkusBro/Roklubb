<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 03.10.2020
  Time: 20.07
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>

<html>

<title>Start Page</title>
<head>
    <meta charset="UTF-8">
    <%@include file="cssLoader.jsp" %>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Testing testing</title>
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

<style>
    @import"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
    *{
        margin:0;
        padding: 0;
        font-family: sans-serif;
    }
    .navbar{
        position: absolute;
        left: 1.5%;
    }
    .login-box{
        width: 280px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        color: white;
    }
    .login-box h1{

        float: left;
        font-size:40px;
        border-bottom: 6px solid #F1E10B;
        margin-bottom: 50px;
        padding: 13px 0;
    }
    .textbox{
        width: 100%;
        overflow: hidden;
        font-size: 20px;
        padding: 8px 0;
        margin: 8px 0;
        border-bottom: 1px solid #F1E10B;
    }
    .textbox i{
        width: 26px;
        float: left;
        text-align: center;
    }
    .textbox input{
        border: none;
        outline: none;
        background: none;
        color: white;
        font-size: 18px;
        width: 80%;
        float: left;
        margin:0 10px;
    }
    .btn{
        width: 100%;
        background: black;
        border: 2px solid #F1E10B;
        color: white;
        padding: 5px;
        font-size: 28px;
        cursor: pointer;
        margin: 12px 0;

    }
    .btn:hover, .btn:active{
        animation-delay: 20s;
        width: 100%;
        background: none;
        border: 2px solid #F1E10B;
        color: white;
        padding: 5px;
        font-size: 28px;
        cursor: pointer;
        margin: 12px 0;
    }
</style>

