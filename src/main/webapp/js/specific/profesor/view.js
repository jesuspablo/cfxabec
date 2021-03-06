/* 
 * Copyright (C) 2014 raznara
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */


var profesorView = function (strClase) {
    this.clase = strClase;
};
profesorView.prototype = new view('profesor');
profesorView.prototype.getClassNameProfesor = function () {
    return this.getClassName() + "Vista";
};
var oProfesorView = new profesorView('profesor');


profesorView.prototype.loadButtons = function (id) {
    var botonera = "";
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';
    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><img class="misiconos" src="./images/ver.png"  /></a>';
    botonera += '<a class="btn btn-default edit" id="' + id + '"  href="jsp#/' + this.clase + '/edit/' + id + '"><img class="misiconos" src="./images/editar.png"   /></a>';
    botonera += '<a class="btn btn-default remove" id="' + id + '"  href="jsp#/' + this.clase + '/remove/' + id + '"><img class="misiconos" src="./images/borrar.png"   /></a>';
    botonera += '<a class="btn btn-default upload" id="' + id + '"  href="jsp#/' + this.clase + '/upload/' + id + '"><img class="misiconos" src="./images/imagen.png"   /></a>';

    botonera += '</div></div>';
    return botonera;
}

profesorView.prototype.loadFormValues = function (valores, campos) {
    this.doFillForm(valores, campos);
};

profesorView.prototype.getFormValues = function () {
    var valores = [];
    var disabled = $('#profesorForm').find(':input:disabled').removeAttr('disabled');
    valores = $('#profesorForm').serializeObject();
    disabled.attr('disabled', 'disabled');
    return valores;
};

profesorView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#profesorForm #obj_usuario_button').unbind('click');
    $("#profesorForm #obj_usuario_button").click(function () {
        var oControl = oUsuarioControl;  //para probar dejar profesor
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "profesor");

        $("#profesorForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de usuario'), "", thisObject.getFormFooter(), true);

        $('#profesorForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oUsuarioModel, oUsuarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_usuario_id').val(id).change();
            $('#obj_usuario_desc').text(decodeURIComponent(oUsuarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oUsuarioModel, oUsuarioView);
        return false;
    });
    $('#profesorForm #obj_tipoprofesor_button').unbind('click');
    $("#profesorForm #obj_tipoprofesor_button").click(function () {
        var oControl = oTipoprofesorControl;

        $("#profesorForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de tipo de profesor'), "", thisObject.getFormFooter(), true);

        $('#profesorForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oTipoprofesorModel, oTipoprofesorView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_tipoprofesor_id').val(id).change();
            $('#obj_tipoprofesor_desc').text(decodeURIComponent(oTipoprofesorModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oTipoprofesorModel, oTipoprofesorView);
        return false;
    });
    $('#contenido_button').unbind('click');
    $('#contenido_button').click(function () {
        //cabecera = '<button id="full-width" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>' + '<h3 id="myModalLabel">Edición de contenidos</h3>';
        cabecera = thisObject.getFormHeader('Edición de contenidos');
        //pie = '<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cerrar</button>';                        
        pie = '<a class="btn btn-primary" href="http://creoleparser.googlecode.com/svn/trunk/creoleparser/test_pages/CheatSheetPlus.html">Sintaxis</a>';
        pie += thisObject.getFormFooter();
        contenido = '<div class="row"><div class="col-md-6">';
        contenido += '<textarea type="text" id="contenidomodal" name="contenido" rows="20" cols="70" placeholder="contenido"></textarea>';
        contenido += '</div><div class="col-md-6"><div id="textoparseado"></div></div>';
        contenido += '</div>';

        $('#profesorForm').append(thisObject.getEmptyModal());

        util().loadForm('#modal01', cabecera, contenido, pie, true);
        var texto = $('#contenido').val();
        $('#contenidomodal').val(texto);
        util().creoleParse(texto, $('#textoparseado'));
        $('#contenido').val($('#contenidomodal').val());
        $('#contenidomodal').keyup(function () {
            util().creoleParse($('#contenidomodal').val(), $('#textoparseado'));
            $('#contenido').val($('#contenidomodal').val());
        });
        return false;
    });
};

profesorView.prototype.okValidation = function (f) {
    $('#profesorForm').on('success.form.bv', f);
};