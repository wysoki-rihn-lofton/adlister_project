<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1 class="text-center">Welcome, ${sessionScope.user.username}!</h1>
        <div class="row">
    <c:forEach var="pet" items="${pets}">

            <div class="col-lg-6 col-sm-12">


        <div class="card">
            <div class="card-body">
                <div class="card-header"><h3>${pet.title}</h3>
            <p class="card-text">Description: ${pet.description}</p>
            <p class="card-text">Name: ${pet.name}</p>
            <p class="card-text">Cost: $${pet.cost}</p>
            <p class="card-text">Gender: ${pet.gender}</p>
            <p class="card-text">Age: ${pet.age}</p>
            <p class="card-text">Traits: ${pet.traits}</p>
            <p class="card-text">Type: ${pet.type}</p>

        <form method="post" action="/delete" >
            <input type="hidden" name="id" value="${pet.id}">
            <button type="submit" class="btn btn-primary">
                Delete
            </button>
        </form>
                </div>
            </div>
        </div>
            </div>
    </c:forEach>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
            </div>
</body>
</html>
