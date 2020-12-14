<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 19.11.2020
  Time: 22.15
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="models.TestBatchModel" %>
<%@ page import="tools.repository.ClassRepository" %>

<html>
<%if(session.getAttribute("firstname")== null){
    response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Test Batch</title>
    <%@ page contentType="text/html; charset=ISO-8859-1" %>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" REL="stylesheet" TYPE="text/css">

</head>
<body>


<div class="hero">

    <div class="navbar">
        <img src="${pageContext.request.contextPath}/assets/img/norges-roforbund-logo.png" class="logo"
             onclick="location.href='index.jsp'">
        <button class="button" onclick="location.href='myPage.jsp'" type="button"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
            <path d="M6.5 10.995V14.5a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5h-4a.5.5 0 0 1-.5-.5V11c0-.25-.25-.5-.5-.5H7c-.25 0-.5.25-.5.495z"/>
            <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
        </svg> Min side
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
        <button class="buttonBack" onclick="location.href='startPage.jsp'" type="button">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-90deg-left" fill="currentColor"
                 xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
            </svg>
            Tilbake
        </button>
    </div>

    <div class="container">
        <p><u><h2>Velg test eller legg inn en ny test</h2></u></p>
        <div class="testdato">
            <form method="post" action="${pageContext.request.contextPath}/newtestbatch">
                <label>
                    <input name=date type="datetime-local">
                </label>
                <input type="submit" value="Legg til test">
            </form>
        </div>

        <div id="table-wrapper">
            <div id="table-scroll">

                    <table>
                        <thead>
                        <tr>
                            <td>Testdato</td>
                            <td>Nummer</td>
                            <td>Velg Test</td>
                        </tr>
                        </thead>
                        <%
                            List<TestBatchModel> testBatchModels = ClassRepository.getTestBatch();
                            for (TestBatchModel model : testBatchModels) {
                        %>
                        <form action="${pageContext.request.contextPath}/addtestbatch" method="post">
                        <tr>
                            <input name="id" type="hidden" value="<%=model.getId()%>">
                            <td><%=model.getTestdate()%>
                            </td>
                            <td><%=model.getId()%>
                            </td>
                            <td><button class="btn btn-info" type="submit">Velg</button></td>
                        </tr>
                        </form>
                        <%
                            }
                        %>

                    </table>

            </div>
        </div>

    </div>
</div>
</body>
</html>

<style>
    .container {
        width: 600px;
        height: 500px;
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

    .testdato {
        position: absolute;
        top: 15%;
        left: 5%;
    }

    #table-wrapper {
        position: relative;
        top: 25%;
        left: 2%;
    }

    #table-scroll {
        height: 300px;
        overflow: auto;
        margin-top: 20px;
    }

    #table-wrapper table {
        width: 100%;


    }

    #table-wrapper table * {
        color: black;
        border: 2px solid black;

    }

    #table-wrapper table thead th .text {
        position: absolute;
        top: -20px;
        z-index: 2;
        height: 50px;
        width: 35%;

    }

    .fa fa-user {
        color: black;
    }

    h2 {
        position: absolute;
        top: 5%;
        left: 10%;
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
