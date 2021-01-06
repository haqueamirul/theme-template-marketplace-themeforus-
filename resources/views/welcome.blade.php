@extends('layouts.frontend.app')
@section('title','Home')
@push('css')
<style>
    a.favorite_posts{
      background: blue;
    }
</style>
@endpush
@section('content')
    <div class="benar-area">
        <div class="heading-text">
            <h1>{{$posts->count()}} {{__('WordPress Themes & Website Templates From $2')}}</h1>
            <p>{{__('WordPress themes, web templates and more. Brought to you by the largest global community of creatives.')}}</p>
            <div class="header_search">
                <div class="header_search_content">
                    <div class="header_search_form_container">
                        <form method="GET" action="{{route('search')}}" class="header_search_form clearfix text-center">
                            <input name="query" type="text" required="required" class="header_search_input" placeholder="Search for products...">
                            <button type="submit" class="header_search_button trans_300" value="Submit"><img src="{{asset('frontend/img/search.png')}}" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End benar -->
    <!-- week-templates -->
    <section class="week-template px fix">
        <div class="container">
            <div class="section-title">
                <h2>{{__('Our Featured html templates of the week')}}</h2>
                <p>Every week we hand-pick some of the best new website html template from our collection. These beautiful templates are making our heads turn!</p>
            </div>
            <div class="row">
            {{-- {{route('category.posts',$category->slug)}} --}}
                @foreach($latestposts as $latestpost)
                <div class="col ">
                    <div class="templates">
                        <a href="{{route('post.details',$latestpost->slug)}}">
                            <img src="{{asset('storage/uploads/post/'.$latestpost->image)}}" alt="{!! str_limit($latestpost->title,7) !!}" />
                            <h4>{!! str_limit($latestpost->title,7) !!}</h4>
                        </a>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!--End week-templates -->
    <!-- html template -->
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
        						<p class="p-border">{!! str_limit($post->body ,40)!!}</p>

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
            </div>
            <div class="html-button text-center">
                <a href="{{route('all.posts')}}">{{__('VIEW ALL')}}</a>
            </div>
        </div>
    </section>
    <!--End html template -->
    <hr />
    <!-- wp-themes -->
        <section class="week-themes px fix">
        <div class="container">
            <div class="section-title">
                <h2>{{__('Free html templates')}}</h2>
                <p>{{__('Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!')}}</p>
            </div>
            <div class="row">
                @foreach($allposts as $post)
                <div class="col-lg-4 col-md-6 col-sm-6">
        					<div class="template">
        						<a href="{{route('post.details',$post->slug)}}">
        							<img src="{{asset('storage/uploads/post/'.$post->image)}}" alt="{{$post->title}}" />
        							<h3>{!! str_limit($post->title,10) !!}</h3>
        						</a>
        						<p class="p-border">{!! str_limit($post->body ,40)!!}</p>

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
            </div>
            <div class="html-button text-center">
                <a href="{{route('all.posts')}}">VIEW ALL</a>
            </div>
        </div>
    </section>
    <!-- End wp-themes -->
    <!-- service area -->
     <!-- START SERVICES-->
    <!--<section class="services page-spy px" id="services">-->
    <!--  <div class="container">-->
    <!--    <div class="row">-->
          <!-- Start Mobile Slider Content-->
    <!--      <div class="col-lg-7 col-md-12 order-lg-7 order-md-12 rotate-inner wow fadeInLeft" data-wow-duration="1s">-->
    <!--        <div class="rotate-content">-->
              <!-- Start Slider Links-->
    <!--          <ul class="nav nav-pills mobile-nav-pills nav-stacked">-->
    <!--            @foreach($protfolios as $key => $protfolio)-->
    <!--            @if($protfolio->id <=1)-->
    <!--            <li class="active-icon" data-owl-item="0"><a href="#tab_a" data-toggle="pill"><i class="fab fa-intercom"></i></a></li>-->
    <!--            @elseif($protfolio->id >= 0)-->
    <!--            <li data-owl-item="{{$protfolio->id}}"><a href="#tab_{{$protfolio->slug}}" data-toggle="pill">-->
    <!--             @if($protfolio->id == 1)<i class="fas fa-tape"></i>-->
    <!--              @elseif($protfolio->id == 2) <i class="fas fa-tape"></i>-->
    <!--              @elseif($protfolio->id == 3) <i class="fas fa-tape"></i>-->
    <!--               @elseif($protfolio->id == 4) <i class="fas fa-tape"></i>-->
    <!--               @elseif($protfolio->id == 5) <i class="fas fa-tape"></i>-->
    <!--               @elseif($protfolio->id == 6) <i class="fas fa-tape"></i>-->
    <!--               @elseif($protfolio->id == 7) <i class="fas fa-tape"></i>-->
    <!--                @elseif($protfolio->id == 8) <i class="fas fa-tape"></i>-->
    <!--                @elseif($protfolio->id == 9) <i class="fas fa-tape"></i>-->
    <!--                @elseif($protfolio->id == 10) <i class="fas fa-tape"></i>-->
    <!--                @elseif($protfolio->id == 11) <i class="fas fa-tape"></i>-->
    <!--                @elseif($protfolio->id == 12) <i class="fas fa-tape"></i>-->

    <!--                 @endif-->
    <!--             </a></li>-->
    <!--            @endif-->
    <!--            @endforeach-->
    <!--          </ul>-->
              <!-- End Slider Links-->
    <!--          <div class="tab-content">-->
    <!--            @foreach($protfolios as $protfolio)-->
                <!-- Start Single One-->
    <!--            <div class="tab-pane mobile-tab-pane {{ $loop->first ? 'active' : '' }}" id="tab_{{$protfolio->slug}}" data-owl-item="{{$protfolio->id}}">-->
    <!--              <div class="tab-inner">-->
    <!--                   @if($protfolio->id == 1)<i class="lni-bar-chart"></i>-->
    <!--                  @elseif($protfolio->id == 2) <i class="lni-world"></i>-->
    <!--                  @elseif($protfolio->id == 3) <i class="lni-mobile"></i>-->
    <!--                   @elseif($protfolio->id == 4) <i class="lni-gallery"></i>-->
    <!--                   @elseif($protfolio->id == 5) <i class="lni-user"></i>-->
    <!--                   @elseif($protfolio->id == 6) <i class="lni-bulb"></i>-->
    <!--                   @elseif($protfolio->id == 7) <i class="lni-cog"></i>-->
    <!--                    @elseif($protfolio->id == 8) <i class="lni-link"></i>-->
    <!--                    @elseif($protfolio->id == 9) <i class="lni-layers"></i>-->
    <!--                    @elseif($protfolio->id == 10) <i class="lni-anchor"></i>-->
    <!--                    @elseif($protfolio->id == 11) <i class="lni-cloud-download"></i>-->
    <!--                    @elseif($protfolio->id == 12) <i class="lni-world"></i>-->
    <!--                     @endif-->
    <!--                <h4>{{$protfolio->title}}</h4>-->
    <!--              </div>-->
    <!--            </div>-->
                <!-- End Single One-->
    <!--            @endforeach-->
    <!--          </div>-->
    <!--        </div>-->
    <!--      </div>-->
    <!--      <div class="col-lg-5 col-md-12 order-lg-5 order-md-12">-->
    <!--        <div class="feat03-slider owl-carousel owl-theme wow fadeInRight" data-wow-duration="1s">-->
              <!-- Start Single Item-->
    <!--          @foreach($protfolios as $protfolio)-->
    <!--          <div class="item">-->
    <!--            <div class="service-box"><span class="welcome">{{$protfolio->sub_title}}</span>-->
    <!--              <h3>{{$protfolio->title}}</h3>-->
    <!--              <p>{!! html_entity_decode(str_limit($post->body,350)) !!} </p>-->
    <!--            </div>-->
    <!--          </div>-->
    <!--           @endforeach-->
              <!-- End Single Item-->
    <!--        </div>-->
            <!-- End Mobile Slider-->
    <!--      </div>-->
    <!--    </div>-->
    <!--  </div>-->
    <!--</section>-->
    <!-- END SERVICES-->
    <!-- Subscribe area -->
    <!--<section class="Subscribe px fix">-->
    <!--    <div class="container">-->
    <!--        <div class="section-title">-->
    <!--            <h2>Subscribe For New Item</h2>-->
    <!--            <p>If you want to be the first to find out more about our colorful-->
    <!--            WordPress themes and html template please subscribe to our newsletter</p>-->
    <!--        </div>-->
    <!--        <div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">-->
    <!--            <div class="single-meadle">-->
    <!--              <div class="title">-->
    <!--                    <div class="newsletter-details">-->
    <!--                        <form action="{{route('subscriber.store')}}" method="POST">-->
    <!--                            @csrf-->
    <!--                            <div class="row clearfix">-->
    <!--                            <input name="email" type="email" placeholder="Email Address" />-->
    <!--                         <button type="submit">{{__('SUBSCRIBE')}}</button>-->
    <!--                        </form>-->
    <!--                    </div>-->
    <!--                </div>-->
    <!--            </div> -->
    <!--            <div class="col-lg-6 col-md-8 col-sm-6 p-0 text-right">-->
    <!--                <div class="subscribes">-->
    <!--                    <form method="POST" action="{{route('subscriber.store')}}">-->
    <!--                        @csrf-->
    <!--                        <input type="email" value="" name="email" class="email " id="mce-EMAIL" placeholder="email address" >-->
    <!--                    </form>-->
    <!--                </div>-->
    <!--            </div> -->
    <!--          <div class="col-lg-6 col-md-4 col-sm-6  p-0 text-left">-->
    <!--                <div class="subscribes-btn">-->
    <!--                    <a href="">{{__('Subscribe')}}</a>-->
    <!--                </div>-->
    <!--            </div> -->
    <!--        </div>-->
    <!--    </div>-->
    <!--</section>-->
    <!--end Subscribe area -->
    <!--End service area -->
@endsection
@push('js')

@endpush
