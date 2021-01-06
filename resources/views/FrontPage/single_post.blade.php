@extends('layouts.frontend.app')
@section('title')
    {{$post->slug}}
@endsection
@push('css')
    <link rel="stylesheet" href="{{asset('frontend/css/style-2.css')}}" />
    <style>
        .favorite_posts{color:blue;}
        .favorite_posts{color:gray;}
        .rating {
            display: inline-block;
            position: relative;
            height: 50px;
            line-height: 50px;
            font-size: 30px;
        }

        .rating label {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            cursor: pointer;
        }

        .rating label:last-child {
            position: static;
        }

        .rating label:nth-child(1) {
            z-index: 5;
        }

        .rating label:nth-child(2) {
            z-index: 4;
        }

        .rating label:nth-child(3) {
            z-index: 3;
        }

        .rating label:nth-child(4) {
            z-index: 2;
        }

        .rating label:nth-child(5) {
            z-index: 1;
        }

        .rating label input {
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
        }

        .rating label .icon {
            float: left;
            color: transparent;
        }

        .rating label:last-child .icon {
            color: #000;
        }

        .rating:not(:hover) label input:checked ~ .icon,
        .rating:hover label:hover input ~ .icon {
            color: #09f;
        }

        .rating label input:focus:not(:checked) ~ .icon:last-child {
            color: #000;
            text-shadow: 0 0 5px #09f;
        }

    </style>

@endpush
@section('content')
    <div class="heading ">
        <div class="container blog-text">
            <h1>{{$post->title}}</h1>
        </div>
    </div>
    <!-- tags -->
    <div class="tags-area px">
        <div class="container">
            <div class="row">
                <!-- popular-tags-area -->
                <div class="popular-tags-area">
                    <h4>{{__('popular tags')}}</h4>
                    <div class="tags">
                        <ul class="p">
                            @foreach($tags as $tag)
                                <li><a href="{{route('tag.posts',$tag->slug)}}">{{$tag->name}}</a></li>
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
          			<div class="row">
          				<div class="cal-lg-6 col-md-6 col-sm-12">
          					<div class="single-template-img">
                        <img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="{{$post->title}}" />

                    </div>
                </div>
                <div class="cal-lg-6 col-md-6 col-sm-12">
                    <div class="single-template">
                        <h3>{{$post->title}}</h3>
                        <h4>Description:</h4>
                        <p>{{html_entity_decode($post->body)}}</p>
                        <a class="download" href="{{route('project.download',$post->id)}}">DOWNLOAD</a>
                        <!-- <a class="btn btn-warning sm"><i class="material-icons">{{__('present_to_all')}}</i> {{ $post->downloads->count() }}</a> -->
                        <a class="preview-demo" href="{{$post->live_demo}}">PREVIEW DEMO</a>
                    </div><br><br>
                    @foreach ($allreviews as $review )
                        @if($review->post->id == $post->id)
                        <div>
                        <span  class="icon" style="color: yellow;">
                        @if($review->stars == 1)
                        ★
                        @elseif($review->stars == 2)
                        ★★
                        @elseif($review->stars == 3)
                        ★★★
                        @elseif($review->stars == 4)
                        ★★★★
                        @elseif($review->stars == 5)
                        ★★★★★
                        @endif
                        <small style="font-size:12px; color: #000;">{{$review->user->name }}</small>
                        </span>
                        <p>{{$review->comment}}</p>

                    </div>
                    @endif
                    @endforeach

                </div>
            </div>
        </div>
    </section>
     @if(Auth::check())
    <section class="week-themes px fix">
        <div class="container">
            <div class="row">
                <div class="cal-lg-12 col-md-12 col-sm-12">
                        <div id="accordion">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button  class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
                                            {{__('Review')}}
                                        </button>
                                    </h5>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <form class="rating" method="post" action="{{route('review',$post->id)}}">
                                            @csrf
                                            <div class="form-group form-float">
                                                <div >
                                            <label>
                                                <input " type="radio" name="stars" value="1" />
                                                <span class="icon">★</span>
                                            </label>
                                            <label>
                                                <input type="radio" name="stars" value="2" />
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                            </label>
                                            <label>
                                                <input type="radio" name="stars" value="3" />
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                            </label>
                                            <label>
                                                <input type="radio" name="stars" value="4" />
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                            </label>
                                            <label>
                                                <input type="radio" name="stars" value="5" />
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                                <span class="icon">★</span>
                                            </label>
                                            </div>
                                        </div>
                                            <div class="form-group form-float">
                                                <div class="form-full">
                                                    <textarea  type="text" class="form-control" name="comment" required></textarea
                                                    <label class="form-label">{{__('Feedback')}}</label>
                                                </div>
                                                <a class="btn btn-danger" href="{{route('post.details',$post->id)}}">{{__('BACK')}}</a>
                                                <button class="btn btn-primary waves-effect" type="submit">{{__('SUBMIT')}}</button>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <section class="week-themes px fix">
        <div class="container">
          <div class="row">
                @foreach($randompost as $post)
                    <div class="col-lg-4 col-md-4">
          					<div class="template">
          						<a href="{{route('post.details',$post->slug)}}">
          							<img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="{{$post->title}}" />
          							<h3>{{str_limit($post->title,7)}}</h3>
          						</a>
          						<p>{{str_limit(html_entity_decode($post->body),50)}}</p>
                      	<li><a href="{{route('post.details',$post->slug)}}">{{__('Read more')}}</a></li>
          					</div>
          				</div>
                @endforeach
            </div>
        </div>
    </section>
@endsection

@push('js')
    <script>
        $(':radio').change(function() {
            console.log('New star rating: ' + this.value);
        });
        $('.collapse').collapse()
    </script>
@endpush



{{--@extends('layouts.frontend.app')--}}
{{--@section('title')--}}
    {{--{{$post->slug}}--}}
{{--@endsection--}}
{{--@push('css')--}}
    {{--<link rel="stylesheet" href="{{asset('frontend/css/style-2.css')}}" />--}}
    {{--<style>--}}
        {{--.favorite_posts{color:blue;}--}}
        {{--.favorite_posts{color:gray;}--}}

    {{--</style>--}}
{{--@endpush--}}
{{--@section('content')--}}
    {{--<!-- Blog Banner Area -->--}}
    {{--<section class="blog-banner-area">--}}
        {{--<div class="container">--}}
            {{--<div class="blog-text">--}}
                {{--<h1>{{$post->title}}</h1>--}}
                {{--<h5><a href="{{route('home')}}">Home</a>{{$post->slug}}</h5>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</section>--}}
    {{--<!-- End Blog Banner Area -->--}}

    {{--<!-- Single Blog Area -->--}}
    {{--<section class="single-blog-area section-padding">--}}
        {{--<div class="container">--}}
            {{--<div class="row">--}}
                {{--<div class="col-md-12 col-lg-12">--}}
                    {{--<div class="single-blog-details">--}}
                        {{--<div class="social-icon">--}}
                            {{--<ul>--}}
                                {{--<li><a href=""><i class="icofont-facebook"></i></a></li>--}}
                                {{--<li><a href=""><i class="icofont-twitter"></i></a></li>--}}
                                {{--<li><a href=""><i class="icofont-skype"></i></a></li>--}}
                                {{--<li><a href=""><i class="icofont-linkedin"></i></a></li>--}}
                                {{--<li><a href=""><i class="icofont-google-plus"></i></a></li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                        {{--<div class="blog-img">--}}
                            {{--<img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="">--}}
                        {{--</div>--}}
                        {{--<div class="blog-title">--}}
                            {{--<h3>Lorem Ipsum has been the industry's standard dummy</h3>--}}
                            {{--<ul>--}}
                                {{--<li><i class="icofont-hotel-boy"></i><a href="">{{$post->user->name}}</a></li>--}}
                                {{--<li><i class="icofont-clock-time"></i>{{ $post->created_at->diffForHumans() }}</li>--}}
                                {{--<li><i class="icofont-speech-comments"></i><a href="">Comments <span>(27)                                               </span></a></li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                        {{--<div class="blog-para">--}}
                            {{--{!! html_entity_decode($post->body) !!}--}}
                        {{--</div>--}}
                        {{--<div class="tag">--}}
                            {{--<ul>--}}
                                {{--@foreach($post->categories as $category)--}}
                                {{--<li><a href="">{{$category->name}}</a></li>--}}

                                {{--@endforeach--}}
                            {{--</ul>--}}
                            {{--<br>--}}
                            {{--<style>--}}
                                {{--.post-footer-single{display:flex; }--}}
                                {{--.post-footer-single li a {padding-left:10px;}--}}
                                {{--.post-footer-single li {background: #FFFFFF;}--}}


                            {{--</style>--}}
                            {{--<hr>--}}
                            {{--<ul  class="post-footer-single">--}}
                                {{--<li "><a href="#"><i class="material-icons">{{__('comments')}}</i></a></li>--}}
                                {{--<li>--}}
                                    {{--@guest--}}
                                        {{--<a href="javascript:void(0);" onclick="toastr.info('To add favorite list. You                                           need to login first.','Info',{--}}
                                    {{--closeButton: true,--}}
                                    {{--progressBar: true,--}}
                                {{--})"><i class="material-icons">{{__('favorite')}}</i>{{ $post->favorite_to_users->count                                       () }}</a>--}}
                                    {{--@else--}}
                                        {{--<a href="javascript:void(0);" onclick="document.getElementById                                                          ('favorite-form-{{ $post->id }}').submit();"--}}
                                         {{--class="{{ !Auth::user()->favorite_posts->where('pivot.post_id',$post->id)                                                ->count()  == 0 ? 'favorite_posts'                                                                                         : 'gray'}}"><i class="material-icons">{{__('favorite')}}</i>{{                                                            $post->favorite_to_users->count() }}</a>--}}

                                        {{--<form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorite',$post->id) }}"                                              style="display: none;">--}}
                                            {{--@csrf--}}
                                        {{--</form>--}}
                                    {{--@endguest--}}
                                {{--</li>--}}
                                {{--<li 5px; "><a href="#"><i class="material-icons">{{__('visibility')}}</i>{{ $post->view_count }}</a></li>--}}
                            {{--</ul>--}}
                            {{--<hr>--}}
                        {{--</div>--}}
                        {{--<div class="coment-area">--}}
                            {{--<h3>Comments</h3>--}}
                            {{--<div class="single-comment">--}}
                                {{--<div class="comment-img">--}}
                                    {{--<img src="assets/img/blog/single-blog/comment-1.jpg" alt="">--}}
                                {{--</div>--}}
                                {{--<div class="comment-detail">--}}
                                    {{--<h5>Hasib Sharif <span>5 hour</span></h5>--}}
                                    {{--<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>--}}
                                    {{--<a href="">Reply</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="single-comment ml-30">--}}
                                {{--<div class="comment-img">--}}
                                    {{--<img src="assets/img/blog/single-blog/comment-2.jpg" alt="">--}}
                                {{--</div>--}}
                                {{--<div class="comment-detail">--}}
                                    {{--<h5>Hasib Sharif <span>5 hour</span></h5>--}}
                                    {{--<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>--}}
                                    {{--<a href="">Reply</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="single-comment">--}}
                                {{--<div class="comment-img">--}}
                                    {{--<img src="assets/img/blog/single-blog/comment-3.jpg" alt="">--}}
                                {{--</div>--}}
                                {{--<div class="comment-detail">--}}
                                    {{--<h5>Hasib Sharif <span>5 hour</span></h5>--}}
                                    {{--<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>--}}
                                    {{--<a href="">Reply</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="single-comment  ml-30">--}}
                                {{--<div class="comment-img">--}}
                                    {{--<img src="assets/img/blog/single-blog/comment-4.jpg" alt="">--}}
                                {{--</div>--}}
                                {{--<div class="comment-detail">--}}
                                    {{--<h5>Hasib Sharif <span>5 hour</span></h5>--}}
                                    {{--<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>--}}
                                    {{--<a href="">Reply</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="single-comment">--}}
                                {{--<div class="comment-img">--}}
                                    {{--<img src="assets/img/blog/single-blog/comment-5.jpg" alt="">--}}
                                {{--</div>--}}
                                {{--<div class="comment-detail">--}}
                                    {{--<h5>Hasib Sharif <span>5 hour</span></h5>--}}
                                    {{--<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>--}}
                                    {{--<a href="">Reply</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="leave-comment">--}}
                            {{--<h3>Leave Comment</h3>--}}
                            {{--<form id="contactForm">--}}
                                {{--<div class="row">--}}
                                    {{--<div class="col-sm-12 col-md-6">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<input type="text" class="form-control" required data-error="Please enter your first name" name="First name" placeholder="Name">--}}
                                            {{--<div class="help-block with-errors"></div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="col-sm-12 col-md-6">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<input type="text" class="form-control" required data-error="Please enter your last name" name="Last name" placeholder="Name">--}}
                                            {{--<div class="help-block with-errors"></div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="col-sm-12 col-md-12">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<input type="email" class="form-control" required data-error="Please enter your email" name="email" placeholder="Email">--}}
                                            {{--<div class="help-block with-errors"></div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="col-sm-12 col-md-12">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<textarea class="form-controls" required data-error="Write your message" rows="5" placeholder="Message"></textarea>--}}
                                            {{--<div class="help-block with-errors"></div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="contact-btn">--}}
                                    {{--<button type="submit" class="cont-btn">Send Message</button>--}}
                                    {{--<div id="msgSubmit" class="h3 text-center hidden"></div>--}}
                                    {{--<div class="clearfix"></div>--}}
                                {{--</div>--}}
                            {{--</form>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
        {{--<section class="week-themes px fix">--}}
            {{--<div class="container">--}}
                {{--<div class="row">--}}
                    {{--@foreach($randompost as $post)--}}
                        {{--<div class="col-lg-4 col-md-6 col-sm-6 col-xl-3">--}}
                            {{--<div class="template">--}}
                                {{--<a href="{{route('post.details',$post->slug)}}">--}}
                                    {{--<img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="{{$post->title}}" />--}}
                                    {{--<h3>{!! str_limit($post->title,10) !!}</h3>--}}
                                {{--</a>--}}
                                {{--<p>{!! str_limit($post->body ,30)!!}</p>--}}
                                {{--<ul class="post_footer">--}}
                                {{--<li>--}}
                                {{--<a href="#"><i class="ion-eye"></i></a>--}}
                                {{--</li>--}}
                                {{--</ul>--}}
                                {{--<style>--}}
                                    {{--.favorite_posts{color:blue;}--}}
                                    {{--.post-footer{display:flex;}--}}
                                    {{--.post-footer li a {padding-left:10px;}--}}

                                {{--</style>--}}
                                {{--<ul class="post-footer" style="">--}}
                                    {{--<li "><a href="#"><i class="material-icons">{{__('comments')}}</i></a></li>--}}
                                    {{--<li>--}}
                                        {{--@guest--}}
                                            {{--<a href="javascript:void(0);" onclick="toastr.info('To add favorite list. You need to login first.','Info',{--}}
                                    {{--closeButton: true,--}}
                                    {{--progressBar: true,--}}
                                {{--})"><i class="material-icons">{{__('favorite')}}</i>{{ $post->favorite_to_users->count() }}</a>--}}
                                        {{--@else--}}
                                            {{--<a href="javascript:void(0);" onclick="document.getElementById('favorite-form-{{ $post->id }}').submit();"--}}
                                               {{--class="{{ !Auth::user()->favorite_posts->where('pivot.post_id',$post->id)->count()  == 0 ? 'favorite_posts'                                       : 'gray'}}"><i class="material-icons">{{__('favorite')}}</i>{{ $post->favorite_to_users->count() }}</a>--}}

                                            {{--<form id="favorite-form-{{ $post->id }}" method="POST" action="{{ route('post.favorite',$post->id) }}"                                              style="display: none;">--}}
                                                {{--@csrf--}}
                                            {{--</form>--}}
                                        {{--@endguest--}}
                                    {{--</li>--}}
                                    {{--<li 5px; "><a href="#"><i class="material-icons">{{__('visibility')}}</i>{{ $post->view_count }}</a></li>--}}
                                {{--</ul>--}}
                                {{--<a class="download" href="{{route('post.details',$post->slug)}}">READ MORE</a>--}}

                            {{--</div>--}}
                        {{--</div>--}}
                    {{--@endforeach--}}
                {{--</div>--}}
                {{--<div class="html-button text-center">--}}
                    {{--<a href="">VIEW ALL</a>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</section>--}}
    {{--</section>--}}
    {{--<!-- End Single Blog Area -->--}}
{{--@endsection--}}

{{--@push('js')--}}

{{--@endpush--}}
