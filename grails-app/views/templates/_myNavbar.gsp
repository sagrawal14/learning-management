<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            </button>
            <a class="navbar-brand" href="#">Learning Mangement ${day}</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class=${myCurrentPage=="create" ? 'active' : ''}>
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