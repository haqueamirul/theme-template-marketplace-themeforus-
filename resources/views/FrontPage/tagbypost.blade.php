@extends('layouts.frontend.app')

@section('title')
    {{$tag->slug}}
@endsection

@push('css')
    <style>
        h1.text-center {
            padding: 87px;
            font-size: 76px;
        }
        .favorite_posts{
          color: blue;
        }
    </style>
@endpush
@section('content')
    <div class="heading">
        <div class="container">
            <h1 class="text-center" >{{$tag->name}}</h1>
        </div>
    </div>
    <!-- tags -->
    <div class="tags-area px">
        <div class="container">
            <div class="row">
                <!-- popular-tags-area -->
                <div class="popular-tags-area">
                    <h4>{{__('popular categories')}}</h4>
                    <div class="tags">
                        <ul class="p">
                            @foreach($categories as $category)
                                <li><a href="{{route('category.posts',$category->slug)}}">{{$category->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <!-- End popular-tags-area -->
            </div>
        </div>
    </div>
    <!--End tags -->

    <!-- html template -->
    <section class="week-themes px fix">
        <div class="container">
            <div class="section-title">
                <h2>{{__('All Post of')}} {{$tag->name}}</h2>
                <p>Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!</p>
            </div>
            <div class="row">
                @if($posts->count() > 0)
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
                                <a  href="javascript:void(0);" onclick="toastr.info('To add favorite list. You need to login first.','Info',{
                                    closeButton: true,
                                    progressBar: true,
                                })"><i class="fas fa-heart"></i> {{ $post->favorite_to_users->count() }}</a>
                                @else
                                    <a  href="javascript:void(0);" onclick="document.getElementById('favorite-form-{{ $post->id }}').submit();" class="{{ !Auth::user()->favorite_posts->where('pivot.post_id',$post->id)->count()  == 0 ? 'favorite_posts' : 'gray'}}"><span>{{ $post->favorite_to_users->count() }}</span><i class="fas fa-heart"></i></a>

                                    <form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorite',$post->id) }}" style="display: none;">
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
                @else
                    <div class="">
                        <div class="container">
                            <h1>{{__('Sorry, No Tag post found')}}</h1>
                        </div>
                    </div>
                @endif
            </div>
            <!-- pagination area -->
            <div class="pagination-class">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <li class="page-item ">
                              {{ $posts->links() }}
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- pagination area -->
        </div>
    </section>
@endsection

@push('js')

@endpush
