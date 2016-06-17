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
                <h1>This is my start of createtor.gsp body</h1>
            </div>

            <g:form method="post" controller="user" action="save" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                        <g:textField name="firstName" placeholder="First Name" class="form-control"></g:textField>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                        <g:textField name="lastName" placeholder="Last Name" class="form-control"></g:textField>
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
            <h1>this is my end</h1>
        </div>
    </div>

    <content tag="ironMan">
        <div class="col-sm-2">
        Proin magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Fusce neque. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.

        Phasellus a est. Etiam imperdiet imperdiet orci. Curabitur blandit mollis lacus. Ut non enim eleifend felis pretium feugiat. Praesent egestas tristique nibh.

        Vestibulum ullamcorper mauris at ligula. Fusce neque. Ut varius tincidunt libero. Donec id justo. Fusce pharetra convallis urna.
            </div>
    </content>
</body>
</html>