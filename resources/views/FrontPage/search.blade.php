@extends('layouts.frontend.app')
@section('title','Search')
@push('css')
    <style>
        .favorite_posts{color:blue;}
        .favorite_posts{color:gray;}

    </style>
@endpush
@section('content')
    <section class="week-themes px fix">
        <div class="container">
            <div class="section-title">
                <h2>{{ $query }} {{__('Results ')}}
                    @if($posts->count() ==0) {{__('is')}}
                        @else
                        {{__('are')}}
                    @endif{{$posts->count()}}</h2>
                <h2> </h2>
            </div>
            <div class="row">
                @foreach($posts as $post)
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xl-3">
                        <div class="template">
                            <a href="{{route('post.details',$post->slug)}}">
                                <img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="{{$post->title}}" />
                                <h3>{!! str_limit($post->title,20) !!}</h3>
                            </a>
                            <p>{!! str_limit($post->body ,30)!!}</p>
                            {{--<ul class="post_footer">--}}
                            {{--<li>--}}
                            {{--<a href="#"><i class="ion-eye"></i></a>--}}
                            {{--</li>--}}
                            {{--</ul>--}}
                            <style>
                                .favorite_posts{color:blue;}
                                .post-footer{display:flex;}
                                .post-footer li a {padding-left:10px;}

                            </style>
                            <ul class="post-footer" style="">
                                <li "><a href="#"><i class="material-icons">{{__('comments')}}</i></a></li>
                                <li>
                                    @guest
                                        <a href="javascript:void(0);" onclick="toastr.info('To add favorite list. You need to login first.','Info',{
                                    closeButton: true,
                                    progressBar: true,
                                })"><i class="material-icons">{{__('favorite')}}</i>{{ $post->favorite_to_users->count() }}</a>
                                    @else
                                        <a href="javascript:void(0);" onclick="document.getElementById('favorite-form-{{ $post->id }}').submit();"
                                           class="{{ !Auth::user()->favorite_posts->where('pivot.post_id',$post->id)->count()  == 0 ? 'favorite_posts'                                       : 'gray'}}"><i class="material-icons">{{__('favorite')}}</i>{{ $post->favorite_to_users->count() }}</a>

                                        <form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorite',$post->id) }}"                                              style="display: none;">
                                            @csrf
                                        </form>
                                    @endguest
                                </li>
                                <li 5px; "><a href="#"><i class="material-icons">{{__('visibility')}}</i>{{ $post->view_count }}</a></li>
                            </ul>
                            <a class="download" href="{{route('post.details',$post->slug)}}">READ MORE</a>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="html-button text-center">
                <a href="">VIEW ALL</a>
            </div>
        </div>
    </section>
@endsection

@push('js')

@endpush
