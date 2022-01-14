@extends('layouts.master')
@section('content')

<div class="col-lg-8">

    <!-- Post content-->
            <article>
        <!-- Post header-->
        <header class="mb-4">
            <!-- Post title-->
            <h1 class="fw-bolder mb-1">{{$data->title}}</h1>
            <!-- Post meta content-->
            <div class="text-muted fst-italic mb-2">
                {{$mysqldate = date('g:i a \o\n l jS F Y', strtotime($data->created_at))}}
                </div>
            <!-- Post categories-->
            @foreach ($bcData as $bcItem)
                @foreach ($cData as $cItem)
                    @if ($bcItem->category_id == $cItem->id)
                        <a class="badge bg-secondary text-decoration-none link-light" href="{{route('category', ['id'=>$cItem->id, 'cData'=>$cData])}}">{{$cItem->name}}</a>
                    @endif
                @endforeach
            @endforeach
        </header>
        <!-- Preview image figure-->
        <figure class="mb-4"><img class="img-fluid rounded" src="{{URL::to('assets/images/'.$data->img_link.'')}}" alt="..." /></figure>
        <!-- Post content-->
        <section class="mb-5">
            <p class="fs-5 mb-4">{{$data->description}}</p>
            <p class="fs-5 mb-4">{{$data->content}}</p>
            
        </section>
    </article>


    <!-- Comments section-->
    <section class="mb-5">
        <div class="card bg-light">
            <div class="card-body">
                <!-- Comment form-->
                <form class="mb-4" method="POST" action="{{route('create-comment')}}">
                    <div>
                        <textarea class="form-control mb-2" rows="3" name="comment" placeholder="Join the discussion and leave a comment!" required></textarea>
                    </div>
                    <input type="hidden" name="user_id" value="2">
                    <input type="hidden" name="blog_post_id" value="{{$data->id}}">
                    <div>
                        <button type="submit" class="btn btn-primary">Post Comment</button>
                    </div>
                    {{ csrf_field() }}
                </form>
                <!-- Single comment-->
                @foreach ($bpcData as $bpcItem)
                    @foreach ($userData as $uItem)
                    @if ($uItem->id == $bpcItem->user_id)
                    <div class="d-flex mb-4">
                        <div class="flex-shrink-0"><img class="rounded-circle" style="width:50px;" src="{{URL::to('assets/images/'.$uItem->img_link.'')}}" alt="..." />
                        </div>
                        
                            <div class="ms-3">
                                <div class="fw-bold">{{$uItem->name}}</div>
                            {{$bpcItem->comment}}
                            <div class="text-muted fst-italic mb-2">
                                {{$mysqldate = date('g:i a \o\n l jS F Y', strtotime($bpcItem->created_at))}}
                                </div>
                        </div> 
                        
                    </div>
                    @endif
                    @endforeach
                @endforeach
            </div>
        </div>
    </section>
</div>
@endsection