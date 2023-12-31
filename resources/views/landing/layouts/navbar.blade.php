<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="{{ route('landing.home') }}"><span>Intern</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item {{ (request()->routeIs('landing.home')) ? 'active' : '' }}"><a href="{{ route('landing.home') }}" class="nav-link">Welcome</a></li>

                @if(auth()->check())
                    <li class="nav-item"><a href="{{ route('login') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" class="nav-link btn btn-secondary btn-sm">Logout</a></li>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                @else
                    <li class="nav-item"><a href="{{ route('login') }}" class="nav-link btn btn-secondary btn-sm">Masuk</a></li>
                @endif
            </ul>
        </div>
    </div>
</nav>
