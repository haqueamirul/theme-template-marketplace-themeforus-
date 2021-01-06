@extends('layouts.backend.app')

@section('title')
{{__('About-us')}}
@endsection



@push('css')
 <link href="{{asset('backend/plugins/bootstrap-select/css/bootstrap-select.css')}}" rel="stylesheet" />
@endpush
@section('content')
<div class="container-fluid">
           <div class="container-fluid">
            <div class="block-header"><a href="{{route('admin.about.index')}}"></a></div>
            <!-- Basic Validation -->
            <form action="{{route('admin.about.store')}}"  method="POST" enctype="multipart/form-data">
                                @csrf
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>{{__('ADD REVIEW')}}</h2>
                        </div>
                        <div class="body">

                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input value="{{old('title')}}" type="text" class="form-control" name="title" required>
                                        <label class="form-label">{{__('Review Title')}}</label>
                                    </div>
                                <!-- </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input value="{{old('vedio')}}" type="text" class="form-control" name="vedio" required>
                                    <label class="form-label">{{__('Vedio Link')}}</label>
                                </div>
                            </div> -->
                                <div class="form-group form-float">
                                <div class="form-group">
                                    <input  type="file" class="form-control" name="image" required>
                                    <label class="form-label btn btn-primary">{{__('Upload Your Review Image')}}</label>
                                </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>{{__('Documanation')}}</h2>
                        </div>
                        <div class="body">
                              <textarea id="tinymce" name="body">
                                {{old('body')}}
                            </textarea>
                            <br><br>
                        <a class="btn btn-danger" href="{{route('admin.about.index')}}">{{__('BACK')}}</a>
                        <button class="btn btn-primary waves-effect" type="submit">{{__('SUBMIT')}}</button>
                        </div>

                    </div>
                </div>
            </div>
            </form>
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
