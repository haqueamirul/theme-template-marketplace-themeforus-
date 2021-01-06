@extends('layouts.backend.app')

@section('title')
    {{__('settings')}}
@endsection

@push('css')

@endpush
@section('content')
    <div class="container-fluid">
        <a class="btn btn-danger waves-effect" href="">Back</a>
        <br><br>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            PROFILE & SETTING
                        </h2>
                    </div>
                    <div class="body">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active bg-amber">
                                <a href="#profile_with_icon_title" data-toggle="tab" aria-expanded="true">
                                    <i class="material-icons">face</i> UPDATE PROFILE
                                </a>
                            </li>
                            <li role="presentation" class="bg-info">
                                <a href="#settings_with_icon_title" data-toggle="tab" aria-expanded="false">
                                    <i class="material-icons">change_history</i> CHANGE PASSWORD
                                </a>
                            </li>
                            <li role="presentation" class="breadcrumb-bg-blue-grey">
                                <a href="#author_with_icon_title" data-toggle="tab" aria-expanded="false">
                                    <i class="material-icons">{{__('add_circle')}}</i> AUTHOR CREATE
                                </a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade" id="settings_with_icon_title">
                                <form method="POST" action="{{route('admin.password.update')}}" class="form-horizontal">
                                    @csrf
                                    @method('PUT')
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="old_password">Old Password : </label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="password" id="old_password" class="form-control" placeholder="Enter your old password" name="old_password">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="password">New Password : </label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="password" id="password" class="form-control" placeholder="Enter your new password" name="password">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="confirm_password">Confirm Password : </label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="password" id="confirm_password" class="form-control" placeholder="Enter your new password again" name="password_confirmation">
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row clearfix">
                                        <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">UPDATE</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="author_with_icon_title">
                                <div class="body">
                                    <form method="POST" action="{{ route('register') }}" class="form-horizontal" >
                                        @csrf
                                        <div class="row clearfix">
                                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                                <label for="name">Name : </label>
                                            </div>
                                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                <div class="form-group">
                                                    <div class="form-line">
                                                        <input type="text" id="name" class="form-control" placeholder="Enter your name" name="name" value=" {{old('name')}}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                                                        <div class="form-group form-float">
                                    <div class="form-group">
                                        <input  type="file" class="form-control" name="image" required>
                                        <label class="form-label btn btn-primary">{{__('Upload Your Project ScreenShot')}}</label>
                                    </div>
                                </div>
                                    <div class="form-group">
                                        <input type="checkbox" id="publish" class="filled-in" name="is_approved" value="1">
                                        <label for="publish">{{__('Publish')}}</label>
                                    </div>

                                    <div class="form-group">
                                        <input type="checkbox" id="status" class="filled-in" name="status" value="1">
                                        <label for="status">{{__('Status')}}</label>
                                    </div>

                                        <div class="row clearfix">
                                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                                <label for="email_address_2">Email Address</label>
                                            </div>
                                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                <div class="form-group">
                                                    <div class="form-line">
                                                        <input type="text" id="email_address_2" class="form-control" value="{{old('email')}}" placeholder="Enter your email address" name="email" ">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                                <label for="name">Password : </label>
                                            </div>
                                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                <div class="form-group">
                                                    <div class="form-line">
                                                        <input type="password"  id="name" class="form-control" placeholder="Enter your password" name="password" value=" {{old('passwrod')}}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                                <label for="name">{{ __('Confirm Password') }} : </label>
                                            </div>
                                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                <div class="form-group">
                                                    <div class="form-line">
                                                        <input type="password"  id="name" class="form-control" placeholder="Enter your confirm password" name="password_confirmation" >
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                                                <button type="submit" class="btn btn-primary m-t-15 waves-effect">{{__('SUBMIT')}}</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade active in" id="profile_with_icon_title">
                                <div class="row clearfix">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="card">
                                            <div class="header bg-amber">
                                                <h2 class="">
                                                    PROFILE
                                                </h2>
                                            </div>
                                            <div class="body">
                                                <form method="POST" action="{{route('admin.profile.update')}}" class="form-horizontal" >
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="row clearfix">
                                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                                            <label for="name">Name : </label>
                                                        </div>
                                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                            <div class="form-group">
                                                                <div class="form-line">
                                                                    <input type="text" id="name" class="form-control" placeholder="Enter your name" name="name" value="{{Auth::user()->name}} {{old('name')}}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row clearfix">
                                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                                            <label for="email_address_2">Email Address</label>
                                                        </div>
                                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                            <div class="form-group">
                                                                <div class="form-line">
                                                                    <input type="text" id="email_address_2" class="form-control" value="{{Auth::user()->email}} {{old('email')}}" placeholder="Enter your email address" name="email" ">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <div class="row clearfix">
                                                        <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                                                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">UPDATE</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')

@endpush