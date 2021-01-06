@extends('layouts.backend.app')

@section('title','vedio')

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
                                                {{ __('EDIT VEDIO') }}

                                            </h2>
                                        </div>
                                        <div class="body">
                                            <form method="POST" action="{{ route('admin.vedio.update',$vedio->id) }}">
                                                @csrf
                                                @method('PUT')
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <input  name="vedio" type="file" class="form-control">
                                                        <label class="form-label">{{ __('Vedio') }}</label>
                                                    </div>
                                                </div>
                                                <br>

                                                <a href="{{ route('admin.vedio.index') }}"  class="btn btn-danger m-t-15 waves-effect">{{ __('BACK') }}</a>
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
