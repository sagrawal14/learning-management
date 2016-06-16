<html>
<head>
    <meta name="layout" content="abc" />
    <asset:stylesheet href="listing-page.css" />
</head>
<body>
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
</body>
</html>