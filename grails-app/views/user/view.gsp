<%--
  Created by IntelliJ IDEA.
  User: shashank
  Date: 14/06/16
  Time: 11:33 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.min.css"/>
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                </button>
                <a class="navbar-brand" href="#">Learning Mangement</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <g:link controller="user" action="createform">Create</g:link>
                    </li>
                    <li>
                        <g:link controller="user" action="view">Show</g:link>
                    </li>
                    <li>
                        <g:link controller="user" action="list">List</g:link>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <dl class="dl-horizontal">
        <dt>First Name:</dt> <dd>${recentuser.myFirstName}</dd>
        <dt>Last Name:</dt> <dd>${recentuser.myLastName}</dd>
        <dt>Email:</dt> <dd>${recentuser.myEmail}</dd>
        <dt>Age:</dt> <dd>${recentuser.myAge}</dd>
    </dl>

</body>
</html>