<!DOCTYPE html>

<html>
<%if(session.getAttribute("firstname")== null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>
<title>Start Page</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add User Recipt</title>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" REL="stylesheet" TYPE="text/css">
    <%@ page contentType="text/html; charset=UTF-8" %>
</head>


<body>

<div class="hero">
    <div class="navbar">
        <img src="${pageContext.request.contextPath}/assets/img/norges-roforbund-logo.png" class="logo">
        <button class="button" onclick="location.href='myPage.jsp'" type="button"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
            <path d="M6.5 10.995V14.5a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5h-4a.5.5 0 0 1-.5-.5V11c0-.25-.25-.5-.5-.5H7c-.25 0-.5.25-.5.495z"/>
            <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
        </svg> Min side
        </button>
    </div>

    <div class="card-container">
        <div class="upper-container">

            <h1>Brukeren er opprettet!</h1>

            <h2>
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                </svg>
            </h2>
            <button class="buttonClose" onclick="location.href='myPage.jsp'" type="button"> Lukk </button>
        </div>
    </div>
</div>
</body>
</html>

<style>
    body {
        margin: 0px;
        padding: 0px;
        background: #f1f1f1;
        font-family: Arial, Helvetica, sans-serif;
        box-sizing: border-box;
    }

    .card-container {
        width: 900px;
        height: 550px;
        background: #FFF;
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
        height: 70px;
        background: #F1E10B;
    }

    h1 {
        color: black;
        font-size: 45px;
        font-weight: bold;
        position: absolute;
        top: 25%;
        left: 22%;
    }

    h2 {
        color: green;
        font-size: 80px;
        font-weight: bold;
        position: absolute;
        top: 47%;
        left: 45%;
    }

    .buttonClose {
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
        top: 72%;
        left: 43.5%;
    }

    .buttonClose:hover {
        background: #000000;
        color: white;
        border: 2px solid #000000;
    }
</style>
