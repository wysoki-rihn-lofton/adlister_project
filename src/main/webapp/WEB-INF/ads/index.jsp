<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<div class="col-md-6">--%>
            <%--<h2>${ad.title}</h2>--%>
            <%--<p>${ad.description}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
    <c:forEach var="pet" items="${pets_ad}">
        <div class="col-md-4">
            <h2>${pet.name}</h2>
            <p>${pet.age}</p>
            <p>${pet.gender}</p>
            <p>${pet.breed}</p>
            <p>${pet.descrip}</p>
            <p>${pet.cost}</p>
            <p>${pet.title}</p>
            <p>${pet.traits}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
