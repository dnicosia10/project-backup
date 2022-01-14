<!DOCTYPE html>
<html lang="en">
<head>
@include('partials.head')
</head>
<body>
    
    @include('partials.header')
    <div class="container mt-5">
        <div class="row">
            <header class="mb-8">
                  @include('partials.errors')
            </header>
            @yield('content')
            @include('partials.sidebar')
        </div>
    </div>
    @include('partials.footer')
</body>
</html>