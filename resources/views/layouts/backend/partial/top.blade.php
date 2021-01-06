    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="{{route('admin.dashboard')}}">{{ __('DownloadTemplate Amdin') }}</small></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->
                    <!-- <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li> -->

                    <!-- #END# Notifications -->
                    <!-- Tasks -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="material-icons">person</i>
                            <span class="label-count">{{ Auth::user()->name}}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">
                            @if(Auth::check() && Auth::user()->role->id == 1)
                            <h4 class="bg-green">{{ __('Super Admin') }}</h4>
                            @elseif(Auth::user()->role->id == 2 && Auth::user()->seller == 1)
                            <span class="btn btn-info">{{ __('Author') }}</span>
                            @elseif( Auth::user()->role->id == 2 && Auth::user()->seller == 2)
                            <span class="btn btn-info">{{ __('Buyer') }}</span>
                            @else
                           <h4 class="bg-red"> {{ __('Please filup your category') }}</h4>
                            @endif
                            </li>
                            <li class="body">
                                <ul class="menu tasks">
                                    <li>
                                        <a href="{{route('user.settings.settings')}}">
                                            <h4>
                                                {{__('Profile')}}
                                            </h4>
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                         <a style="color:black;font-weight: bold; font-size: 20px;" class="dropdown-item btn btn-danger" href="{{ route('logout') }}"
                                               onclick="event.preventDefault();
                                                             document.getElementById('logout-form').submit();">

                                            <i class="material-icons" style="margin-right: 10px;">{{__('input')}}</i>{{ __('Logout') }}</a>

                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                   </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- #END# Tasks -->
                    <!-- <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li> -->
                </ul>
            </div>
        </div>
    </nav>
