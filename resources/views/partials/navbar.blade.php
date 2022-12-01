<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
    <div class="container">
        <a class="navbar-brand" href="/">Portofolio</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link {{ ($title === 'HOME' ) ? 'active'  : '' }}" aria-current="page"
                        href="/">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ ($title === 'ABOUT' ) ? 'active'  : '' }}" href="/about">ABOUT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ ($title === 'BLOG' ) ? 'active'  : '' }}" href="/posts">BLOG</a>
                </li>
            </ul>
        </div>
    </div>
</nav>