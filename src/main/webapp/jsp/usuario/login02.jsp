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

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
   
  <% if (oUsuario == null) { %>
        <h1>Vd. no ha entrado en el sistema</h1>
        <h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
                    <ul>                           
                        <li><a href="jsp?op=login01&amp;ob=usuario"> >> ir al login</a></li>
                    </ul><!--//menu-top-->
  <% } else {%>
        <h1 class="margen-superior">Bienvenido</h1>
        <h4 class="nom_usuario"><%=oUsuario.getLogin()%></h4>        
        <% }%>    
  <script>
        $(document).ready(function () {

            $(".margen-superior").fadeIn(4000, function () {
                $(".margen-superior").fadeOut(4000);
            });
            $(".nom_usuario").fadeIn(4000, function () {
                $(".nom_usuario").fadeOut(4000);
            });
        });

    </script>
