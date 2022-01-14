<!DOCTYPE html>
<html lang="en">
<head>
@include('partials.head')
</head>
<body>
    
    @include('partials.guest.header')
    <div class="container mt-5">
        <div class="row">
            @yield('content')
        </div>
    </div>
</body>
</html>