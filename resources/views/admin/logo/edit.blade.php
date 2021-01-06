@extends('layouts.backend.app')

@section('title','Logo')

@push('css')

@endpush
@section('content')
<div class="container-fluid">
        <div class="block-header">
     <!-- Exportable Table -->
<div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="body">
                    <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">
                                        <div class="header">
                                            <h2>
                                                {{ __('EDIT Logo') }}
                                                
                                            </h2>
                                        </div>
                                        <div class="body">
                                        <form method="POST" action="{{ route('admin.logo.update',$logo->id) }}" enctype="multipart/form-data">
                                            @csrf
                                            @method('PUT')
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <input value="{{ old('title') }}{{ $logo->title }}" name="title" type="text" class="form-control">
                                                        <label class="form-label">{{ __('Title') }}</label>
                                                    </div>
                                                </div>
                                                <div class="form-group form-float">
                                                    <div class="form-group">
                                                        <img src="{{ asset('storage/uploads/logo/'.$logo->logo) }}" width="40px"height="30px" alt=""/>
                                                        <input  type="file" class="form-control" name="logo" >
                                                        <label class="form-label btn btn-primary">{{__('logo upload')}}</label>
                                                    </div>
                                                </div>
                                                <br>
                                           
                                        <a href="{{ route('admin.logo.index') }}"  class="btn btn-danger m-t-15 waves-effect">{{ __('BACK') }}</a>
                                        <button type="submit" class="btn btn-primary m-t-15 waves-effect">{{ __('SUBMIT') }}</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #END# Exportable Table -->
</div>
@endsection


@push('js')

@endpush