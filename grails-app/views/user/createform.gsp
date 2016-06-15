<%--
  Created by IntelliJ IDEA.
  User: shashank
  Date: 14/06/16
  Time: 11:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.min.css"/>
</head>
<body>
    <g:render template="/templates/myNavbar" model="[myCurrentPage: 'create', day: 26]"></g:render>

    <g:form method="post" controller="user" action="save" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">First Name</label>
            <div class="col-sm-6">
                <g:textField name="firstname" placeholder="First Name" class="form-control"></g:textField>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">First Name</label>
            <div class="col-sm-6">
                <g:textField name="lastname" placeholder="Last Name" class="form-control"></g:textField>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">First Name</label>
            <div class="col-sm-6">
                <g:textField name="email" placeholder="Email" class="form-control"></g:textField>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">First Name</label>
            <div class="col-sm-6">
                <g:textField name="age" placeholder="Age" class="form-control"></g:textField>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-6 col-sm-push-2">
                <g:submitButton name="submit" class="btn btn-primary"></g:submitButton>
            </div>
        </div>
    </g:form>
</body>
</html>