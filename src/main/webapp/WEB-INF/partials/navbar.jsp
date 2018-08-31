<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-toggleable-sm bg-info">
    <div class="container-fluid">



        <div class="collapse navbar-collapse" id="mainNav">

            <div class="navbar-nav">

                <ul class="navbar-header">
                    <!--if user logged in, only show -->
                <c:if test="${sessionScope.user != null}">
                    <li><a class="navbar-brand" href="/index">All Ads</a></li>
                    <li><a class="navbar-brand" href="/profile">View Profile</a></li>
                    <li><a class="navbar-brand" href="/create">Create Ad</a></li>
                    <li><a href="/logout">Logout</a></li>
                </c:if>
                    <!--if user not logged in, only show -->
                <c:if test="${sessionScope.user == null}">
                    <li><a class="navbar-brand" href="/index">All Ads</a></li>
                    <li><a class="navbar-brand" href="/register">Register</a></li>
                    <li><a href="/login">Login</a></li>
                </c:if>
                </ul>

        </div>


    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>





