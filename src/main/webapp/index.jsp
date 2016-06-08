<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>


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
<html lang="es">
    <head>  
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>CF Xabec</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
         <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <link rel="stylesheet" href="css/jquery-ui.css"> 
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/bootstrapValidator.min.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css"  />      
    
        
        <!--//principla css-->
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
        

        <% if (user != null) {%>
        
        <link rel="stylesheet" href="css/skin/<%=user.getSkin()%>.css">
        <% } else {%>        
        <link rel="stylesheet" href="css/skin/main.css">
        <% }%>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
       
    
    </head>
    <body class="home-page">
    <div class="wrapper">
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
                    <a href="jsp"><img id="logo" src="./images/images_principal/logo_Xabec.jpg" alt="Logo"></a>
                </h1><!--//logo-->           
                <div class="info col-md-8 col-sm-8">                    
                    <ul class="menu-top navbar-right hidden-xs">  
                        <jsp:include page="jsp/usuario/infologin.jsp" />                        
                    </ul><!--//menu-top-->
                    <br />
                    <div class="contact pull-right">
                        <p class="phone"><i class="fa fa-phone"></i>Contactanos 963 389 882</p> 
                        <p class="email"><i class="fa fa-envelope"></i><a href="#">email: info@xabec.es</a></p>
                    </div><!--//contact-->
                </div><!--//info-->
                        
            </div><!--//header-main-->
        </header><!--//header-->
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
                   <%if (user != null) {%>
                        <jsp:include page="jsp/menuSuperiorUsuario.jsp" /> 
                        <% } else {%>        
                        <jsp:include page="jsp/menuSuperiorUsuario2.jsp" />
                        <% }%>
                    
                </div><!--//navabr-collapse-->
            </div><!--//container-->
        </nav><!--//main-nav-->       
    </div>

        <% if (user != null) {%>

        <div class="container">
            <div class="row">

                <div class="col-md-10">
                    <div id="indexContenido"></div>
                    <div id="indexContenidoJsp">
                        <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12" id="contenidoParseado"></div>   
            </div>
            <div class="row">
                <div class="col-md-12"><hr><footer><p class="pull-right">&copy; <%=EstadoHelper.getAutor()%>: (<%=EstadoHelper.getAnyo()%>) - <%=EstadoHelper.getLicenciaLink()%></p></footer></div> 
            </div>
        </div>            

        <% } else {%>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="indexContenidoJsp">
                        <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" id="contenidoParseado"></div>   
            </div>            
        </div>  
        <% }%>
        

        <!-- carga de javascript   -->


        <script type="text/javascript"  src="./js/vendor/jquery-1.11.1.min.js"></script>
        <script type="text/javascript"  src="./js/vendor/bootstrap.min.js"></script>
        <script type="text/javascript"  src="./js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

        <script type="text/javascript"  src="./js/vendor/moment.js"></script>
        <script type="text/javascript"  src="./js/vendor/moment.locale.es.js"></script>
        <script type="text/javascript"  src="./js/vendor/bootstrap-datetimepicker.min.js"></script>

        <script type="text/javascript"  src="./js/vendor/path.min.js"></script> 
        <script type="text/javascript"  src="./js/vendor/bootstrapValidator.min.js"></script>
        <script type="text/javascript"  src="./js/vendor/language/es_ES.js"></script>
        <script type="text/javascript"  src="./js/vendor/creole-parser.js"></script>

        <!--
        <script type="text/javascript"  src="./js/vendor/jquery-ui.js"></script>
        <script src="./js/vendor/jquery.validate.min.js"></script>
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        -->


        <script src="js/generic/view.js" charset="UTF-8"></script>    
        <script src="js/generic/param.js" charset="UTF-8"></script>
        <script src="js/generic/ajax.js" charset="UTF-8"></script>
        <script src="js/generic/util.js" charset="UTF-8"></script>
        <script src="js/generic/model.js" charset="UTF-8"></script>        
        <script src="js/generic/control.js" charset="UTF-8"></script> 
        <script src="js/generic/initialization.js" charset="UTF-8"></script>

        <script type="text/javascript">
            var path = '<%=request.getContextPath()%>';
            var myuser = <%=id_usuario%>;
            var mylevel = <%=id_tipousuario%>;
        </script>

       

        <script src="js/specific/usuario/control.js" charset="UTF-8"></script>
        <script src="js/specific/usuario/model.js" charset="UTF-8"></script>
        <script src="js/specific/usuario/view.js" charset="UTF-8"></script>
        <script src="js/specific/usuario/routes.js" charset="UTF-8"></script>
       

        <script src="js/specific/tipousuario/control.js" charset="UTF-8"></script>
        <script src="js/specific/tipousuario/model.js" charset="UTF-8"></script>
        <script src="js/specific/tipousuario/view.js" charset="UTF-8"></script>
        <script src="js/specific/tipousuario/routes.js" charset="UTF-8"></script>
        <!-- Fin Modificación Jesus Usuarios -->  
       
       
        
         <!-- Javascript Principal-->          
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
        
        <!--MANTENIMIENTOS COLEGIO-->

        <script src="js/specific/profesor/control.js" charset="UTF-8"></script>
        <script src="js/specific/profesor/model.js" charset="UTF-8"></script>
        <script src="js/specific/profesor/view.js" charset="UTF-8"></script>
        <script src="js/specific/profesor/routes.js" charset="UTF-8"></script>

        <script src="js/specific/nota/control.js" charset="UTF-8"></script>
        <script src="js/specific/nota/model.js" charset="UTF-8"></script>
        <script src="js/specific/nota/view.js" charset="UTF-8"></script>
        <script src="js/specific/nota/routes.js" charset="UTF-8"></script>

        <script src="js/specific/horario/control.js" charset="UTF-8"></script>
        <script src="js/specific/horario/model.js" charset="UTF-8"></script>
        <script src="js/specific/horario/view.js" charset="UTF-8"></script>
        <script src="js/specific/horario/routes.js" charset="UTF-8"></script>

        <script src="js/specific/asignatura/control.js" charset="UTF-8"></script>
        <script src="js/specific/asignatura/model.js" charset="UTF-8"></script>
        <script src="js/specific/asignatura/view.js" charset="UTF-8"></script>
        <script src="js/specific/asignatura/routes.js" charset="UTF-8"></script>                    

        <script src="js/specific/alumno/control.js" charset="UTF-8"></script>
        <script src="js/specific/alumno/model.js" charset="UTF-8"></script>
        <script src="js/specific/alumno/view.js" charset="UTF-8"></script>
        <script src="js/specific/alumno/routes.js" charset="UTF-8"></script>

        <script src="js/specific/nivel/control.js" charset="UTF-8"></script>
        <script src="js/specific/nivel/model.js" charset="UTF-8"></script>
        <script src="js/specific/nivel/view.js" charset="UTF-8"></script>
        <script src="js/specific/nivel/routes.js" charset="UTF-8"></script>


        <script type="text/javascript">

            $(document).ready(function () {

                //$('#indexContenidoJsp').addClass('animated slideInDown');
                //$('#menuSuperior').addClass('animated slideInLeft');
                //$('#menuLateral').addClass('animated slideInRight');

                inicializacion();


               
               

                fAlumnoRoutes();
                fProfesorRoutes();
                fHorarioRoutes();
                fAsignaturaRoutes();
                fNivelRoutes();
                fNotaRoutes();
                fTipousuarioRoutes();
                fUsuarioRoutes();



                Path.listen();

            });

        </script>
    </body>
</html>

