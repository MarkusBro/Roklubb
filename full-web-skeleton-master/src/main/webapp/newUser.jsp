<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 29.10.2020
  Time: 09.13
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>New User</title>
    <%@ page contentType="text/html; charset=ISO-8859-1" %>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" REL="stylesheet" TYPE="text/css">

</head>
<body>


<div class="hero">

    <div class="navbar">
        <img src="${pageContext.request.contextPath}/assets/img/norges-roforbund-logo.png" class="logo"
             onclick="location.href='index.jsp'">
        <button class="button" onclick="location.href='myPage.jsp'" type="button">
            Min side
        </button>

        <form action="${pageContext.request.contextPath}/LogOutServlet" method="post">
            <button class="LogOut" type="submit"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-power" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M5.578 4.437a5 5 0 1 0 4.922.044l.5-.866a6 6 0 1 1-5.908-.053l.486.875z"/>
                <path fill-rule="evenodd" d="M7.5 8V1h1v7h-1z"/>
            </svg>
                Logg ut
            </button>
        </form>
    </div>

    <div>
        <button class="buttonBack2" onclick="location.href='myPage.jsp'" type="button">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor"
                 xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
            </svg>
            Tilbake
        </button>
    </div>

    <div class="newUser">
        <div class="upper-container">
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <form action="${pageContext.request.contextPath}/NewUser" method="POST">
                <br/>
                <p><u><h2>Legg til ny bruker</h2></u></p>
                <br/>
                <br/>
                <br/>
                <div class="textbox">
                    <input type="text" placeholder="Email" name="email" value="">
                    <input type="text" placeholder="Fornavn" name="fname" value="">
                    <input type="text" placeholder="Etternavn" name="lname" value="">
                    <input type="date" placeholder="Fødselsdato" name="dob" value="">
                    <input type="text" placeholder="Klubb" name="club" value="">
                    <input type="password" placeholder="Passord" name="passord" value="">
                    <br/>
                    <label for="usertype">Velg din brukertype:</label>
                    <select charset="UTF-8" name="usertype" id="usertype">
                        <option value="Utøver">Utøver</option>
                        <option value="Trener">Trener</option>
                        <option value="Admin">Admin</option>
                    </select>
                    <br/>
                    <br/>
                    <label for="klasse">Velg din klasse:</label>
                    <select name="class" id="klasse">
                        <option name="Senior Mann" value="Senior mann">Senior Mann</option>
                        <option value="Senior dame">Senior Dame</option>
                        <option value="A gutter">Junior A Gutter</option>
                        <option value="A jenter">Junior A Jenter</option>
                        <option value="B gutter">Junior B Gutter</option>
                        <option value="B jenter">Junior B Jenter</option>
                        <option value="C gutter">Junior C Gutter</option>
                        <option value="C jenter">Junior C Jenter</option>
                    </select>
                    <br/>
                    <textarea id="bio" name="bio" rows="4" cols="46" placeholder="Bio (Maks 200 tegn)"
                              maxlength="200"></textarea>
                    <input class="btn btn-primary" type="submit" name="" value="Legg til bruker">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<style>

    h2 {
        position: absolute;
        top: 7%;
        left: 28%;
    }

    .newUser {
        width: 400px;
        height: 600px;
        background: white;
        border-radius: 6px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        box-shadow: 0px 1px 10px 1px #000;
        overflow: hidden;
        display: inline-block;
    }

    .upper-container {
        height: 40px;
        background: #F1E10B;
    }

    textarea {
        position: absolute;
        top: 78%;
        left: 1.5%;
    }

    .textbox {
        justify-content: space-between;
        font-weight: bold;
        position: absolute;
        top: 20%;
    }

    input {
        padding-bottom: 20px;
        width: 200px;
    }

    input[name=email] {
        border: 2px solid darkgrey;
        border-radius: 10px;
        width: 90%;
        position: absolute;
        top: 14%;
        left: 5%;
    }

    input[name=passord] {
        border: 2px solid darkgrey;
        border-radius: 10px;
        width: 90%;
        position: absolute;
        top: 55%;
        left: 5%;
    }

    input[name=dob] {
        border: 2px solid darkgrey;
        border-radius: 10px;
        width: 90%;
        position: absolute;
        top: 38%;
        left: 5%;
    }

    input[name=fname] {
        border: 2px solid darkgrey;
        border-radius: 10px;
        width: 90%;
        position: absolute;
        top: 22%;
        left: 5%;
    }

    input[name=lname] {
        border: 2px solid darkgrey;
        border-radius: 10px;
        width: 90%;
        position: absolute;
        top: 30%;
        left: 5%;
    }

    input[name=club] {
        border: 2px solid darkgrey;
        border-radius: 10px;
        width: 90%;
        position: absolute;
        top: 47%;
        left: 5%;
    }

    input[type=submit] {
        position: absolute;
        top: 89%;
        left: 25%;
        padding: 15px 35px;
        background: #000000;
        border: none;
        color: white;
        border-radius: 30px;
        font-size: 15px;
        text-decoration: none;
        font-weight: bold;
        transition: all .3s ease-in;
    }

    input[type=submit]:hover {
        background: transparent;
        color: black;
        border: 2px solid #000000;
    }

    .buttonBack2 {
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
        left: 15%;
    }

    .buttonBack2:hover {
        background: #000000;
        color: white;
        border: 2px solid #000000;
    }
</style>