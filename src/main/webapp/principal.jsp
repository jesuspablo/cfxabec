<%@page import="net.daw.helper.EstadoHelper"%>
<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<%@page import="net.daw.helper.AppInformationHelper"%>

<%
    int id_tipousuario = 0, id_usuario = 0;
    UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");
    if (user != null) {
        id_tipousuario = user.getId_tipousuario();
        id_usuario = user.getId();
    }
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
    <head>
        <title>Ies Monte Alen</title>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">    
        <link rel="shortcut icon" href="favicon.ico">  
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>   
        <!-- Global CSS -->
        <link rel="stylesheet" href="css/css_principal/bootstrap.min.css">   
        <!-- Plugins CSS -->    
        <link rel="stylesheet" href="css/css_principal/font-awesome.css">
        <link rel="stylesheet" href="css/css_principal/flexslider.css">
        <!-- <link rel="stylesheet" href="assets/plugins/pretty-photo/css/prettyPhoto.css"> -->
        <!-- Theme CSS -->      
        <link id="theme-style" rel="stylesheet" href="css/css_principal/style.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-24707561-9', 'auto');
            ga('send', 'pageview');

        </script>
        <!-- Facebook Pixel Code -->
        <script>
            !function (f, b, e, v, n, t, s) {
                if (f.fbq)
                    return;
                n = f.fbq = function () {
                    n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)};if (!f._fbq)
                    f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window,
                    document, 'script', '//connect.facebook.net/en_US/fbevents.js');

            fbq('init', '1506230579705064');
            fbq('track', "PageView");</script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=1506230579705064&ev=PageView&noscript=1"
                   /></noscript>
    <!-- End Facebook Pixel Code -->
</head> 

<body class="home-page">
    <div class="wrapper">
        <!-- ******HEADER****** --> 
        <header class="header">  
            <div class="top-bar">
                <div class="container">              
                    <ul class="social-icons col-md-6 col-sm-6 col-xs-12 hidden-xs">
                        <li><a href="#" ><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" ><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" ><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#" ><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#" ><i class="fa fa-google-plus"></i></a></li>         
                        <li class="row-end"><a href="#" ><i class="fa fa-rss"></i></a></li>             
                    </ul><!--//social-icons-->
                    <form class="pull-right search-form" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search the site...">
                        </div>
                        <button type="submit" class="btn btn-theme">Go</button>
                    </form>         
                </div>      
            </div><!--//to-bar-->
            <div class="header-main container">
                <h1 class="logo col-md-4 col-sm-4">
                    <a href="index.html"><img id="logo" src="./images/images_principal/logo.png" alt="Logo"></a>
                </h1><!--//logo-->           
                <div class="info col-md-8 col-sm-8">
                    <ul class="menu-top navbar-right hidden-xs">                           
                        <li><a href="jsp?op=login01&amp;ob=usuario">Log in</a></li>
                    </ul><!--//menu-top-->
                    <br />
                    <div class="contact pull-right">
                        <p class="phone"><i class="fa fa-phone"></i>Contactanos 963 389 882</p> 
                        <p class="email"><i class="fa fa-envelope"></i><a href="#">email: info@xabec.es</a></p>
                    </div><!--//contact-->
                </div><!--//info-->
            </div><!--//header-main-->
        </header><!--//header-->

        <!-- ******NAV****** -->
        <nav class="main-nav" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active nav-item"><a href="index.html">Portada</a></li>
                        <li class="nav-item"><a href="events.html">Noticias</a></li>
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">Centro <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="courses.html">Organización</a></li>
                                <li><a href="course-single.html">Proyectos</a></li>
                                <li><a href="course-single-2.html">Programación de Aulas</a></li>  
                                <li><a href="course-single-2.html">Horario</a></li>
                                <li><a href="course-single-2.html">Comedor</a></li>                                        
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">Padres <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="news.html">A.m.p.a</a></li>
                                <li><a href="news-single.html">Ítaca-familias</a></li>                                             
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">Alumnos <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="about.html">Becas</a></li>
                                <li><a href="team.html">Antiguos alumnos</a></li>                                                                                 
                            </ul>
                        </li><!--//dropdown-->
                        <li class="nav-item"><a href="contact.html">Profesores</a></li>
                        <li class="nav-item"><a href="contact.html">Contact</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </div><!--//container-->
        </nav><!--//main-nav-->

        <!-- ******CONTENT****** --> 
        <div class="content container">
            <div id="promo-slider" class="slider flexslider">
                <ul class="slides">
                    <li>
                        <img src="./images/images_principal/slide-1.jpg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Únete para ver nuestros programas en línea</span>
                            <br />
                            <span class="secondary clearfix" >Ventajas para antiguos alumnos</span>
                        </p>
                    </li>
                    <li>
                        <img src="./images/images_principal/slide-2.jpg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Jornada de puertas abiertas</span>
                            <br />
                            <span class="secondary clearfix" >Tendremos variadad de actividades para alumnos y profesores</span>
                        </p>
                    </li>
                    <li>
                        <img src="./images/images_principal/slide-3.jpg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Descubre los Cursos Online</span>
                            <br />
                            <span class="secondary clearfix" >Unete y elija el curso que mejor le convenga</span>
                        </p>
                    </li>
                    <li>
                        <img src="./images/images_principal/slide-4.jpg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Becas de comedor para nuestros alumnos</span>
                            <br />
                            <span class="secondary clearfix" >Ofrecemos opurtunidades para nuestros alumnos</span>
                        </p>
                    </li>
                </ul><!--//slides-->
            </div><!--//flexslider-->
            <section class="promo box box-dark">        
                <div class="col-md-9">
                    <h1 class="section-heading">¿Por qué optar por estudiar</h1>
                    <p>Es importante porque la consecuencia de no estudiar es la ignorancia, y los ignorantes son víctimas fáciles de la manipulación personal y social.  </p>  
                    <p>No te arriesgues a dejar de ser una persona para comenzar a ser un instrumento: estudia. No mereces menos que ser un mejor ser humano.</p>
                </div>  
                <div class="col-md-3">
                    <a class="btn btn-cta" href="#"><i class="fa fa-play-circle"></i>Apply Now</a>  
                </div>
            </section><!--//promo-->
            <section class="news">
                <h1 class="section-heading text-highlight"><span class="line">Latest News</span></h1>     
                <div class="carousel-controls">
                    <a class="prev" href="#news-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                    <a class="next" href="#news-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                </div><!--//carousel-controls--> 
                <div class="section-content clearfix">
                    <div id="news-carousel" class="news-carousel carousel slide">
                        <div class="carousel-inner">
                            <div class="item active"> 
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Phasellus scelerisque metus</a></h2>
                                    <img class="thumb" src="./images/images_principal/news-thumb-1.jpg"  alt="" />
                                    <p>Suspendisse purus felis, porttitor quis sollicitudin sit amet, elementum et tortor. Praesent lacinia magna in malesuada vestibulum. Pellentesque urna libero.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>                
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Morbi at vestibulum turpis</a></h2>
                                    <p>Nam feugiat erat vel neque mollis, non vulputate erat aliquet. Maecenas ac leo porttitor, semper risus condimentum, cursus elit. Vivamus vitae libero tellus.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-2.jpg"  alt="" />
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Aliquam id iaculis urna</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum mauris eget sapien consectetur pellentesque. Proin elementum tristique euismod. </p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-3.jpg"  alt="" />
                                </div><!--//news-item-->
                            </div><!--//item-->
                            <div class="item"> 
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Phasellus scelerisque metus</a></h2>
                                    <img class="thumb" src="./images/images_principal/news-thumb-4.jpg"  alt="" />
                                    <p>Suspendisse purus felis, porttitor quis sollicitudin sit amet, elementum et tortor. Praesent lacinia magna in malesuada vestibulum. Pellentesque urna libero.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>                
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Morbi at vestibulum turpis</a></h2>
                                    <p>Nam feugiat erat vel neque mollis, non vulputate erat aliquet. Maecenas ac leo porttitor, semper risus condimentum, cursus elit. Vivamus vitae libero tellus.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-5.jpg"  alt="" />
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Aliquam id iaculis urna</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum mauris eget sapien consectetur pellentesque. Proin elementum tristique euismod. </p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-6.jpg"  alt="" />
                                </div><!--//news-item-->
                            </div><!--//item-->
                        </div><!--//carousel-inner-->
                    </div><!--//news-carousel-->  
                </div><!--//section-content-->     
            </section><!--//news-->
            <div class="row cols-wrapper">
                <div class="col-md-3">
                    <section class="events">
                        <h1 class="section-heading text-highlight"><span class="line">Events</span></h1>
                        <div class="section-content">
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">FEB</span>
                                    <span class="date-number">18</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Open Day</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00am - 18:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>East Campus</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->  
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">SEP</span>
                                    <span class="date-number">06</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">E-learning at College Green</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00am - 16:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Learning Center</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">JUN</span>
                                    <span class="date-number">23</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Career Fair</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>09:45am - 16:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Library</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">May</span>
                                    <span class="date-number">17</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Science Seminar</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>14:00pm - 18:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Library</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <a class="read-more" href="events.html">All events<i class="fa fa-chevron-right"></i></a>
                        </div><!--//section-content-->
                    </section><!--//events-->
                </div><!--//col-md-3-->
                <div class="col-md-6">
                    <section class="course-finder">
                        <h1 class="section-heading text-highlight"><span class="line">Course Finder</span></h1>
                        <div class="section-content">
                            <form class="course-finder-form" action="#" method="get">
                                <div class="row">
                                    <div class="col-md-5 col-sm-5 subject">
                                        <select class="form-control subject">
                                            <option>Choose a subject area</option>
                                            <option>Accounting & Finance</option>
                                            <option>Biological Sciences</option>
                                            <option>Business Studies</option>
                                            <option>Computer Science</option>
                                            <option>Creative Arts & Media</option>
                                            <option>Drama</option>
                                            <option>Education</option>
                                            <option>Engineering</option>
                                            <option>Film Studies</option>
                                            <option>Fitness Training</option>
                                            <option>Hospitality</option>
                                            <option>History</option>
                                            <option>International Relations</option>
                                            <option>Law</option>
                                            <option>Mathematics</option>
                                            <option>Music</option>
                                            <option>Physics</option>
                                            <option>Religion</option>
                                            <option>Social Science</option>
                                        </select>
                                    </div> 
                                    <div class="col-md-7 col-sm-7 keywords">
                                        <input class="form-control pull-left" type="text" placeholder="Search keywords" />
                                        <button type="submit" class="btn btn-theme"><i class="fa fa-search"></i></button>
                                    </div> 
                                </div>                     
                            </form><!--//course-finder-form-->
                            <a class="read-more" href="courses.html">View all our courses<i class="fa fa-chevron-right"></i></a>
                        </div><!--//section-content-->
                    </section><!--//course-finder-->
                    <section class="video">
                        <h1 class="section-heading text-highlight"><span class="line">Video Tour</span></h1>
                        <div class="carousel-controls">
                            <a class="prev" href="#videos-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                            <a class="next" href="#videos-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                        </div><!--//carousel-controls-->
                        <div class="section-content">    
                            <div id="videos-carousel" class="videos-carousel carousel slide">
                                <div class="carousel-inner">
                                    <div class="item active">            
                                        <iframe class="video-iframe" src="//www.youtube.com/embed/r9LelXa3U_I?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
                                    </div><!--//item-->
                                    <div class="item">            
                                        <iframe class="video-iframe" src="//www.youtube.com/embed/RcGyVTAoXEU?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
                                    </div><!--//item-->
                                    <div class="item">            
                                        <iframe class="video-iframe" src="//www.youtube.com/embed/Ks-_Mh1QhMc?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
                                    </div><!--//item-->
                                </div><!--//carousel-inner-->
                            </div><!--//videos-carousel-->                            
                            <p class="description">Aenean feugiat a diam tempus sodales. Quisque lorem nulla, ultrices imperdiet malesuada at, suscipit vel lorem. Nulla dignissim nisi ac aliquet semper.</p>
                        </div><!--//section-content-->
                    </section><!--//video-->
                </div>
                <div class="col-md-3">
                    <section class="links">
                        <h1 class="section-heading text-highlight"><span class="line">Quick Links</span></h1>
                        <div class="section-content">
                            <p><a href="#"><i class="fa fa-caret-right"></i>E-learning Portal</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Gallery</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Job Vacancies</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Contact</a></p>
                        </div><!--//section-content-->
                    </section><!--//links-->
                    <section class="testimonials">
                        <h1 class="section-heading text-highlight"><span class="line"> Testimonials</span></h1>
                        <div class="carousel-controls">
                            <a class="prev" href="#testimonials-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                            <a class="next" href="#testimonials-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                        </div><!--//carousel-controls-->
                        <div class="section-content">
                            <div id="testimonials-carousel" class="testimonials-carousel carousel slide">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <blockquote class="quote">                                  
                                            <p><i class="fa fa-quote-left"></i>I?m very happy interdum eget ipsum. Nunc pulvinar ut nulla eget sollicitudin. In hac habitasse platea dictumst. Integer mattis varius ipsum, posuere posuere est porta vel. Integer metus ligula, blandit ut fermentum a, rhoncus in ligula. Duis luctus.</p>
                                        </blockquote>                
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Marissa Spencer</span><br /><span class="title">Curabitur commodo</span></p>
                                            <img class="profile col-md-4 pull-right" src="./images/images_principal/testimonials/profile-1.png"  alt="" />
                                        </div>                               
                                    </div><!--//item-->
                                    <div class="item">
                                        <blockquote class="quote">
                                            <p><i class="fa fa-quote-left"></i>
                                                I'm very pleased commodo gravida ultrices. Sed massa leo, aliquet non velit eu, volutpat vulputate odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor metus eros, ut fringilla nulla auctor a.</p>
                                        </blockquote>
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Marco Antonio</span><br /><span class="title"> Gravida ultrices</span></p>
                                            <img class="profile col-md-4 pull-right" src="./images/images_principal/testimonials/profile-2.png"  alt="" />
                                        </div>                 
                                    </div><!--//item-->
                                    <div class="item">
                                        <blockquote class="quote">
                                            <p><i class="fa fa-quote-left"></i>
                                                I'm delighted commodo gravida ultrices. Sed massa leo, aliquet non velit eu, volutpat vulputate odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor metus eros, ut fringilla nulla auctor a.</p>
                                        </blockquote>
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Kate White</span><br /><span class="title"> Gravida ultrices</span></p>
                                            <img class="profile col-md-4 pull-right" src="./images/images_principal/testimonials/profile-3.png"  alt="" />
                                        </div>                 
                                    </div><!--//item-->

                                </div><!--//carousel-inner-->
                            </div><!--//testimonials-carousel-->
                        </div><!--//section-content-->
                    </section><!--//testimonials-->
                </div><!--//col-md-3-->
            </div><!--//cols-wrapper-->
            <section class="awards">
                <div id="awards-carousel" class="awards-carousel carousel slide">
                    <div class="carousel-inner">
                        <div class="item active">
                            <ul class="logos">
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <a href="#"><img class="img-responsive" src="./images/images_principal/awards/award1.jpg"  alt="" /></a>
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <a href="#"><img class="img-responsive" src="./images/images_principal/awards/award2.jpg"  alt="" /></a>
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <a href="#"><img class="img-responsive" src="./images/images_principal/awards/award3.jpg"  alt="" /></a>
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <a href="#"><img class="img-responsive" src="./images/images_principal/awards/award4.jpg"  alt="" /></a>
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <a href="#"><img class="img-responsive" src="./images/images_principal/awards/award5.jpg"  alt="" /></a>
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <a href="#"><img class="img-responsive" src="./images/images_principal/awards/award6.jpg"  alt="" /></a>
                                </li>             
                            </ul><!--//slides-->
                        </div><!--//item-->

                        <div class="item">
                            <ul class="logos">
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <img class="img-responsive" src="./images/images_principal/awards/award7.jpg"  alt="" />
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <img class="img-responsive" src="./images/images_principal/awards/award6.jpg"  alt="" />
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <img class="img-responsive" src="./images/images_principal/awards/award5.jpg"  alt="" />
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <img class="img-responsive" src="./images/images_principal/awards/award4.jpg"  alt="" />
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <img class="img-responsive" src="./images/images_principal/awards/award3.jpg"  alt="" />
                                </li>
                                <li class="col-md-2 col-sm-2 col-xs-4">
                                    <img class="img-responsive" src="./images/images_principal/awards/award2.jpg"  alt="" />
                                </li>             
                            </ul><!--//slides-->
                        </div><!--//item-->
                    </div><!--//carousel-inner-->
                    <a class="left carousel-control" href="#awards-carousel" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="right carousel-control" href="#awards-carousel" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>

                </div>
            </section>
        </div><!--//content-->
    </div><!--//wrapper-->

    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="footer-content">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-3 col-sm-4 about">
                        <div class="footer-col-inner">
                            <h3>About</h3>
                            <ul>
                                <li><a href="about.html"><i class="fa fa-caret-right"></i>About us</a></li>
                                <li><a href="contact.html"><i class="fa fa-caret-right"></i>Contact us</a></li>
                                <li><a href="privacy.html"><i class="fa fa-caret-right"></i>Privacy policy</a></li>
                                <li><a href="terms-and-conditions.html"><i class="fa fa-caret-right"></i>Terms & Conditions</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->
                    <div class="footer-col col-md-6 col-sm-8 newsletter">
                        <div class="footer-col-inner">
                            <h3>Join our mailing list</h3>
                            <p>Subscribe to get our weekly newsletter delivered directly to your inbox</p>
                            <form class="subscribe-form">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Enter your email" />
                                </div>
                                <input class="btn btn-theme btn-subscribe" type="submit" value="Subscribe">
                            </form>

                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col--> 
                    <div class="footer-col col-md-3 col-sm-12 contact">
                        <div class="footer-col-inner">
                            <h3>Contact us</h3>
                            <div class="row">
                                <p class="adr clearfix col-md-12 col-sm-4">
                                    <i class="fa fa-map-marker pull-left"></i>        
                                    <span class="adr-group pull-left">       
                                        <span class="street-address">College Green</span><br>
                                        <span class="region">56 College Green Road</span><br>
                                        <span class="postal-code">BS16 AP18</span><br>
                                        <span class="country-name">UK</span>
                                    </span>
                                </p>
                                <p class="tel col-md-12 col-sm-4"><i class="fa fa-phone"></i>0800 123 4567</p>
                                <p class="email col-md-12 col-sm-4"><i class="fa fa-envelope"></i><a href="#">enquires@website.com</a></p>  
                            </div> 
                        </div><!--//footer-col-inner-->            
                    </div><!--//foooter-col-->   
                </div>   
            </div>        
        </div><!--//footer-content-->
        <div class="bottom-bar">
            <div class="container">
                <div class="row">
                    <small class="copyright col-md-6 col-sm-12 col-xs-12">Copyright @ 2014 College Green Online | Website template by <a href="#">3rd Wave Media</a></small>
                    <ul class="social pull-right col-md-6 col-sm-12 col-xs-12">
                        <li><a href="#" ><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" ><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" ><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#" ><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#" ><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" ><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#" ><i class="fa fa-skype"></i></a></li> 
                        <li class="row-end"><a href="#" ><i class="fa fa-rss"></i></a></li>
                    </ul><!--//social-->
                </div><!--//row-->
            </div><!--//container-->
        </div><!--//bottom-bar-->
    </footer><!--//footer-->




    <!-- Javascript -->          
    <script type="text/javascript" src="./js/principal_js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="./js/principal_js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="./js/principal_js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="./js/principal_js/bootstrap-hover-dropdown.min.js"></script> 
    <script type="text/javascript" src="./js/principal_js/back-to-top.js"></script>
    <script type="text/javascript" src="./js/principal_js/jquery.placeholder.js"></script>
    <script type="text/javascript" src="./js/principal_js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="./js/principal_js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="./js/principal_js/jflickrfeed.min.js"></script> 
    <script type="text/javascript" src="./js/principal_js/main.js"></script>   


</body>
</html> 

