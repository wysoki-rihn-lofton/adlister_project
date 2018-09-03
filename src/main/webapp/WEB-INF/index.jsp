<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="PetLister" />
    </jsp:include>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<%--<div class="container">--%>
<div id="landing_page">


    <div class="row">
        <div class="col-lg-4">
            <h1>Welcome to PetLister</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A deleniti eaque eveniet ex excepturi                     facere impedit, in, itaque iure maxime minima modi officiis porro qui quis ratione recusandae                       repellat unde!
                </p>
        </div>



<c:if test="${sessionScope.user == null}">
        <div id="landing_form" class="col-lg-6" >
            <form class="form_size" action="/register" method="post">
                    <input placeholder="username" id="username" name="username" class="form-control" type="text">
                    <input placeholder="email" id="email" name="email" class="form-control" type="text">
                    <input placeholder="password" id="password" name="password" class="form-control" type="password">
                    <input placeholder="confirm password" id="confirm_password" name="confirm_password"                                        class="form-control" type="password">
                    <input placeholder="location" id="location" name="location" class="form-control" type="text">

                <button type="submit" class="btn btn-success btn-block">Register</button>



                    <a href="/login">I already have an account</a>
            </form>
            </c:if>



        </div>
    </div>

</div>


<%--</div>--%>
   <%--<div class="jumbotron">--%>

       <%--<a href="/index">  <button class="btn btn-lg btn-danger homepage-button">Find a pet</button> </a>--%>




       <%--<a href="/create">  <button class="btn btn-lg btn-primary homepage-button">List a pet</button> </a>--%>

<%--DO NOT DELETE THIS. I want to play with code later. DONT FORGET ITS ALSO IN SLACK --%>
        <%--<video playsinline autoplay muted loop poster="polina.jpg" id="bgvid">--%>

            <%--<source src="https://staging.coverr.co/s3/mp4/Puppy.mp4" type="video/mp4">--%>
        <%--</video>--%>
    </div>




    <%--<jsp:include page="/WEB-INF/partials/footer.jsp"/>--%>

</body>
</html>
