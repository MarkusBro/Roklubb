<%--
  Created by IntelliJ IDEA.
  User: Markus Brødsjø
  Date: 23.09.2020
  Time: 15.08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="./cssLoader.jsp"></jsp:include>
<div class="navbar">
    <img src="${pageContext.request.contextPath}/bilder/norges-roforbund-logo.png" class="logo">
    <button class="button2">Registrer deg</button>
    <button class="button" onclick="location.href='Login.jsp'" type="button">
        Logg inn</button>
</div>
<div class="content">
    <small>Ny startside for testresultater</small>
    <h1>Testresultater</h1>
    <button class="button" onclick="location.href='search.jsp'" type="button">
        Søk</button>
</div>
</div>
