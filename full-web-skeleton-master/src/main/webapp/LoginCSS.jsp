<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 04.10.2020
  Time: 16.59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <title>LoginCss</title>
</head>
<body>
<style>
    @import"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
    *{
        margin:0;
        padding: 0;
        font-family: sans-serif;


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
        border-bottom: 6px solid yellow;
        margin-bottom: 50px;
        padding: 13px 0;
    }
    .textbox{
        width: 100%;
        overflow: hidden;
        font-size: 20px;
        padding: 8px 0;
        margin: 8px 0;
        border-bottom: 1px solid yellow;
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
        background: none;
        border: 2px solid yellow;
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
        border: 2px solid darkgray;
        color: white;
        padding: 5px;
        font-size: 28px;
        cursor: pointer;
        margin: 12px 0;

    }
</style>

</body>
</html>
