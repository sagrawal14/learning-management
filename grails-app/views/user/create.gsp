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
    <meta name="layout" content="abc" />
</head>
<body>
    <div class="row">
        <div class="col-sm-10">
            <div class="page-header">
                <h1>Create User</h1>
            </div>

            <g:form method="post" controller="user" action="save" class="form-horizontal">
                <div class="form-group ${hasErrors(bean: myUser, field: 'firstName', 'has-error')}">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                        <g:textField name="firstName" placeholder="First Name" class="form-control"
                            value="${myUser.firstName}"></g:textField>

                        <g:renderErrors bean="${myUser}" field="firstName" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                        <g:textField name="lastName" placeholder="Last Name" class="form-control"
                                     value="${myUser.lastName}"></g:textField>
                    </div>
                </div>

                <div class="form-group ${hasErrors(bean: myUser, field: 'email', 'has-error')}">
                    <label class="control-label col-sm-2">Email</label>
                    <div class="col-sm-6">
                        <g:textField name="email" placeholder="Email" class="form-control"
                                     value="${myUser.email}"></g:textField>

                        <g:renderErrors bean="${myUser}" field="email" />
                    </div>

                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                        <g:textField name="age" placeholder="Age" class="form-control"
                                     value="${myUser.age}"></g:textField>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-6 col-sm-push-2">
                        <g:submitButton name="submit" class="btn btn-primary"></g:submitButton>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</body>
</html>