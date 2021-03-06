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
<%UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");%>
<%
        int id = user.getId();
%>

<form class="form-horizontal" role="form" action="#" id="opcionForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="titulo">Valor:</label>
        <div class="col-sm-6">
            <input type="text" id="valor" class="form-control"  name="valor" size="15" placeholder="valor del cuestionario" />
        </div>
    </div>
    
    

    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_pregunta_id">Pregunta: </label> 
        <div class="col-sm-2">              
            <input readonly="true" class="form-control"  id="obj_pregunta_id" class="input-mini" name="id_pregunta" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_pregunta_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_pregunta_desc" id="obj_pregunta_desc"></label>                     
    </div>
    
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div id="messages"></div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button class="btn btn-primary" id="submitForm">Guardar</button>
        </div>
    </div>

</form>
        

<!-- Modals -->
<div id="modal01" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header" id="modal-header"></div>
            <div class="modal-body" id="modal-body"></div>
            <div class="modal-footer" id="modal-footer"></div>
        </div>
    </div>
</div>



<script type="text/javascript">

    $(document).ready(function() {
        //http://jqueryvalidation.org/documentation/
        $('#opcionForm')
                .bootstrapValidator({
                    container: '#messages',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        valor: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir un valor'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El t�tulo debe tener como m�ximo 255 caracteres'
                                }
                            }
                        },
                        id_pregunta: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir una pregunta'
                                },
                                integer: {
                                    message: 'El identificador de pregunta debe ser un entero'
                                }
                            }
                        }
                    }
                })
    });       

    
    
</script>
     