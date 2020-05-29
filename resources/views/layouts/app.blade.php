<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="{!! asset('/imagens/logo_ad.jpg') !!}"/>
  <meta http-equiv="Content-Language" content="pt-br">
  
 
    <style>
      

#paginator_familia>.pagination > .active > a
{
    color: white;
    background-color: #38c172 !Important;
    border: solid 1px #38c172 !Important;
}
      
      #paginator_usuario>.pagination > .active > a
{
    color: white;
    background-color: #ff9933 !Important;
    border: solid 1px #ff9933 !Important;
}
      
           #paginator_administrador>.pagination > .active > a
{
    color: white;
    background-color: #c4ff4d !Important;
    border: solid 1px #c4ff4d !Important;
}
                 #paginator_regional>.pagination > .active > a
{
    color: white;
    background-color: #e3342f !Important;
    border: solid 1px #e3342f !Important;
}
      
                       #paginator_congregacao>.pagination > .active > a
{
    color: white;
    background-color: #ffe019 !Important;
    border: solid 1px #ffe019 !Important;
}
      
      
/*!
 * Start Bootstrap - Simple Sidebar (https://startbootstrap.com/)
 * Copyright 2013-2016 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap/blob/gh-pages/LICENSE)
 */


body {
    overflow-x: hidden;
 }
      
      table{

   white-space: nowrap;

}

 .modal{zoom:90%;}

/* Toggle Styles */

#wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled {
    padding-left: 250px;
}

#sidebar-wrapper {
    z-index: 1000;
    position: fixed;
    left: 250px;
    width: 0;
    height: 100%;
    margin-left: -250px;
    overflow-y: auto;
    background: #212529;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled #sidebar-wrapper {
    width: 250px;
}

#page-content-wrapper {
    width: 100%;
    position: absolute;
    padding-left:2%;
    padding-right:2%;
}

#wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -250px;
}

/* Sidebar Styles */

.sidebar-nav {
    position: absolute;
    top: 0;
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
}

.sidebar-nav li {
    text-indent: 20px;
    line-height: 40px;
}

.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: white;
}

.sidebar-nav li a:hover {
    text-decoration: none;
    color: ;
    background: rgba(255,255,255,0.2);
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
    text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
    height: 65px;
    font-size: 18px;
    line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
    color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
    color: #fff;
    background: none;
}
      

@media  (min-width:100px) and (max-width:800px){
      #tela{
           padding-top:20%;
        }
  
   #pesquisar{
     height:10%;
        width:55%;
  }
  
  #pesquisar-btn{
    
         font-size: 12px; !important;

    
      width:20%;
  }
  
  #btnCadastra{
             width:12%;
    height:34px;
    margin-right: 11%;
  }
  
   #icons{
      font-size: 15px;
        }
  
  #plus-icon{
      font-size: 5px;
        }

  
  #group-2{
    
       width:85%;
  
  }
  
  #btn-exclui{
  
   height:100%;
   margin-bottom:2%;
     margin-top:2%;
     margin-left:4%;
  
  }

      }
      


@media  (min-width:801px) and (max-width:2000px){
    #wrapper {
        padding-left: 250px;
    }
  
  #sobrenome_familia{
    width:30%;
  }
 
  #mae-group{
  margin-left:6px;width:59.4%;"
  }
  
    #pai-group{
  margin-left:6px;width:59.4%;"
  }
  
  #group-1{
   width:125%;
     margin-left:3%;
    margin-right:0px;
     padding-right:0px;
  }
  
  #group-3{
    
       width:58%;
  
  }
  
  #btn-exclui{
  
   height:70%
  
  }
  
    #tela{
           padding-top:6%;
    }
  
    #menu_celular{
         display: none;
        }
  
   
   #pesquisar{
     
    margin-top:4% !important;
     width:27%;
  }
  
  #pesquisar-btn{
    
    margin-top:4% !important;
             
  }
  
  #btnCadastra{
             width:10%;
    margin-right:50% !important;
    height:80px !important;
    margin-right: 11%;
  }
  
   #icons{
      font-size: 30px;
        }
  
  
  

    #wrapper.toggled {
        padding-left: 0;
    }

    #sidebar-wrapper {
        width: 250px;
    }

    #wrapper.toggled #sidebar-wrapper {
        width: 0;
    }

    #page-content-wrapper {
        padding-top: 0px;
        position: relative;
    }

    #wrapper.toggled #page-content-wrapper {
        position: relative;
        margin-right: 0;
    }
}
</style>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('Gestão Famíliar', 'Gestão Familiar') }}</title>

    <!-- Scripts -->
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Styles -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm fixed-top">
            <div class="container">
                <img src="{{ asset('/imagens/logo_ad.jpg') }}" width="40" height="30" class="d-inline-block " alt="" >  
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                      
                         <ul class="navbar-nav mr-auto" id='menu_celular'>
                           
                           @if(Auth::guard('admin')->check())
                             <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/admin">Inicio</a>
      </li>
                      
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/admin/pessoas">Pessoas</a>
      </li>
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/admin/familias">Familias</a>
      </li> 
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/admin/usuarios">Usuarios</a>
      </li>
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/admin/administradores">Administradores</a>
      </li>
                     
                      
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/admin/regionais">Regionais</a>
      </li>
                          <li class="nav-item">
        <a class="nav-link " href="http://gestaofamiliar.jelastic.saveincloud.net/admin/congregacoes">Congregações</a>
      </li>
                              <li class="nav-item">
                    <a href="/admin/relatorios">Relatórios</a>
                </li>
@else
                           
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/home">Inicio</a>
      </li>
                      
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/pessoas">Pessoas</a>
      </li>
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/familias">Familias</a>
      </li> 
           
                     
                      
                          <li class="nav-item">
        <a class="nav-link" href="http://gestaofamiliar.jelastic.saveincloud.net/regionais">Regionais</a>
      </li>
                          <li class="nav-item">
        <a class="nav-link " href="http://gestaofamiliar.jelastic.saveincloud.net/congregacoes">Congregações</a>
      </li>
                              <li class="nav-item">
                    <a href="/relatorios">Relatórios</a>
                </li>
@endif
                      
                      </ul>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main id="tela">
            @yield('content')
        </main>
    </div>
</body>
</html>





























