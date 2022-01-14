@extends('layouts.master')

@section('content')
<header class="py-5 bg-light border-bottom mb-4">
    <div class="container">
        <div class="text-center my-5">
            <h1 class="fw-bolder">Welcome to Blog Home!</h1>
            <p class="lead mb-0"></p>
        </div>
    </div>
</header>
        <!-- Blog entries-->
        <div class="col-lg-8">
            @if (isset($bpcData))
                @foreach ($bpcData as $bpcitem)
                    @foreach ($data as $item)
                        @if ($bpcitem->blog_post_id == $item->id)             
            <!-- Featured blog post-->
            <div class="card mb-4">
                <a href="#!"><img class="card-img-top" src="{{URL::to('assets/images/'.$item->img_link.'')}}" alt="..." /></a>
                <div class="card-body">
                    <div class="text-muted fst-italic mb-2">
                        {{$mysqldate = date('g:i a \o\n l jS F Y', strtotime($item->created_at))}}
                        </div>
                    <h2 class="card-title">{{$item->title}}</h2>
                    <p class="card-text">{{$item->description}}</p>
                    <a class="btn btn-primary" href="{{route('blog.article', ['id' => $item->id])}}">Read more →</a>
                </div>
            </div>
             @endif
             @endforeach
             @endforeach
             @elseif(isset($sData))
             @foreach ($sData as $item)
                 
             <!-- Featured blog post-->
                 <div class="card mb-4">
                     <a href="#!"><img class="card-img-top" src="{{URL::to('assets/images/'.$item->img_link.'')}}" alt="..." /></a>
                         <div class="card-body">
                            <div class="text-muted fst-italic mb-2">
                                {{$mysqldate = date('g:i a \o\n l jS F Y', strtotime($item->created_at))}}
                                </div>
                                 <h2 class="card-title">{{$item->title}}</h2>
                             <p class="card-text">{{$item->description}}</p>
                         <a class="btn btn-primary" href="{{route('blog.article', ['id' => $item->id])}}">Read more →</a>
                     </div>
                 </div>
         @endforeach
             @else
                @foreach ($data as $item)
                 
             <!-- Featured blog post-->
                 <div class="card mb-4">
                     <a href="#!"><img class="card-img-top" src="{{URL::to('assets/images/'.$item->img_link.'')}}" alt="..." /></a>
                         <div class="card-body">
                            <div class="text-muted fst-italic mb-2">
                                {{$mysqldate = date('g:i a \o\n l jS F Y', strtotime($item->created_at))}}
                                </div>
                                 <h2 class="card-title">{{$item->title}}</h2>
                             <p class="card-text">{{$item->description}}</p>
                         <a class="btn btn-primary" href="{{route('blog.article', ['id' => $item->id])}}">Read more →</a>
                     </div>
                 </div>
         @endforeach
         
             @endif

            <!-- Nested row for non-featured blog posts-->
            
            <div class="row">
                
                    <!-- Blog post-->
                    <p style="color: white">{{$i = 1}}</p>
                    @foreach ($cardData as $item)
                    <div class="col-lg-6">
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="{{URL::to('assets/images/'.$item->img_link.'')}}" alt="..." /></a>
                        <div class="card-body"> 
                            <div class="text-muted fst-italic mb-2">
                                {{$mysqldate = date('g:i a \o\n l jS F Y', strtotime($item->created_at))}}
                                </div>
                            <h2 class="card-title h4">{{$item->title}}</h2>
                            <p class="card-text">{{$item->description}}</p>
                            <a class="btn btn-primary" href="{{route('blog.article', ['id' => $item->id])}}">Read more →</a>
                        </div>
                    </div>
                </div>
                @if ($i++ == 2) @break @endif
                    @endforeach
                    <!-- Blog post-->
            </div>

            <!-- Pagination-->
            <nav aria-label="Pagination">
                <hr class="my-0" />
                <ul class="pagination justify-content-center my-4">
                    @if (!isset($sData))
                        {{$data->links('pagination::bootstrap-4')}}
                    @endif
                    
                </ul>
            </nav>
        </div>
        <!-- Side widgets-->

<!-- Footer-->

{{-- {!! "<script>alert('Hi');</script>" !!} --}}
@endsection