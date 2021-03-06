/* 
 * Copyright (C) 2014 rafa
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


function fAsignaturaRoutes() {

//    Path.map("#/asignatura").to(function () {
//        $('#indexContenidoJsp').spinner();
//        control('asignatura').list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);
//        //asignaturaControl.modalListEventsLoading(asignaturaObject, asignaturaView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
//        $('#indexContenidoJsp').empty();
//        return false;
//    });

    Path.map("#/asignatura").to(function () {
        $('#indexContenidoJsp').spinner();
        oAsignaturaControl.list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null, oAsignaturaModel, oAsignaturaView);
        //asignaturaControl.modalListEventsLoading(asignaturaObject, asignaturaView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
        $('#indexContenidoJsp').empty();
        //$('#indexContenidoJsp').append(oAsignaturaControl.getClassNameAsignatura());
        return false;
    });

    Path.map("#/asignatura/list/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAsignaturaControl.list($('#indexContenido'), paramsObject, null, oAsignaturaModel, oAsignaturaView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/asignatura/view/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAsignaturaControl.view($('#indexContenido'), paramsObject['id'], oAsignaturaModel, oAsignaturaView);
        $('#indexContenidoJsp').empty();

        return false;
    });

    Path.map("#/asignatura/edit/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAsignaturaControl.edit($('#indexContenido'), paramsObject['id'], oAsignaturaModel, oAsignaturaView);
        $('#indexContenidoJsp').empty();
    });
    Path.map("#/asignatura/new").to(function () {
        $('#indexContenidoJsp').spinner();
        //var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAsignaturaControl.new($('#indexContenido'), null, oAsignaturaModel, oAsignaturaView);
        $('#indexContenidoJsp').empty();
        return false;
    });
    Path.map("#/asignatura/new/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAsignaturaControl.new($('#indexContenido'), paramsObject, oAsignaturaModel, oAsignaturaView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/asignatura/remove/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oAsignaturaControl.remove($('#indexContenido'), paramsObject['id'], oAsignaturaModel, oAsignaturaView);
        $('#indexContenidoJsp').empty();
        return false;
    });
}