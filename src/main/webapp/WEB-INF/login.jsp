<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">

      <div class="row">
          <div  class="col-lg-12">
        <form id="login_form" action="/login" method="POST">
        <h3>Login</h3>
                <input id="username" name="username" class="form-control" type="text"/>
                <input id="password" name="password" class="form-control" type="password">
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
            <a href="/">I am a new user</a>
        </form>
    </div>
      </div>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
