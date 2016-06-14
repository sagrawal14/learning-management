<%--
  Created by IntelliJ IDEA.
  User: shashank
  Date: 14/06/16
  Time: 11:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    <g:form method="post" controller="user" action="save">
        <g:textField name="firstname" placeholder="First Name">
        </g:textField>

        <g:textField name="lastname" placeholder="Last Name">
        </g:textField>

        <g:textField name="email" placeholder="Email">
        </g:textField>

        <g:textField name="age" placeholder="Ageœ"></g:textField>

        <g:submitButton name="submit"></g:submitButton>
    </g:form>
</body>
</html>