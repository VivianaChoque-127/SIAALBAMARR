/*CARGA INICIO DE LA PAGINA*/
var modifiedFormClienteUpdate = false;
$(document).ready(function() {
    CargaLibro();
    /********************* ANULAR ENTER EN FORMULARIOS ******************/
    $('input').keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });
    $('#libro_nuevo').select2({
        placeholder: "Seleccione",
        allowClear: !0,
        dropdownAutoWidth: true
    });
    /********************* LISTADO DE SOCIOS ******************/
    $("#tblListadoLector").DataTable({
        responsive: !0,
        //searchDelay:500,
        // processing:!0,
        // serverSide:!0,
        data: {
            pagination: {
                perpage: 25
            }
        },
        ajax: "Database/Lectores/listadoLector.php",
        type: "POST",
        columns: [
            { data: "nombre" },
            { data: "apellido" },
            { data: "celular" },
            { data: "ci" },

            //id a enviar
            { data: "id" }
        ],
        columnDefs: [{
            targets: 4,
            title: "Opciones",
            data: null,
            orderable: !1,
            render: function(a, e, n, t) {
                var valor = 0;
                console.log("dhajfdg", n);
                return '<a href="javascript:void(0)" title="Editar"class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#actualizarLectorForm" data-backdrop="static" onclick="datos_por_modificar_lector(' + a + ');return false;"><i class="flaticon-edit-1"></i></a><a href="javascript:void(0)" title="hacer prestamo" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#hacer_prestamoForm" data-backdrop="static"  onclick="prestar_libro(' + a + ');return false;"><i class="flaticon-list-3"></i></a></a><a href="javascript:void(0)" title="Eliminar" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-backdrop="static"  onclick="eliminar_lector(' + a + ');return false;"><i class="fa fa-trash-o"></i></a>'
                    //<a href="javascript:void(0)" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#VercuentaForm" data-backdrop="static"  onclick="fnVerCuenta(' + a + ');return false;"><i class="flaticon-eye"></i></a>
            }
        }],
        language: {
            //"url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
            "emptyTable": "No hay datos disponibles",
            "info": "Mostrando _START_ de _END_ de un total de _TOTAL_ entradas",
            "infoEmpty": "Mostrando 0 de 0 de un total de 0 entradas",
            "infoFiltered": "(filtrado de un total de _MAX_ total entradas)",
            "infoPostFix": "",
            "thousands": ".",
            "lengthMenu": "Mostrar _MENU_ entradas",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "No se encontraron datos",
            "paginate": {
                "first": "Primera",
                "last": "ÚLtima",
                "next": "Siguiente",
                "previous": "Anterior"
            },
            "aria": {
                "sortAscending": ": activate to sort column ascending",
                "sortDescending": ": activate to sort column descending"
            }
        }
    })
});
///funcion para modifica el lector database update
$("#frmLectorActualizar").submit(function(e) {
    e.preventDefault();
    var id_update = $("#id_update").val();
    var nombre_update = $("#nombre_update").val();
    var apellido_update = $("#apellido_update").val();
    var celular_update = $("#celular_update").val();
    var CI_update = $("#CI_update").val();
    if (nombre_update == "") {
        toastr.warning("Debe introducir nombre", "nombre!");
        $("#nombre_update").focus();
    } else {
        if (apellido_update == "") {
            toastr.warning("Debe introducir apellidos", "apellidos!");
            $("#apellido_update").focus();
        } else {
            if (celular_update == "") {
                toastr.warning("Debe introducir celular", "celular!");
                $("#celular_update").focus();
            } else {
                if (CI_update == "") {
                    toastr.warning("Debe introducir Carnet Identidad", "Carnet Identidad!");
                    $("#CI_update").focus();
                } else {
                    var formData = new FormData(document.getElementById("frmLectorActualizar"));
                    formData.append("id", id_update);
                    formData.append("nombre_update", nombre_update);
                    formData.append("apellido_update", apellido_update);
                    formData.append("celular_update", celular_update);
                    formData.append("CI_update", CI_update);

                    var route = "Database/Lectores/modificar_lector.php";
                    $.ajax({
                        url: route,
                        type: "post",
                        dataType: "html",
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(data) {
                            console.log('DATA', data);
                            if (data == 1) {
                                $('#contenido').load('Custom/Lectores/menu_lector.php');
                                $('#frmLectorActualizar').modal('hide');
                                $('body').removeClass('modal-open');
                                $('.modal-backdrop').remove();
                                swal({
                                    title: "Actualización!",
                                    text: "Actualización Correcta!",
                                    type: "success",
                                    showConfirmButton: false,
                                    timer: 3000
                                });
                            } else {
                                swal({
                                    title: "Atención!",
                                    text: "No se pudo Guardar el registro..!",
                                    type: "error",
                                    showConfirmButton: true
                                });
                            }
                        }
                    });
                }
            }
        }
    }
});
// ADICIONAR NUEVO GUARDAR LECTOR -insert
$("#frmLector").submit(function(e) {
    e.preventDefault();
    var nombre_nuevo = $("#nombre_nuevo").val();
    var apellido_nuevo = $("#apellido_nuevo").val();
    var celular_nuevo = $("#celular_nuevo").val();
    var CI_nuevo = $("#CI_nuevo").val();
    if (nombre_nuevo == "") {
        toastr.warning("Debe introducir nombre", "nombre!");
        $("#nombre_nuevo").focus();
    } else {
        if (apellido_nuevo == "") {
            toastr.warning("Debe introducir apellidos", "apellidos!");
            $("#apellido_nuevo").focus();
        } else {
            if (celular_nuevo == "") {
                toastr.warning("Debe introducir celular", "celular!");
                $("#celular_nuevo").focus();
            } else {
                if (CI_nuevo == "") {
                    toastr.warning("Debe introducir Carnet Identidad", "Carnet Identidad!");
                    $("#CI_nuevo").focus();
                } else {
                    var formData = new FormData(document.getElementById("frmLector"));
                    formData.append("nombre_nuevo", nombre_nuevo);
                    formData.append("apellido_nuevo", apellido_nuevo);
                    formData.append("celular_nuevo", celular_nuevo);
                    formData.append("CI_nuevo", CI_nuevo);

                    var route = "Database/Lectores/adicionar_lector.php";
                    $.ajax({
                        url: route,
                        type: "post",
                        dataType: "html",
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(data) {
                            console.log("DATA CLIENTE", data);
                            if (data == 1) {
                                $('#contenido').load('Custom/Lectores/menu_lector.php');
                                $('#nuevoLectorForm').modal('hide');
                                $('body').removeClass('modal-open');
                                $('.modal-backdrop').remove();
                                swal({
                                    title: "Guardado!",
                                    text: "Lector Guardado Correctamente!",
                                    type: "success",
                                    showConfirmButton: false,
                                    timer: 3000
                                });
                            } else {
                                swal({
                                    title: "Atención!",
                                    text: "No se pudo Guardar el registro..!",
                                    type: "error",
                                    showConfirmButton: true
                                });
                            }
                        }
                    });
                }
            }
        }
    }
});
///funcio para eliminar lector delete database
function eliminar_lector(id) {
    console.log('IDasdasdasd', id);
    swal({
        title: "Esta seguro de eliminar el Registro",
        text: "Presione Si para eliminar el registro de la base de datos!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: '<i class="flaticon-delete-2"> </i> Si, Eliminar!',
        cancelButtonText: '<i class="la la-thumbs-down"> </i> Cancelar'
            //closeOnConfirm: false 
    }).then((result) => {
        if (result.value) {
            var route = "Database/Lectores/eliminar_lector.php";
            var parametros = {
                'id': id
            };
            $.get(route, parametros, function(data) {
                // console.log("DATAAAAA", data);
                // var valor = jQuery.parseJSON(data);
                console.log("VALORRRR", data);
                if (data == 1) {
                    swal({
                        title: "ELiminado!",
                        text: "Lector eliminado",
                        type: "success",
                        showConfirmButton: false,
                        timer: 3000
                    });
                    $('#contenido').load('Custom/Lectores/menu_lector.php');
                } else {
                    swal({
                        title: "Atención!",
                        text: "No se pudo Eliminar el registro..!",
                        type: "error",
                        showConfirmButton: true
                    });
                }
            });
        }
    });
}
///funcio para obtener datos por moficar o actualizar lector,llenado de modal modificar lector -select
function datos_por_modificar_lector(id) {
    console.log('ID_CLI', id);
    var route = "Database/Lectores/obtenerlector.php";
    var parametros = {
        'id': id
    };
    $.get(route, parametros, function(data) {
        console.log("DATACLIIII", data);
        var valor = jQuery.parseJSON(data);
        $("#id_update").val(valor.id);
        $("#nombre_update").val(valor.nombre);
        $("#apellido_update").val(valor.apellido);
        $("#celular_update").val(valor.celular);
        $("#CI_update").val(valor.ci);
    });
}

////prestamos 

function prestar_libro(id) {
    console.log('ID_CLI', id);
    var route = "Database/Lectores/obtenerlector.php";
    var parametros = {
        'id': id
    };
    $.get(route, parametros, function(data) {
        console.log("DATACLIIII", data);
        var valor = jQuery.parseJSON(data);
        $("#id_lector_nuevo").val(valor.id);
        $("#nombre_prestamo_nuevo").val(valor.nombre);
        $("#CI_prestamo_nuevo").val(valor.ci);
    });
}

function CargaLibro() {
    var route = "Database/Utils/carga_libro.php";
    $.ajax({
        url: route,
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var htmlServicios = '';
            htmlServicios += '<option value="">Seleccione</option>';
            $.each(data, function(ind, elem) {
                // console.log('ELEMENTO', elem);
                htmlServicios += '<option value=' + elem.id + '>' + elem.nombre + '</option>';
            });
            $("#libro_nuevo").append(htmlServicios);
        }
    });
}
/////////////////
$("#frmNuevoPrestamo").submit(function(e) {
    e.preventDefault();
    var id_lector_nuevo = $("#id_lector_nuevo").val();
    var libro_nuevo = $("#libro_nuevo").val();
    var formData = new FormData(document.getElementById("frmNuevoPrestamo"));
    formData.append("id_lector_nuevo", id_lector_nuevo);
    formData.append("libro_nuevo", libro_nuevo);

    var route = "Database/prestamos/adicionar_prestamo.php";
    $.ajax({
        url: route,
        type: "post",
        dataType: "html",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        success: function(data) {
            console.log("DATA CLIENTE", data);
            if (data == 1) {
                $('#contenido').load('Custom/Lectores/menu_lector.php');
                $('#hacer_prestamoForm').modal('hide');
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();
                swal({
                    title: "Guardado!",
                    text: "Lector Guardado Correctamente!",
                    type: "success",
                    showConfirmButton: false,
                    timer: 3000
                });
            } else {
                swal({
                    title: "Atención!",
                    text: "No se pudo Guardar el registro..!",
                    type: "error",
                    showConfirmButton: true
                });
            }
        }
    });
});