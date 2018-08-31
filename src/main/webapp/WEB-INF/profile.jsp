<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <c:forEach var="pet" items="${pets}">
        <div class="card">
            <div class="card-header"><h3>${pet.title}</h3></div>
            <div><p>Description: ${pet.description}</p></div>
            <div><p>Pet's name: ${pet.name}</p></div>
            <div><p>Cost: $${pet.cost}</p></div>
            <div><p>Pet's gender: ${pet.gender}</p></div>
            <div><p>Pet's age: ${pet.age}</p></div>
            <div><p>Pet's traits: ${pet.traits}</p></div>
            <div><p>Type of animal: ${pet.type}</p></div>
        </div>
    </c:forEach>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
