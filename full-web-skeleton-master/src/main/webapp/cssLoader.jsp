<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 20.09.2020
  Time: 21.18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>cssLoader</title>
    <link href="./resources/css/style.css" REL="stylesheet" TYPE="text/css">
</head>
<body>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .hero {
        background-image: url("${pageContext.request.contextPath}/bilder/bakgrunn1.png ");
        width: 100%;
        height: 100vh;
        background-size: cover;
        background-position: center;
        position: absolute;
        overflow: auto;
        mix-blend-mode: multiply;


    }

    .logo {
        width: 200px;
        cursor: pointer;


    }

    .navbar {
        width: 100%;
        height: 15%;
        margin: auto;
        display: flex;
        align-items: center;
        justify-content: space-between;


    }

    .button {
        font-size: 25px;
        color: rgb(255, 255, 255);
        padding: 10px 25px;
        background: transparent;
        border: 1px solid rgb(255, 255, 255);
        border-radius: 20px;
        outline: none;
        cursor: pointer;
    }

    .button2 {
        font-size: 20px;
        color: rgb(255, 255, 255);
        padding: 10px 25px;
        background: transparent;
        border: 1px solid rgb(255, 255, 255);
        border-radius: 20px;
        outline: none;
        cursor: pointer;
        margin: 10px 0 30px;
    }

    .button1 {
        color: #ffffff;
        padding: 10px 25px;
        background-color: transparent;
        border: 1px solid #ffffff;
        border-radius: 20px;
        outline: none;
        cursor: pointer;
    }

    .content {
        color: aliceblue;
        position: absolute;
        top: 50%;
        left: 25%;
        transform: translateY(-50%);
        z-index: 2;
    }

    h1 {
        font-size: 80px;
        margin: 10px 0 30px;
        line-height: 80px;
    }

</style>
</body>
</html>
