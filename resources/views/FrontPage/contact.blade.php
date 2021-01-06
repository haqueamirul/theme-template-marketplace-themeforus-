@extends('layouts.frontend.app')
@section('title','Contact')
@push('css')
<link rel="stylesheet" href="{{asset('frontend/css/style3.css')}}" />
@endpush
@section('content')
	<div class="contact-img-area">
		<div class="contact-text">
			<h1>{{__('contact us')}}</h1>
		</div>
	</div>

	<div class="contact-form-area px">
		<div class="container">
			<div class="contact-title">
				<h1>write your message</h1>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry  Lorem Ipsum has been the industry's <br>Lorem Ipsum has been the industry's </p>
			</div>
				<div class="contact-from-area">
					<form action="{{route('contact.store')}}" method="POST">
              @csrf
						<div class="row">
							<div class="col-md-6">
								<div class="from-group">
									<input type="text" class="form-control" name="name" placeholder="Your Name" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="from-group">
									 <input type="email" class="form-control" name="email" placeholder="E-mail" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="from-group">
									 <input type="number" class="form-control" name="phone" placeholder="Phone" required="">
								</div>
							</div><div class="col-md-6">
								<div class="from-group">
									 <input type="text" class="form-control" name="website" placeholder="Website" required="">
								</div>
							</div>
						</div>
						<div class="from-group">
							 <textarea type="text" name="body" class="form-control" rows="5" placeholder="Your massage"></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn custom-btn">{{__('send message')}}</button>
						</div>
					</form>
				</div>
		</div>
	</div>
@endsection


@push('js')

@endpush
