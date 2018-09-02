<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Place A Ad" />
    </jsp:include>

</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="form-container container">
    <h1>Please fill in your Ad.</h1>
    <form action="/create" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input id="name" name="name" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="type">Type</label>
                <select class="form-control" name="type" id="type" required>
                    <option disabled selected value> select </option>
                    <option value="dog">dog</option>
                    <option value="cat">cat</option>
                    <option value="bird">bird</option>
                    <option value="fish">fish</option>
                    <option value="amphibian">amphibian</option>
                    <option value="reptile">reptile</option>
                </select>
        </div>
        <div class="form-group">
            <label for="breed">Breed</label>
            <input id="breed" name="breed" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="gender">Gender</label>
            <select class="form-control" name="gender" id="gender" required>
                <option value="female">female</option>
                <option value="male">male</option>
            </select>
        </div>
        <div class="form-group">
            <label for="age">Age</label>
            <input id="age" name="age" class="form-control" type="number"required>
        </div>
        <div class="form-group">
        <label for="description">Description</label>
        <input id="description" name="description" class="form-control" type="text"required>
        </div>
        <div class="form-group">
            <label for="cost">Price</label>
            <input id="cost" name="cost" class="form-control" type="number"required>
        </div>
        <div class="form-group">
            <label for="traits">Traits</label>
            <input id="traits" name="traits" class="form-control" type="text"required>
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>

</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
