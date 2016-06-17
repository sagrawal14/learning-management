<html>
<head>
    <meta name="layout" content="abc" />
    <asset:stylesheet href="listing-page.css" />
</head>
<body>
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Age</th>
            </tr>
            <g:each var="user" in="${allCreatedUsers}">
                    <tr class="${user.age > 100 ? 'bg-danger': ''}">
                        <td>${user.id}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>(${user.age})</td>
                    </tr>
            </g:each>
        </table>
</body>
</html>