<!-- HEADER -->

   <!-- TOP BAR -->
   <div class="top_bar">
       <div class="container">
           <div class="row">
               <div class="col-md-12 col-lg-5">
                   <div class="top_bar_contact_item">
                       <ul>
                      
                           <!--<li style="color: #fff;"><i class="icofont-icofont-envelope-open"></i> {{ __('info@themeforest.com') }}</li>-->
                          <li>
                               <i class="icofont-envelope-open icon"></i> 
                               <a href="mailto:downloadtemplate@gmail.com">{{ __('info@themeforus.com') }}</a>
                           </li>
                          
                       </ul>
                   </div>
               </div>
               <div class="col-md-12 col-lg-7">
                   <div class="top_bar_content ml-auto">
                       <div class="row">
                           <div class="col-md-6 col-sm-12">
                               <div class="top_bar_menu">

                               </div>
                           </div>
                            @guest
                            <div class="col-md-6 col-sm-12">
               								<div class="top_bar_user">
               									<div class="user_icon"><i class="icofont-user-alt-3"></i></div>
               									<div><a href="#" data-toggle="modal" data-target="#exampleModal">Register</a></div>
               									<div><a href="{{route('login')}}" data-toggle="modal" data-target="#exampleModallogin">Sign in</a></div>
               								</div>
               							</div>
                            @else
                            <div class="d-inline-block fh5co_trading_posotion_relative"><a href="
                                @if(Auth::user()->role->id ==1){{route('admin.dashboard')}}
                                @else
                                {{route('admin.dashboard')}}
                                @endif
                                " class="treding_btn">{{ __('DASHBOARD') }}</a>
                                <div class="fh5co_treding_position_absolute"></div>
                            </div>
                            <div class="d-inline-block fh5co_trading_posotion_relative">
                                <a  class="treding_btn" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">{{ __('LOGOUT') }}</a>

                                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                  </form>
                                <div class="fh5co_treding_position_absolute"></div>
                            </div>
                           @endguest
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
   <!-- END TOP BAR -->
   <!-- model -->
   <!-- Button trigger modal -->

   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 	  <div class="modal-dialog modal-dialog-centered" role="document">
 		<div class="modal-content">
 		  <div class="modal-header header-img">
 			<img src="{{asset('frontend/img/logo/whitelogo.png')}}" alt="png">
 			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 			  <span aria-hidden="true">&times;</span>
 			</button>
 		  </div>
 		  <div class="modal-body">
        <form method="POST" action="{{ route('register') }}">
            @csrf
 			<div id="register-form">
 				<h3 class="log-title">Register</h3>
        <form method="POST" action="{{ route('register') }}">
            @csrf
 				<div class="form-group">
 					<input name="name" value="{{ old('name') }}" type="text" class="form-control" id="name" placeholder="Name" required data-error="*Please fill out this field">
 					<div class="help-block with-errors"></div>
 				</div>
 				<div class="form-group">
 					<input name="username" value="{{ old('username') }}" type="text" class="form-control" id="username" placeholder="Username" required>
 					<div class="help-block with-errors"></div>
 				</div>
 				<div class="form-group">
 					<input name="email" value="{{ old('email') }}" type="text" class="form-control" id="email" placeholder="Email" required data-error="*Please fill out this field">
 					<div class="help-block with-errors"></div>
 				</div>
 				<div class="form-group">
 					<input name="password"   type="password" class="form-control" id="password" placeholder="Password" required>
 					<div class="help-block with-errors"></div>
 				</div>
        <div class="form-group">
 					<input name="password_confirmation" type="password" class="form-control" id="cpassword" placeholder="Confirm Password" required>
 					<div class="help-block with-errors"></div>
 				</div>
 				<!-- log-line -->
 				<div class="log-line reg-form-1 no-margin">
 					<div class="pull-left">
 						<div class="checkbox checkbox-primary space-bottom">

 							<!-- <input type="radio" name="seller" value="1"> Author<br>
   							<input type="radio" name="buyer" value="1"> Buyer<br> -->
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="seller" id="exampleRadios1" value="1" checked>
                  <label class="form-check-label" for="seller">
                    Author
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="seller"  id="exampleRadios2" value="2">
                  <label class="form-check-label" for="seller">
                    Buyer
                  </label>
                </div>
 							<!-- <label class="hide"><input type="checkbox"></label> -->
 							<!-- <label for="checkbox2"><span><a href="#">Terms & Conditions</a></span></label> -->
 						</div>
 					</div>
 					<div class="pull-right">
 						<button type="submit" id="reg-submit" class="btn btn-md btn-success-filled btn-log">Register</button>
 						<div id="msgSubmit" class="h3 text-center hidden"></div>
 						<div class="clearfix"></div>
 					</div>
 				</div><!-- / log-line -->
 			</div>
    </form>
 		  </div>
 		</div>
 	  </div>
 	</div>
 	<!-- Button trigger modal -->
 		<!-- Modal -->
 		<div class="modal fade" id="exampleModallogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 		  <div class="modal-dialog modal-dialog-centered" role="document">
 			<div class="modal-content">
 			  <div class="modal-header header-img">
 				<img src="{{asset('frontend/img/logo/whitelogo.png')}}" alt="png">
 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
 				  <span aria-hidden="true">&times;</span>
 				</button>
 			  </div>
 			  <div class="modal-body">
 				<div id="login-form">
               <h3 class="log-title">Log In</h3>
               <form method="POST" action="{{ route('login') }}">
                   @csrf
               <div class="form-group">
                   <input name="email" value="{{ old('email') }}" type="email" class="form-control" id="email" placeholder="Email" required data-error="*Please fill out this field">
                   <div class="help-block with-errors"></div>
               </div>
               <div class="form-group">
                   <input name="password" type="password" class="form-control" id="password" placeholder="Password" required>
                   <div class="help-block with-errors"></div>
               </div>
               <!-- log-line -->
               <div class="log-line">
                   <div class="pull-left">
                       <div class="checkbox checkbox-primary space-bottom">
                           <label class="hide"><input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}></label>

                           <label for="checkbox1"><span>Remember Me</span></label>
                       </div>
                   </div>
                   <div class="pull-right">
                       <button type="submit" id="log-submit" class="btn btn-md btn-success-filled btn-log">Log In</button>
                       <div id="msgSubmit" class="h3 text-center hidden"></div>
                       <div class="clearfix"></div>
                   </div>
               </div><!-- / log-line -->
               @if (Route::has('password.request'))
                   <a class="btn btn-link" href="{{ route('password.request') }}">
                       {{ __('Forgot Your Password?') }}
                   </a>
               @endif
           </div>
 			  </div>
      </form>
 			</div>
 		  </div>
 		</div>
   <!-- <div class="top_logo_area">
       <div class="container-fluid">
           <div class="row">
               <div class="col-md-12">
                   <div class="main-logo">
                       <a href="#"><img src="{{asset('frontend/img/logo/logo.png')}}" alt=""></a>
                   </div>
               </div>
           </div>
       </div>
   </div> -->
   <!-- Main Menu Area -->
   <div class="main-menu-area">
       <div class="container">
           <div class="row">
             <div class="col-lg-3 col-md-4">
      					<div class="logo">
                <a href="{{route('home')}}">
      						<img src="{{asset('frontend/img/logo/logo.png')}}" alt="img">
                  </a>
      					</div>
      				</div>
               <div class="col-lg-9 col-md-813126545">
                   <div class="main-menu navbar-collapse">
                       <ul class="navbar-nav mr-auto">
                           <li class="nav-item">
                               <a href="{{route('home')}}" class="nav-link active">{{__('Home')}}</a>
                           </li>
                           <li class="nav-item">
                               <a href="{{route('all.posts')}}" class="nav-link">{{__('All Items')}}</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link">{{__('WordPress')}} <!-- {{$categories->count()}} --><i class="icofont-simple-down"></i></a>
                               <ul>
                                   <li>
                                       @foreach($categories as $category)
                                           <li><a class="nav-link" href="{{route('category.posts',$category->slug)}}">{{$category->name}}</a></li>
                                       @endforeach

                               </ul>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link">{{__('HTML')}} <!-- {{$tags->count()}} --><i class="icofont-simple-down"></i></a>
                               <ul>
                                   @foreach($tags as $tag)
                                   <li><a href="{{route('tag.posts',$tag->slug)}}">{{$tag->name}}</a></li>
                                   @endforeach

                               </ul>
                           </li>
                           <li>
                               <a href="{{route('contact.create')}}">Contact</a>
                           </li>
                           <li>

                               <a href="{{route('abouts')}}">{{__('About')}}</a>
                           </li>
                       </ul>
                   </div>
               </div>
           </div>
       </div>
   </div>
   <!-- End Main Menu Area -->
   <!-- HEADER -->
