<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Place A Ad" />
    </jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please fill in your Ad.</h1>
    <form action="/petads" method="post">
        <div class="form-group">
            <label for="name">Name Of Pet</label>
            <input id="name" name="name" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="type">Type of Pet</label>
            <input  id="type" name="type" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="breed">Breed Of Pet</label>
            <input id="breed" name="breed" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="gender">Gender Of Pet</label>
            <input id="gender" name="gender" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="age">Age Of Pet</label>
            <input id="age" name="age" class="form-control" type="number">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>
