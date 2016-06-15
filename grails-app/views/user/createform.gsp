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
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                </button>
                <a class="navbar-brand" href="#">Learning Mangement</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <g:link controller="user" action="createform">Create</g:link>
                    </li>
                    <li>
                        <g:link controller="user" action="view">Show</g:link>
                    </li>
                    <li>
                        <g:link controller="user" action="list">List</g:link>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

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