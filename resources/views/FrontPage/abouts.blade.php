@extends('layouts.frontend.app')
@section('title','Abouts')
@push('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
<link rel="stylesheet" href="{{asset('frontend/css/about.css')}}" />
@endpush
@section('content')
    <div class="container">
        <div class="contact-img-area">
        <div class="contact-text">
            <h1>about us</h1>
        </div>
    </div>
    </div>
    <!-- about bg -->

    <!-- about area -->
    @foreach($abouts as $post)
    <div class="about-area px">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="about-left">
                        <img src="{{asset('storage/uploads/review/'.$post->image)}}" alt="img" />
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 ">
                    <div class="about-right">
                        <div class="about-right-text">
                            <h2>{{$post->title}}</h2>
                            <p class="about-up-text">
                              {!! html_entity_decode(str_limit($post->body,350)) !!}
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 ">
                </div>
            </div>
        </div>
    </div>
    @endforeach
    <!-- about area -->





    <!-- google map area -->

    <!-- downloadtemplate about service -->
    <div class="downloadtemplate-about-service px fix">
        <div class="container">
            <div class="row">
              @foreach($allreview as $key => $post)
              <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                  <div class="downloadtemplate-about-service-colum">
                      <img src="{{asset('storage/uploads/review/'.$post->image)}}" alt="" />
                      <div class="downloadtemplate-about-service-tag">
                          <h4>{{$post->title}}</h4>
                          <p>{!! html_entity_decode(str_limit($post->body,150)) !!}</p>
                      </div>
                  </div>
              </div>
              @endforeach
            </div>
        </div>
    </div>
    <!-- downloadtemplate about service -->
    <hr />
    <!-- DOWNLOADTEMPLATE-ABOUT-VIDEO -->
    @if(!empty($vedios))
    @foreach($vedios as $key => $vedio)
    <div class="downloadtemplate-about-video px">
            <div class="about-video">
                <video loop muted autoplay poster="#" class="video-background">
                    <source src="{{asset('storage/uploads/vedio/'.$vedio->vedio)}}" type="video/mp4">
                </video>
            </div>
    </div>
    @endforeach
    @endif
    <!-- DOWNLOADTEMPLATE-ABOUT-VIDEO -->
    <hr />
    <!-- downloadtemplate template youtube tutorial -->
    <!-- <div class="downloadtemplate-template-tutorial px fix ">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="downloadtemplate-template-tutorial-video-box">
                        <img src="assets/img/about/webdesign.jpg" alt="" />
                        <div class="downloadtemplate-template-tutorial-video-text">
                        <a href="#"><h4>web design tutorial</h4></a>
                        <p>Hundreds of free tutorials and online courses to help you learn web design</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4  col-sm-12">
                    <div class="downloadtemplate-template-tutorial-video-box">
                        <img src="assets/img/about/webdesign.jpg" alt="" />
                        <div class="downloadtemplate-template-tutorial-video-text">
                        <a href="#"><h4>wordpress tutorials</h4></a>
                        <p>Hundreds of free tutorials and online courses to help you learn web design</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4  col-sm-12">
                    <div class="downloadtemplate-template-tutorial-video-box">
                        <img src="assets/img/about/webdesign.jpg" alt="" />
                        <div class="downloadtemplate-template-tutorial-video-text">
                        <a href="#"><h4>html & css tutorials</h4></a>
                        <p>Hundreds of free tutorials and online courses to help you learn web design</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- downloadtemplate template youtube tutorial -->
    <hr /> -->

    <!-- downloadtemplate testimonial -->
        <!-- TESTIMONIALS -->
    <!-- <div class="downloadtemplate-template-testimonial px fix ">
        <div class="testimonial-title">
            <h2>our client say!</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div id="testimonial-slider" class="owl-carousel">
                        <div class="testimonial">
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium ad asperiores at atque culpa dolores eaque fugiat hic illo ipsam ipsum minima modi necessitatibus nemo officia, omnis perferendis placeat quaerat quas quis ratione rerum sint sit vitae. Animi architecto consequatur delectus eos id.
                            </p>
                            <div class="pic">
                                <img src="assets/img/client/client-2.jpg">
                            </div>
                            <h3 class="title">Williamson</h3>
                            <div class="rivew">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>

                            </div>
                        </div>
                        <div class="testimonial">
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium ad asperiores at atque culpa dolores eaque fugiat hic illo ipsam ipsum minima modi necessitatibus nemo officia, omnis perferendis placeat quaerat quas quis ratione rerum sint sit vitae. Animi architecto consequatur delectus eos id.
                            </p>
                            <div class="pic">
                                <img src="assets/img/client/client-1.jpg">
                            </div>
                            <h3 class="title">shahidul</h3>
                             <div class="rivew">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>

                            </div>
                        </div>
                          <div class="testimonial">
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium ad asperiores at atque culpa dolores eaque fugiat hic illo ipsam ipsum minima modi necessitatibus nemo officia, omnis perferendis placeat quaerat quas quis ratione rerum sint sit vitae. Animi architecto consequatur delectus eos id.
                            </p>
                            <div class="pic">
                                <img src="assets/img/client/client-1.jpg">
                            </div>
                            <h3 class="title">shahidul</h3>
                             <div class="rivew">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div> -->
@endsection

@push('js')
  <script src="{{('frontend/js/modernizr-2.6.2.min.js')}}"></script>
@endpush
