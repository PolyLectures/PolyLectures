<!doctype html>
<html lang="fr">
    <head>
        <title>PolyLecture</title>
        {!! Html::style('assets/css/bootstrap.min.css') !!}
        {!! Html::style('assets/css/bootstrap.css') !!}
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container-fluid">
                    <div class="narbar-header">         
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#narbar-collapse-target">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar+ bvn"></span>
                        </button>
                        <a class="navbar-brand" href="{{ url('/') }}">PolyLectures</a>
                    </div>
                    <div class="collapse navbar-collapse" id="navbar-collapse-target">
                        <ul class="nav navbar-nav">
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container">
            @yield('content')
        </div>

        {!! Html::script('assets/js/bootstrap.min.js') !!}
        {!! Html::script('assets/js/jquery-2.1.3.min.js') !!}
        {!! Html::script('assets/js/ui-bootstrap-tpls.min.js') !!}
        {!! Html::script('assets/js/bootstrap.min.js') !!}

    </body>
</html>
