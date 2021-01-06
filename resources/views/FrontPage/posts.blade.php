@extends('layouts.frontend.app')
@section('title','Posts')
@push('css')
@endpush
@section('content')
    <section class="week-themes px fix">
        <div class="container">
            <div class="section-title">
                <h2> {{__(' Free Wordpress Themes')}}</h2>
                <h2> </h2>
                <p>Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!</p>
            </div>
            <div class="row">
                @foreach($posts as $post)
                  
                    <div class="col-lg-4 col-md-6 col-sm-6">
            					<div class="template">
            						<a href="{{route('post.details',$post->slug)}}">
            							<img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="{{$post->title}}" />
            							<h3>{!! str_limit($post->title,10) !!}</h3>
            						</a>
            						<p class="p-border">{!! str_limit($post->body ,50)!!}</p>

            						<div class="view-list">
            							<ul>
                            <li style="margin-left:18px;">
                                @guest
                                <a href="javascript:void(0);" onclick="toastr.info('To add favorite list. You need to login first.','Info',{
                                    closeButton: true,
                                    progressBar: true,
                                })"><i class="fas fa-heart"></i> {{ $post->favorite_to_users->count() }}</a>
                                @else
                                    <a href="javascript:void(0);" onclick="document.getElementById('favorite-form-{{ $post->id }}').submit();" class="{{ !Auth::user()->favorite_posts->where('pivot.post_id',$post->id)->count()  == 0 ? 'favorite_posts' : 'gray'}}"><span>{{ $post->favorite_to_users->count() }}</span><i class="fas fa-heart"></i></a>

                                    <form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorite',$post->id) }}"                                              style="display: none;">
                                        @csrf
                                    </form>
                                    @endguest
                            </li>
            						     <li style="margin-left:18px;"><a><span>{{ $post->view_count }}</span><i class="fas fa-eye"></i></a></li>
            								<li class="card"><a><span>{{ $post->downloads->count() }}</span><i class="fas fa-cart-plus"></i></a></li>
            							</ul>
            						</div>
            						<div class="d-prev-list">
            							<ul>
            								<li><a href="{{route('post.details',$post->slug)}}">{{__('Read more')}}</a></li>
            								<li><a href="{{route('project.download',$post->id)}}">{{__('Download')}}</a></li>
            							</ul>
            						</div>

            					</div>
            				</div>

                @endforeach
            </div>
            <div class="text-center">
                {{ $posts->links() }}
                {{--<a href="">VIEW ALL</a>--}}
            </div>
        </div>
       <div class="text-center"></div>
    </section>



@endsection

@push('js')

@endpush
