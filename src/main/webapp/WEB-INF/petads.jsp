<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Place A Ad" />
    </jsp:include>
    <link rel="stylesheet" href="../style.css">

</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="form-container container">
    <h1>Please fill in your Ad.</h1>
    <form action="ads/index.jsp" method="post">
        <div class="form-group">
            <label for="title">Title Of Ad</label>
            <input id="title" name="title" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="name">Name Of Pet</label>
            <input id="name" name="name" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="type">Type of Pet</label>
            <input  id="type" name="type" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="breed">Breed Of Pet</label>
            <input id="breed" name="breed" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="gender">Gender Of Pet</label>
            <input id="gender" name="gender" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="age">Age Of Pet</label>
            <input id="age" name="age" class="form-control" type="number"required>
        </div>
        <div class="form-group">
        <label for="description">Description Of Pet</label>
        <input id="description" name="description" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="cost">Cost Of Pet</label>
            <input id="cost" name="cost" class="form-control" type="number"required>
        </div>
        <div class="form-group">
            <label for="traits">Traits Of Pet</label>
            <input id="traits" name="traits" class="form-control" type="text"required>
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>

</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
