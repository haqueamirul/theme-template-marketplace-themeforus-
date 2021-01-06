@extends('layouts.backend.app')

@section('title')
{{__('about')}}
@endsection



@push('css')

@endpush
@section('content')
 <div class="container-fluid">
            <a class="btn btn-danger waves-effect" href="{{route('admin.about.index')}}">{{__('BACK')}}</a>
     <br><br>
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h1>
                                <b><i>{{$about->title}}</i></b></b></b>&nbsp;<span>{{__('on')}}</span>

                                    {{ $about->created_at->toFormattedDateString() }}
                                </small>
                            </h1>
                        </div>
                        <div class="body">
                            {!! $about->body !!}
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">

                    <div class="card ">
                        <div class="header bg-amber">
                            <h2 class="">{{__('Feature Image')}}</h2>
                        </div>
                        <div class="body">
                            <img  class="img-responsive img-thumbnail" src="{{ asset('storage/uploads/review/'.$about->image) }}" style="height: 350px; width: 100%;" >
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">

                    <div class="card ">
                        <div class="header bg-blue">
                            <h2 class="">{{__('Feature Vedio')}}</h2>
                        </div>
                        <div class="body">
                            <iframe width="280" height="315" src="{{$about->vedio}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection

@push('js')
    <script src="{{asset('backend/plugins/bootstrap-select/js/bootstrap-select.js')}}"></script>
    <script src="{{ asset('backend/plugins/tinymce/tinymce.js') }}"></script>
    <script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>

    <script type="text/javascript">
     function approveabout(id) {
            swal({
                title: 'Are you sure?',
                text: "You went to approve this about",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, approve it!',
                cancelButtonText: 'No, cancel!',
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false,
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('approvel-form').submit();
                } else if (
                    // Read more about handling dismissals
                    result.dismiss === swal.DismissReason.cancel
                ) {
                    swal(
                        'Cancelled',
                        'Your about remain pending :)',
                        'info'
                    )
                }
            })
        }
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
