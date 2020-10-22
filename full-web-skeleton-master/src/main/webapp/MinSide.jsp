<!DOCTYPE html>

<html>


<title>Start Page</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Testing testing</title>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@include file="cssLoader.jsp" %>
</head>

<div class="hero">


    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo">


        <button class="button" type="button">
            Min side
        </button>

        <head>
            <title>Profile Card</title>
            <link rel="stylesheet" type="text/css" href="style.css">
        </head>
        <body>
        <div class="card-container">
            <div class="upper-container">
                <div class="image-container">
                    <img src="${pageContext.request.contextPath}/bilder/profilePic.jpg" />
                </div>
            </div>
            <div class="lower-container">
                <div>
                    <h3>Ola Nordmann</h3>
                    <br />
                    <h4>(Trener)</h4>
                    <br />
                    <h5>Klubb: Kristiansand roklubb</h5>
                </div>
                <div>
                    <p>Hva skal vi ha på høyre siden her? >
                    </p>
                </div>
                <div>
                    <br />
                    <br />
                    <a href="#" class="btn"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                    </svg> Rediger profil</a>
                    <br />
                    <br />
                    <br />
                    <a href="#" class="btn2"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gear-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 0 0-5.86 2.929 2.929 0 0 0 0 5.858z"/>
                    </svg>  Innstillinger</a>
                </div>
            </div>
        </div>
        </body>
</html>

<style>
    body{
        margin: 0px;
        padding: 0px;
        background: #f1f1f1;
        font-family: arial;
        box-sizing: border-box;
    }
    .card-container{
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
    .upper-container{
        height: 150px;
        background: #FFFF00;
    }
    .image-container{
        background: white;
        width: 80px;
        height: 80px;
        border-radius: 50%;
        padding: 5px;
        transform: translate(100px,100px);
    }
    .image-container img{
        width: 80px;
        height: 80px;
        border-radius: 50%;
    }
    .lower-container{
        height: 280px;
        background: #FFF;
        padding: 20px;
        padding-top: 40px;
        text-align: center;
    }
    .lower-container h3, h4{
        box-sizing: border-box;
        line-height: .6;
        transform: translate(-207px,10px);
    }
    .lower-container h4{
        color: #000000;
        font-weight: bold;
        transform: translate(-207px,03px);
    }
    .lower-container h5{
        color: #000000 ;
        font-size: 16px;
        font-weight: bold;
        font-weight: lighter;
        transform: translate(-207px,10px);
    }
    .lower-container p{
        font-size: 16px;
        color: gray;
        margin-bottom: 30px;
    }
    .lower-container .btn{
        padding: 12px 20px;
        background: #000000;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 12px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        left: 85px;
    }
    .lower-container .btn:hover{
        background: transparent;
        color: #000000;
        border: 2px solid #000000;
    }
    .lower-container .btn2{
        padding: 12px 26px;
        background: #000000 ;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 12px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
        position: absolute;
        left: 85px;

    }
    .lower-container .btn2:hover{
        background: transparent;
        color: #000000 ;
        border: 2px solid #000000 ;
    }

</style>