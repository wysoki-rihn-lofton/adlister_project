<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>

</head>
<body>
    <%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<div class="container"></div>
   <div class="jumbotron">
        <h1 id="index_header">Welcome to PetLister!</h1>

       <a href="/index">  <button class="btn btn-lg btn-danger homepage-button">Find a pet</button> </a>




       <a href="/create">  <button class="btn btn-lg btn-primary homepage-button">List a pet</button> </a>


        <video playsinline autoplay muted loop poster="polina.jpg" id="bgvid">

            <source src="https://staging.coverr.co/s3/mp4/Puppy.mp4" type="video/mp4">
        </video>
    </div>




    <jsp:include page="/WEB-INF/partials/footer.jsp"/>

</body>
</html>
