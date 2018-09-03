<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Place A Ad" />
    </jsp:include>

</head>

<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />




<%--<div class="form-container container">--%>


    <form class="form_size" action="/create" method="post">
    <h1 class="text-center">New Listing</h1>

        <div class="form-row">

            <div class="col-lg-6">
                <input placeholder="Title" id="title" name="title" class="form-control" type="text"required>
            </div>

            <div class="col-lg-6">
                <input placeholder="Name" id="name" name="name" class="form-control" type="text"required>
            </div>

            <div class="col-lg-6">
                <select class="form-control" name="type" id="type" required>
                    <option disabled selected value> Type </option>
                    <option value="dog">dog</option>
                    <option value="cat">cat</option>
                    <option value="bird">bird</option>
                    <option value="fish">fish</option>
                    <option value="amphibian">amphibian</option>
                    <option value="reptile">reptile</option>
                    <option value="other">other</option>

                </select>
            </div>

            <div class="col-lg-6">
                <select class="form-control" name="gender" id="gender" required>
                    <option disabled selected value>Gender</option>
                    <option value="female">female</option>
                    <option value="male">male</option>
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
                <input placeholder="Adoption fee" id="cost" name="cost" class="form-control" type="number"required>
            </div>

            <div class="col-lg-12">
            <input placeholder="Traits" id="traits" name="traits" class="form-control" type="text"required>
            </div>
            <div class="col-lg-12">
            <button class="btn btn-primary form-control">Submit</button>
            </div>
        </div>
    </form>
</div>
</div>
</div>


<jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
