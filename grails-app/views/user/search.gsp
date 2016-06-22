<%--
  Created by IntelliJ IDEA.
  User: shashank
  Date: 20/06/16
  Time: 1:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="abc" />
</head>

<body>
    <g:form action="test" method="post" class="form-inline">
        <div class="form-group">
            <label class="control-label"> Email</label>
            <input type="text" name="email" class="form-control" />
        </div>

        <div class="form-group">
            <label class="control-label">Name</label>
            <input type="text" name="name" class="form-control"/>
        </div>

        <div class="form-group">
            <label class="control-label">Age</label>
            <input type="text" name="age" class="form-control"/>
        </div>

        <button class="btn btn-primary" type="submit">Submit</button>
    </g:form>

    <g:if test="${persons}">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${persons}" var="personInstance">
                    <tr>
                        <td>${personInstance.firstName}</td>
                        <td>${personInstance.lastName}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </g:if>
</body>
</html>