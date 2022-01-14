<div class="col-lg-4">
    <!-- Search widget-->
    <div class="card mb-4">
        <div class="card-header">Search</div>
        <div class="card-body">
            <form action="{{route('search')}}" method="POST">
            <div class="input-group">
                
                    <input class="form-control" type="text" placeholder="Enter title..." name="search" aria-label="Enter search term..." aria-describedby="button-search" />
                    <button class="btn btn-primary" id="button-search" type="submit">Go!</button>
                
            </div>
            {{ csrf_field() }}
        </form>
        </div>
    </div>
    <!-- Categories widget-->
    <div class="card mb-4">
        <div class="card-header">Categories</div>
        <div class="card-body">
            <div class="row">
                @if (isset($cData))
                    @foreach ($cData as $item)
                    <div class="col-sm-6">
                    <ul class="list-unstyled mb-0">
                        <li>
                            <a class="badge bg-primary text-decoration-none link-gray" href="{{route('category', ['id'=>$item->id, 'cData'=>$cData])}}">
                                {{$item->name}}
                            </a>
                        </li>
                     </ul>
                    </div>
                @endforeach
                @endif


                
            </div>
        </div>
    </div>
    <!-- Side widget-->
    <div class="card mb-4">
        <div class="card-header">Side Widget</div>
        <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
    </div>
</div>