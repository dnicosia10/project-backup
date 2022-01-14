<!DOCTYPE html>
<html lang="en">
<head>
    @include('partial.head')
</head>
<body>
    @include('partial.header')
    <div class="container mt-5">
        <div class="row">
    @yield('content')
        </div>
    </div>
    {{-- @include('partial.footer') --}}
</body>
</html>