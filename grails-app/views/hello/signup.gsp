<html>
    <head>
    </head>
    <body>
        <H1>Sign-up-form</H1>

        <g:form controller="form" action="saveUser" method="post" name="myForm">

        </g:form>

        <form method="post" action="/learning-management/form/saveUser">
            <label for="firstName" class="">FirstName:</label>

            <input type=text name="firstName" placeholder="Enter firstname" id="firstName" class="form-control">

            LastName:<input type=text name="lastName" placeholder="Enter Lastname"><br><br>

            Email-ID:<input type=text name="email" placeholder="Enter Email"><br><br>

            Age:<input type="number" name="age" placeholder="Enter your age"><br><brs>

            <input type="submit" value="submit">
        </form>
    </body>
</html>