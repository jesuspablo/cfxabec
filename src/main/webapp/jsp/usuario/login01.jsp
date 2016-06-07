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


<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Login Form</title>


        <link rel="stylesheet" href="css/login_css/reset.css">

        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat:400,700'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/login_css/style.css">
    </head>
    <body>
        <div class="container">
            <div class="info">
                <h1>Registrate</h1><span>ir <a href="jsp">Al inicio</a></span>
            </div>
        </div>
        <div class="form">
            <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
           
            <form class="login-form" action="jsp" role="form" method="post">
                
                <input type="hidden" name="ob" value="usuario" />
                <input type="hidden" name="op" value="login02" />                 
                
                 <%
                   if (EstadoHelper.getTipo_estado() == EstadoHelper.getTipo_estado().Debug) {
                   %>
                <input type="text" placeholder="username" required="" autofocus="" name="login"/>
                <%
                   } else {
                 %>
                 <input type="text" placeholder="username" required="" autofocus="" name="login"/>
                 <%
                    }
                  %>
                
                <%
                   if (EstadoHelper.getTipo_estado() == EstadoHelper.getTipo_estado().Debug) {
                 %>
                <input type="password" placeholder="password" required="" name="password"/>
                <%
                   } else {
                 %>
                <input type="password" placeholder="password" required="" name="password"/>
                <%
                   }
                 %>                
                
                <button type="submit" style="margin-top: 15px">Login</button>
                 <button type="reset" style="margin-top: 5px">Reset</button>
                
               
            </form>
        </div>
       
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="./js/index.js"></script>




    </body>
</html>
