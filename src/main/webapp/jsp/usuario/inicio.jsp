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

<%@page import="net.daw.helper.AppInformationHelper"%>
<%@page import="net.daw.helper.EstadoHelper"%>


   
<!-- ******NAV****** -->

<div class="wrapper">        

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
                    <a class="btn btn-cta" href="#"><i class="fa fa-play-circle"></i>Aplica ahora</a>  
                </div>
            </section><!--//promo-->
            <section class="news">
                <h1 class="section-heading text-highlight"><span class="line">Últimas noticias</span></h1>     
                <div class="carousel-controls">
                    <a class="prev" href="#news-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                    <a class="next" href="#news-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                </div><!--//carousel-controls--> 
                <div class="section-content clearfix">
                    <div id="news-carousel" class="news-carousel carousel slide">
                        <div class="carousel-inner">
                            <div class="item active"> 
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Id temores térmicas</a></h2>
                                    <img class="thumb" src="./images/images_principal/news-thumb-1.jpg"  alt="" />
                                    <p>Jugar muestra es muy divertido. Y escribir música es muy divertido. Pero ir de gira durante un año es una de las experiencias más alma-aplastamiento que puede tener como una persona creativa.</p>
                                    <a class="read-more" href="news-single.html">Leer Más<i class="fa fa-chevron-right"></i></a>                
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Nutrición en la entrada de la escuela</a></h2>
                                    <p> Una gran parte de mi vida gira en torno a mi padre. A veces, hasta me siento un fuerte sentido de conexión, algo muy tangible cuando aprendo algo nuevo en las artes marciales.</p>
                                    <a class="read-more" href="news-single.html">Leer Más<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-2.jpg"  alt="" />
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">La última se dirige olla</a></h2>
                                    <p>Estar de gira es como estar en el limbo. Es como ir de ninguna parte a ninguna parte. </p>
                                    <a class="read-more" href="news-single.html">Leer Más<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-3.jpg"  alt="" />
                                </div><!--//news-item-->
                            </div><!--//item-->
                            <div class="item"> 
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Id temores térmicas</a></h2>
                                    <img class="thumb" src="./images/images_principal/news-thumb-4.jpg"  alt="" />
                                    <p>Jugar muestra es muy divertido. Y escribir música es muy divertido. Pero ir de gira durante un año es una de las experiencias más alma-aplastamiento que puede tener como una persona creativa.</p>
                                    <a class="read-more" href="news-single.html">Leer Más<i class="fa fa-chevron-right"></i></a>                
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Nutrición en la entrada de la escuela</a></h2>
                                    <p>Nam feugiat erat vel neque mollis, non vulputate erat aliquet. Maecenas ac leo porttitor, semper risus condimentum, cursus elit. Vivamus vitae libero tellus.</p>
                                    <a class="read-more" href="news-single.html">Leer Más<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="./images/images_principal/news-thumb-5.jpg"  alt="" />
                                </div><!--//news-item-->
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">La última se dirige olla</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum mauris eget sapien consectetur pellentesque. Proin elementum tristique euismod. </p>
                                    <a class="read-more" href="news-single.html">Leer Más<i class="fa fa-chevron-right"></i></a>
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
                        <h1 class="section-heading text-highlight"><span class="line">Eventos</span></h1>
                        <div class="section-content">
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">Febre</span>
                                    <span class="date-number">18</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Dia de puertas abiertas</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00am - 18:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Actividades Culturales</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->  
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">Septiem</span>
                                    <span class="date-number">06</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Aprendizaje </h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00am - 16:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>En el Centro</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">Junio</span>
                                    <span class="date-number">23</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Maratón de los alumnos</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>09:45am - 16:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>En el patio</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">Mayo</span>
                                    <span class="date-number">17</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Seminarios</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>14:00pm - 18:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Aula 07</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <a class="read-more" href="#">Todos los eventos<i class="fa fa-chevron-right"></i></a>
                        </div><!--//section-content-->
                    </section><!--//events-->
                </div><!--//col-md-3-->
                <div class="col-md-6">
                    <section class="course-finder">
                        <h1 class="section-heading text-highlight"><span class="line">Buscar cursos</span></h1>
                        <div class="section-content">
                            <form class="course-finder-form" action="#" method="get">
                                <div class="row">
                                    <div class="col-md-5 col-sm-5 subject">
                                        <select class="form-control subject">
                                            <option>Lengua Castellana y Literatura</option>
                                            <option>Lengua y Literatura de las CC.AA.</option>
                                            <option>Lengua Extranjera</option>
                                            <option>Música</option>
                                            <option>Tecnología</option>
                                            <option>Educación para la ciudadanía y los derechos humano...</option>
                                            <option>Enseñanzas de Religión (Religión o Historia y cult...</option>
                                            <option>Ciencias Sociales, Geografía e Historia</option>
                                            <option>Educación Física</option>
                                            <option>Ciencias de la Naturalezas</option>                                            
                                            <option>Ciencias Sociales</option>
                                        </select>
                                    </div> 
                                    <div class="col-md-7 col-sm-7 keywords">
                                        <input class="form-control pull-left" type="text" placeholder="Search keywords" />
                                        <button type="submit" class="btn btn-theme"><i class="fa fa-search"></i></button>
                                    </div> 
                                </div>                     
                            </form><!--//course-finder-form-->
                            <a class="read-more" href="courses.html">Ver todos los cursos<i class="fa fa-chevron-right"></i></a>
                        </div><!--//section-content-->
                    </section><!--//course-finder-->
                    <section class="video">
                        <h1 class="section-heading text-highlight"><span class="line">Videos sobre la gira</span></h1>
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
                            <p class="description">Yo aprendí mucho de ese primer discurso y he aprendido mucho de mis experiencias de gira, pero en realidad la mayor educación que recibí en los últimos dos años estaba aprendiendo la importancia de los acuerdos.</p>
                        </div><!--//section-content-->
                    </section><!--//video-->
                </div>
                <div class="col-md-3">
                    <section class="links">
                        <h1 class="section-heading text-highlight"><span class="line">Enlaces</span></h1>
                        <div class="section-content">
                            <p><a href="#"><i class="fa fa-caret-right"></i>Portal de aprendizaje</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Gallery</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Ofertas de trabajo</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Contacto</a></p>
                        </div><!--//section-content-->
                    </section><!--//links-->
                    <section class="testimonials">
                        <h1 class="section-heading text-highlight"><span class="line"> Testimonios</span></h1>
                        <div class="carousel-controls">
                            <a class="prev" href="#testimonials-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                            <a class="next" href="#testimonials-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                        </div><!--//carousel-controls-->
                        <div class="section-content">
                            <div id="testimonials-carousel" class="testimonials-carousel carousel slide">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <blockquote class="quote">                                  
                                            <p><i class="fa fa-quote-left"></i>Jugar muestra es muy divertido. Y escribir música es muy divertido. Pero ir de gira durante un año es una de las experiencias más alma-aplastamiento que puede tener como una persona creativa.</p>
                                        </blockquote>                
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Marissa Spencer</span><br /><span class="title">Curabitur commodo</span></p>
                                            <img class="profile col-md-4 pull-right" src="./images/images_principal/profile-1.png"  alt="" />
                                        </div>                               
                                    </div><!--//item-->
                                    <div class="item">
                                        <blockquote class="quote">
                                            <p><i class="fa fa-quote-left"></i>
                                                Una gran parte de mi vida gira en torno a mi padre. A veces, hasta me siento un fuerte sentido de conexión, algo muy tangible cuando aprendo algo nuevo en las artes marciales.</p>
                                        </blockquote>
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Marco Antonio</span><br /><span class="title"> Gravida ultrices</span></p>
                                            <img class="profile col-md-4 pull-right" src="./images/images_principal/profile-2.png"  alt="" />
                                        </div>                 
                                    </div><!--//item-->
                                    <div class="item">
                                        <blockquote class="quote">
                                            <p><i class="fa fa-quote-left"></i>
                                                Estar de gira es como estar en el limbo. Es como ir de ninguna parte a ninguna parte.</p>
                                        </blockquote>
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Kate White</span><br /><span class="title"> Gravida ultrices</span></p>
                                            <img class="profile col-md-4 pull-right" src="./images/images_principal/profile-3.png"  alt="" />
                                        </div>                 
                                    </div><!--//item-->

                                </div><!--//carousel-inner-->
                            </div><!--//testimonials-carousel-->
                        </div><!--//section-content-->
                    </section><!--//testimonials-->
                </div><!--//col-md-3-->
            </div><!--//cols-wrapper-->           
        </div><!--//content-->
    </div><!--//wrapper-->

    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="footer-content">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-3 col-sm-4 about">
                        <div class="footer-col-inner">
                            <h3>Acerca de</h3>
                            <ul>
                                <li><a href="#"><i class="fa fa-caret-right"></i>Sobre nosotros</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>Contáctenos</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>Política de privacidad</a></li>
                                <li><a href="#"><i class="fa fa-caret-right"></i>Términos y condiciones</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->
                    <div class="footer-col col-md-6 col-sm-8 newsletter">
                        <div class="footer-col-inner">
                            <h3>Únete a nuestra lista de correos</h3>
                            <p>Suscríbete para recibir nuestro boletín semanal directamente en su bandeja de entrada</p>
                            <form class="subscribe-form">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Introduce tu correo electrónico" />
                                </div>
                                <input class="btn btn-theme btn-subscribe" type="submit" value="Suscribete">
                            </form>

                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col--> 
                    <div class="footer-col col-md-3 col-sm-12 contact">
                        <div class="footer-col-inner">
                            <h3>Contáctenos</h3>
                            <div class="row">
                                <p class="adr clearfix col-md-12 col-sm-4">
                                    <i class="fa fa-map-marker pull-left"></i>        
                                    <span class="adr-group pull-left">       
                                        <span class="street-address">Carrer de l'Arquitecte Rodríguez</span><br>
                                        <span class="region">54-56, Valencia</span><br>
                                        <span class="postal-code">46019</span><br>
                                        <span class="country-name">España</span>
                                    </span>
                                </p>
                                <p class="tel col-md-12 col-sm-4"><i class="fa fa-phone"></i>963 38 98 82</p>
                                <p class="email col-md-12 col-sm-4"><i class="fa fa-envelope"></i><a href="#">email: info@xabec.es</a></p>  
                            </div> 
                        </div><!--//footer-col-inner-->            
                    </div><!--//foooter-col-->   
                </div>   
            </div>        
        </div><!--//footer-content-->
        <div class="bottom-bar">
            <div class="container">
                <div class="row">
                    <small class="copyright col-md-6 col-sm-12 col-xs-12">Copyright © 2015 Centro de Formación Profesional Xabec: (2015) - GNU General Public License, version 2</small>
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
    

