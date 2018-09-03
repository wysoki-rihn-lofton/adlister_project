<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Place A Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<form class="form_size" action="/create" method="post">
    <h1 class="text-center">New Listing</h1>
        <div class="form-row">
            <div class="col-lg-6">
                <input placeholder="Ad Title" id="title" name="title" class="form-control" type="text"required>
            </div>
            <div class="col-lg-6">
                <input placeholder="Name of Pet" id="name" name="name" class="form-control" type="text"required>
            </div>
            <div class="col-lg-6">
                <select class="form-control" name="type" id="type" required>
                    <option disabled selected value> Type </option>
                    <option value="dog">Dog</option>
                    <option value="cat">Cat</option>
                    <option value="bird">Bird</option>
                    <option value="fish">Fish</option>
                    <option value="amphibian">Amphibian</option>
                    <option value="reptile">Reptile</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="col-lg-6 pb-2">
                <select class="form-control" name="gender" id="gender" required>
                    <option disabled selected value>Gender</option>
                    <option value="female">Female</option>
                    <option value="male">Male</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="col-lg-6">
                <input placeholder="Breed" id="breed" name="breed" class="form-control" type="text"required>
            </div>
            <div class="col-lg-6">
                <input placeholder="Age" id="age" name="age" class="form-control" type="number"required>
            </div>

            <div class="col-lg-6">
                <input placeholder="Description" id="description" name="description" class="form-control" type="text"required>
            </div>
            <div class="col-lg-6">
                <input placeholder="Adoption Fee" id="cost" name="cost" class="form-control" type="number"required>
            </div>
            <div class="col-lg-12">
                <input placeholder="Traits" id="traits" name="traits" class="form-control" type="text"required>
            </div>
            <div class="col-lg-12">
                <input type="submit" class="btn btn-primary btn-block">
            </div>
        </div>
</form>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
