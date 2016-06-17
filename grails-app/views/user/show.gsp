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
    <g:if test="${recentuser}">
        <dl class="dl-horizontal">
            <dt>ID:</dt> <dd>${recentuser.id}</dd>
            <dt>Version:</dt> <dd>${recentuser.version}</dd>
            <dt>First Name:</dt> <dd>${recentuser.firstName}</dd>
            <dt>Last Name:</dt> <dd>${recentuser.lastName}</dd>
            <dt>Email:</dt> <dd>${recentuser.email}</dd>
            <dt>Age:</dt> <dd>${recentuser.age}</dd>
        </dl>
    </g:if>
    <g:else>
        Oops! No user received
    </g:else>

</body>
</html>