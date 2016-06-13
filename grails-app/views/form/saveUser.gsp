
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    Thank you for sign up. Your details are as follow:<br>

    <g:if test="${recentlySavedUser.myFirstName}">
        First Name: ${recentlySavedUser.myFirstName}<br>
    </g:if>
    <g:elseif test="${recentlySavedUser.myFirstName == 'xyz'}">
        Invalid first name received<br>
    </g:elseif>
    <g:else>
        First Name: No first name entered<br>
    </g:else>

    Last Name: ${recentlySavedUser.myLastName}<br>
    Email: ${recentlySavedUser.myEmail}<br>
    Email: ${recentlySavedUser.myAge}<br>
    Message: ${recentlySavedUser.doSomething()}

    <h1>All others users</h1>

    <g:each in="${users}" var="xyz">
        ${xyz.myFirstName} ${xyz.myLastName} (${xyz.myAge})<br>
    </g:each>
</body>
</html>