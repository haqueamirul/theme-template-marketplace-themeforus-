@extends('layouts.frontend.app')
@section('title','Register')

@section('content')
<div class="modal-dialog modal-dialog-centered" role="document">
<div class="modal-content">
  <div class="modal-header header-img">
  <img src="{{asset('frontend/img/logo/logo.png')}}" alt="png">
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  </div>
  <div class="modal-body">
  <div id="login-form">
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
  					<input name="email" value="{{ old('email') }}" type="text" class="form-control" id="email" placeholder="Password" required data-error="*Please fill out this field">
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

  							<input type="radio" name="seller" value="{{ old('seller') }}"> Author<br>
    							<input type="radio" name="buyer" value="{{ old('buyer') }}"> Buyer<br>
  							<!-- <label class="hide"><input type="checkbox"></label> -->
  							<!-- <label for="checkbox2"><span><a href="#">Terms & Conditions</a></span></label> -->
  						</div>
  					</div>
  					<div class="pull-right">
              <button type="submit" class="btn btn-primary">
                  {{ __('Register') }}
              </button>
  						<div id="msgSubmit" class="h3 text-center hidden"></div>
  						<div class="clearfix"></div>
  					</div>
  				</div><!-- / log-line -->
     </div>
  </div>
</form>
</div>
</div>
</div>
@endsection
