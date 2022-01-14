@extends('layouts.user')

@section('content')

            <div class="col-lg-8 align-self-start">
                <header class="mb-8">
                    <!-- Post title-->

                    <!-- Post meta content-->
                      @include('partials.errors')
                </header>
                <div class="row">
                    <div class="card-body bg-light col-lg-12">
                        <!-- Contact Us header-->

                        <!-- Post content-->
                        <section class="mb-5">
                            
                            <form method="POST" action="{{route('create-user')}}" enctype="multipart/form-data">
                                <div class="mb-3">
                                    <label for="formFile" class="form-label">Upload Image</label>
                                    <input name="img_link" class="form-control" type="file">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">First Name</span>
                                    <input type="text" name="fname" class="form-control" maxlength="50" minlength="2">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Last Name</span>
                                    <input type="text" name="lname" class="form-control" maxlength="50" minlength="2">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Username</span>
                                    <input type="text" name="username" class="form-control" maxlength="50" minlength="2">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Email</span>
                                    <input type="email" name="email" class="form-control" maxlength="50">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Password</span>
                                    <input type="password" name="password" class="form-control" maxlength="50">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">re-enter Password</span>
                                    <input type="password" name="rpassword" class="form-control" maxlength="50">
                                </div>
                                    {{ csrf_field() }}
                                <button type="submit" name="submit_bttn" class="btn btn-primary mt-2">Sign Up</button>
                            </form>
                        </section>
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
@endsection