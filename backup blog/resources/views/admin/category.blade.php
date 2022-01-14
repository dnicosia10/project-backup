
@extends('layouts.master')

@section('content')

            <div class="col-lg-8">
                <!-- Categories widget-->
                <div class="card mb-4">
                    <div class="card-header">
                        <nav class="navbar navbar-expand-lg navbar-light bg-mb-3">
                            <div class="container-fluid">
                                <a class="navbar-brand" href="#">Category</a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                
                            </div>
                        </nav>
                    </div>
                </div>
                <section class="mb-8">

                    <form method="POST" action="{{route('create-category')}}">
                        <div class="input-group mb-3">
                            <span class="input-group-text">Category Name</span>
                            <input type="text" name="name" class="form-control" value="" placeholder="">
                            <input type="hidden" name="id" class="form-control" value="">
                            <button type="submit" name="add_bttn" class="btn btn-success input-group-text">Add</button>
                        </div>
                        
                        {{ csrf_field() }}
                    </form>
                </section>
                <div class="card-body">
                    <div class="row">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($cData as $item)
                                    <tr>
                                        <form action="{{route('delete')}}" method="POST">
                                            <th scope="row"></th>
                                            <td>{{$item->name}}</td>
                                            <input type="hidden" name="id" value="{{$item->id}}">
                                            <input type="hidden" name="name" value="{{$item->name}}">
                                            <td>
                                                <a href="{{route('update-category-page', ['id' => $item->id, 'name' => $item->name])}}" class="btn btn-warning">Edit</a>
                                                <button type="submit" name="delete_bttn" class="btn btn-danger">Delete</button>
                                            </td>
                                            {{ csrf_field() }}
                                        </form>
                                    </tr>
                                @endforeach


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            

@endsection



                        
