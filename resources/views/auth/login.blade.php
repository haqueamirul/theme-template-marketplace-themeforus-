@extends('layouts.frontend.app')
@section('title','Login')
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

@endsection
