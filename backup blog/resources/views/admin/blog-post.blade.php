@extends('layouts.master')

@section('content')

            <div class="col-lg-8 align-self-start">
                
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Contact Us header-->
                        <div class="card mb-4">
                            <div class="card-header">
                                <nav class="navbar navbar-expand-lg navbar-light bg-mb-3">
                                    <div class="container-fluid">
                                        <a class="navbar-brand" href="#">Blog Post</a>
                                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                            <span class="navbar-toggler-icon"></span>
                                        </button>
                                        
                                    </div>
                                </nav>
                            </div>
                        </div>
                        <!-- Post content-->
                        <section class="mb-5">
                            
                            <form method="POST" action="{{route('create')}}" enctype="multipart/form-data">
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Title</span>
                                    <input type="text" name="title" class="form-control" placeholder="Enter title..." maxlength="100">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Description </span>
                                    <textarea name="description" class="form-control" aria-label="With textarea" maxlength="255"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1" class="mb-1">Content</label>
                                    <textarea name="content" class="form-control mb-1" id="exampleFormControlTextarea1" rows="5" maxlength="950"></textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="formFile" class="form-label">Upload Image</label>
                                    <input name="img_link" class="form-control" type="file">
                                </div>
                                <label for="exampleFormControlTextarea1" class="mb-1">Categories</label>
                                @foreach ($cData as $item)
                                    <div class="form-check">
                                        
                                        <input class="form-check-input" type="checkbox" value="{{$item->id}}" name="category[]" id="flexCheckChecked{{$item->id}} ">
                                        <label class="form-check-label" for="flexCheckChecked{{$item->id}} ">
                                            {{$item->name}}
                                        </label>
                                    </div>
                                @endforeach
                                    {{ csrf_field() }}
                                <button type="submit" name="submit_bttn" class="btn btn-primary mt-2">Post</button>
                            </form>
                        </section>
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
@endsection