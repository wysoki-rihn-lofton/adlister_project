<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>

</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <form class="form_size" action="/register" method="post">
        <h1 class="text-center">Register</h1>
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <%--<div class="form-group">--%>
                <%--<label for="location">Location</label>--%>
                <%--<input id="location" name="location" class="form-control" type="text">--%>
            <%--</div>--%>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>

    <jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
