<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 29.10.2020
  Time: 09.13
  To change this template use File | Settings | File Templates.
--%>


<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NewUser</title>
    <%@include file="cssLoader.jsp" %>
</head>
<body>


<div class="hero">


    <div class="navbar">
        <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo"
             onclick="location.href='index.jsp'">
    </div>

    <div>
        <button class="buttonBack" onclick="location.href='MinSide.jsp'" type="button">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor"
                 xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
            </svg>
            Tilbake
        </button>
    </div>
    <div class="newUser">

        <form action="${pageContext.request.contextPath}/AddUser" method="POST">
            <h3>Legg til ny bruker</h3>
            <div class="textbox">
                <input type="text" placeholder="Email" name="email" value="">
                <input type="password" placeholder="Passord" name="passord" value ="">
                <input type="text" placeholder="Fornavn" name="fname" value="">
                <input type="text" placeholder="Etternavn" name="lname" value="">
                <input type="date" placeholder="Fødselsdato" name="dob" value="">
                <textarea id="bio" name="bio" rows="4" cols="50"placeholder="Bio"></textarea>
                <input class="btn btn-primary" type="submit" name="" value="Legg til bruker">
            </div>

        </form>
    </div>


</div>
<style>
    .newUser{
        background-color: darkgray;
        width: 500px;
        height: 300px;
        box-sizing: border-box;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        color:white;;
    }
    .textbox{
        justify-content: space-between;
    }
    input {
        padding-bottom: 25px;
        width: 200px;
    }

    input[type=text] {
        border: 2px solid darkgrey;
        border-radius: 10px;
    }
    input[type=date]{
        border: 2px solid darkgrey;
        border-radius: 10px;
    }
    input[type=password]{
        border: 2px solid darkgrey;
        border-radius: 10px;
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
</body>
</html>
