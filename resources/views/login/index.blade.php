    @extends('layouts.main')
    @section('container')
    <div class="row justify-content-center">
        <div class="col-md-4">
            <main class="form-signin w-100 m-auto">
                <h1 class="h3 mb-3 fw-normal text-center mt-5">Please Login</h1>
                @if(session()->has('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif
                @if(session()->has('loginError'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('loginError') }}
                     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif

    <form action="/login" method="post">
        @csrf
        <div class="form-floating">
        <input type="email" name='email' id='email' class="form-control" id="floatingInput" placeholder="name@example.com" class="@error('email') is-invalid @enderror" autofocus required>
        <label for="floatingInput" >Email address</label>
        @error('email')
        <div class="text-danger">{{ $message }}</div>
        @enderror
        </div>
        <div class="form-floating">
        <input type="password" name="password" id="password" class="form-control" id="floatingPassword" placeholder="Password" required>
        <label for="floatingPassword" >Password</label>
        </div>
        <button class="w-100 h-40 btn btn-lg btn-primary" type="submit">Log in</button>
    </form>
    <small class="d-block text-center mt-3">Not Registered? <a href="/register">Register</a></small>
    </main>
        </div>
    </div>

    @endsection
