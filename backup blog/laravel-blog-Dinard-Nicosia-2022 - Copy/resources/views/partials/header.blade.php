<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="{{route('blog.welcome')}}">My Blog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="{{route('blog.welcome')}}">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('others.about')}}">About</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('others.contact')}}">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('admin.blog-post')}}">Post</a></li>
                <li class="nav-item"><a class="nav-link" href="{{route('admin.category')}}">Category</a></li>
            </ul>
        </div>
    </div>
</nav>