<%--
  Created by IntelliJ IDEA.
  User: shashank
  Date: 14/06/16
  Time: 11:33 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="abc" />
</head>

<body>
    <dl class="dl-horizontal">
        <dt>First Name:</dt> <dd>${recentuser.myFirstName}</dd>
        <dt>Last Name:</dt> <dd>${recentuser.myLastName}</dd>
        <dt>Email:</dt> <dd>${recentuser.myEmail}</dd>
        <dt>Age:</dt> <dd>${recentuser.myAge}</dd>
    </dl>

</body>
</html>