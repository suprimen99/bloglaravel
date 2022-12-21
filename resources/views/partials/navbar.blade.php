<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
    <div class="container">
        <a class="navbar-brand" href="/">Blog</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('/')? 'active':'' }}" aria-current="page"
                        href="/">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('about')? 'active':'' }}" href="/about">ABOUT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('posts')? 'active':'' }}" href="/posts">BLOG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('categories')? 'active':'' }}" href="/categories">CATEGORIES</a>
                </li>
            </ul>


            <ul class="navbar-nav ms-auto ">
                @auth
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     Welcome back, {{ auth()->user()->name }}
                 </a>
                 <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-cup-hot"></i> My Dashboard</a></li>
                 <li><hr class="dropdown-divider"></li>
                 <form action="/logout" method="POST">
                    @csrf
                    <button type="submit" class="dropdown-item">
                    <i class="bi bi-box-arrow-left"></i> Logout</a></li>
                    </button>
                 </form>

                @else

                 <li class="nav-item">
                      <a href="/login"class="nav-link {{ ($title === 'LOGiN' ) ? 'active'  : '' }}"><i class="bi bi-box-arrow-in-down"></i>Login</a>
                </li>
                @endauth
            </ul>
        </div>
    </div>
</nav>
