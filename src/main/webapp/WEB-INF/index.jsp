<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 align="center">Welcome to the PetLister!</h1>
    </div>
<div class="container">
    <div class="row">
        <div class="col-sm-12">

            <div id="my-slider" class="carousel slide" data-ride="carousel">
<%--indicator dots                --%>
                <ol></ol>

            </div>

        </div>

    </div>


</div>


</body>
</html>
