<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <c:if test="${sessionScope.user == null}">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home</a>
                </li>

            </c:if>

            <li class="nav-item active">
                <a class="nav-link" href="/index">View Pets</a>
            </li>

<%--This logic shows custom navbar only if user is logged in            --%>
            <c:if test="${sessionScope.user != null}">

                <li class="nav-item active">
                    <a class="nav-link" href="/profile">My Profile</a>
                </li>


                <li class="nav-item active">
                    <a class="nav-link" href="/create">List-a-Pet</a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </c:if>

<%--This logic shows custom navbar design when user is logged out            --%>

            <c:if test="${sessionScope.user == null}">
                <li class="nav-item active">
                    <a class="nav-link" href="/login">Login</a>
                </li>

                <%--<li class="nav-item active">--%>
                    <%--<a class="nav-link" href="/register">Register</a>--%>
                <%--</li>--%>
            </ul>

            </c:if>



    </div>
</nav>