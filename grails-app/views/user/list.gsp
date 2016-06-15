<html>
<head>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
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
            </div>
        </div><!-- /.container-fluid -->
    </nav>

    <div class="container">
        <table class="table table-bordered">
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Age</th>
            </tr>
            <g:each var="user" in="${allCreatedUsers}">
                    <tr class="${user.myAge > 100 ? 'bg-danger': ''}">
                        <td>${user.myFirstName}</td>
                        <td>${user.myLastName}</td>
                        <td>(${user.myAge})</td>
                    </tr>
            </g:each>
        </table>
    </div>
</body>
</html>