@extends('layouts.backend.app')

@section('title','Email')

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
                                                {{ __('EDIT EMAIL') }}
                                                
                                            </h2>
                                        </div>
                                        <div class="body">
                                        <form method="POST" action="{{ route('admin.email.store') }}">
                                            @csrf
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <input value="{{ old('email') }}" name="email" type="email" class="form-control">
                                                        <label class="form-label">{{ __('Email') }}</label>
                                                    </div>
                                                </div>
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <input value="{{ old('number') }}" name="number" type="phone" class="form-control">
                                                        <label class="form-label">{{ __('Number') }}</label>
                                                    </div>
                                                </div>

                                            <div class="row clearfix">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="card">
                                                        <div class="header">
                                                            <h2>{{__('Address')}}</h2>
                                                        </div>
                                                        <div class="body">
                                                            <textarea id="tinymce" name="address">
                                                                {{old('address')}}
                                                            </textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div><br>
                                           
                                        <a href="{{ route('admin.email.index') }}"  class="btn btn-danger m-t-15 waves-effect">{{ __('BACK') }}</a>
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
<script src="{{asset('backend/plugins/bootstrap-select/js/bootstrap-select.js')}}"></script>
  <script src="{{ asset('backend/plugins/tinymce/tinymce.js') }}"></script>
    <script>
        $(function () {
            //TinyMCE
            tinymce.init({
                selector: "textarea#tinymce",
                theme: "modern",
                height: 300,
                plugins: [
                    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                    'searchreplace wordcount visualblocks visualchars code fullscreen',
                    'insertdatetime media nonbreaking save table contextmenu directionality',
                    'emoticons template paste textcolor colorpicker textpattern imagetools'
                ],
                toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                toolbar2: 'print preview media | forecolor backcolor emoticons',
                image_advtab: true
            });
            tinymce.suffix = ".min";
            tinyMCE.baseURL = '{{ asset('backend/plugins/tinymce') }}';
        });
    </script>
@endpush