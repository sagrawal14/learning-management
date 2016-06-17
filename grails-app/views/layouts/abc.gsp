<html>
<head>
    <title></title>
    <g:layoutHead />
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
</head>

<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                </button>
                <a class="navbar-brand" href="#">Learning Mangement ${day}</a>
            </div>

            <g:pageProperty name="myCurrentPage" />

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class=${g.pageProperty(name: "myCurrentPage") =="create" ? 'active' : ''}>
                        <g:link controller="user" action="createform">Create</g:link>
                    </li>
                    <li class=${myCurrentPage=="view" ? 'active' : ''}>
                        <g:link controller="user" action="view">Show</g:link>
                    </li>
                    <li class=${myCurrentPage=="listing" ? 'active' : ''}>
                        <g:link controller="user" action="list">List</g:link>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="row">
        <div class="col-sm-10">
            <div class="page-header">
                <h1></h1>
            </div>

            <g:layoutBody />
        </div>


            <g:pageProperty name="page.ironMan" />
    </div>

</body>
</html>