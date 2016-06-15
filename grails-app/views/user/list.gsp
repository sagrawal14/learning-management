<html>
<head>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
</head>
<body>
    <g:render template="/templates/myNavbar" model="[myCurrentPage: 'listing', day: 25]"></g:render>

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