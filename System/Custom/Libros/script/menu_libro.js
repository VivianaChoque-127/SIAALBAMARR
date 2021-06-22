/*CARGA INICIO DE LA PAGINA*/
var modifiedFormClienteUpdate = false;
$(document).ready(function() {
    /********************* ANULAR ENTER EN FORMULARIOS ******************/
    $('input').keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });

    /********************* LISTADO DE LIBROS ******************/
    $("#tblListadoLibroPrestamo").DataTable({
            responsive: !0,
            //searchDelay:500,
            // processing:!0,
            // serverSide:!0,
            data: {
                pagination: {
                    perpage: 25
                }
            },
            ajax: "Database/Libros/listadoLibroPrestado.php",
            type: "POST",
            columns: [
                { data: "nombre" },
                { data: "area" },

            ],
            /*         columnDefs: [{
                        targets: 2,
                        title: "Opciones",
                        data: null,
                        orderable: !1,
                        render: function(a, e, n, t) {
                            var valor = 0;
                            return '<a href="javascript:void(0)" title="Editar"class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#actualizarLibroForm" data-backdrop="static" onclick="datos_por_modificar_libro(' + a + ');return false;"><i class="flaticon-edit-1"></i></a><a href="javascript:void(0)" title="Eliminar" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-backdrop="static"  onclick="eliminar_libro(' + a + ');return false;"><i class="fa fa-trash-o"></i></a>'
                                //<a href="javascript:void(0)" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#VercuentaForm" data-backdrop="static"  onclick="fnVerCuenta(' + a + ');return false;"><i class="flaticon-eye"></i></a>
                        }
                    }], */
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
        ///////////
    $("#tblListadoLibro").DataTable({
        responsive: !0,
        //searchDelay:500,
        // processing:!0,
        // serverSide:!0,
        data: {
            pagination: {
                perpage: 25
            }
        },
        ajax: "Database/Libros/listadoLibro.php",
        type: "POST",
        columns: [
            { data: "nombre" },
            { data: "area" },
            { data: "editorial" },
            { data: "autor" },

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
                return '<a href="javascript:void(0)" title="Editar"class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#actualizarLibroForm" data-backdrop="static" onclick="datos_por_modificar_libro(' + a + ');return false;"><i class="flaticon-edit-1"></i></a><a href="javascript:void(0)" title="Eliminar" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-backdrop="static"  onclick="eliminar_libro(' + a + ');return false;"><i class="fa fa-trash-o"></i></a>'
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
///funcion para modifica el libro database update
$("#frmLibroActualizar").submit(function(e) {
    e.preventDefault();
    var id_update = $("#id_update").val();
    var nombre_update = $("#nombre_update").val();
    var area_update = $("#area_update").val();
    var editorial_update = $("#editorial_update").val();
    var autor_up = $("#autor_up").val();
    console.log('sdgddhhh', autor_up);
    if (nombre_update == "") {
        toastr.warning("Debe introducir nombre", "nombre!");
        $("#nombre_update").focus();
    } else {
        if (area_update == "") {
            toastr.warning("Debe introducir area", "area!");
            $("#area_update").focus();
        } else {
            if (editorial_update == "") {
                toastr.warning("Debe introducir editorial", "editorial!");
                $("#editorial_update").focus();
            } else {
                if (autor_up == "") {
                    toastr.warning("Debe introducir autor", "autor!");
                    $("#autor_up").focus();
                } else {
                    var formData = new FormData(document.getElementById("frmLibroActualizar"));
                    formData.append("id", id_update);
                    formData.append("nombre_update", nombre_update);
                    formData.append("area_update", area_update);
                    formData.append("editorial_update", editorial_update);
                    formData.append("autor_up", autor_up);

                    var route = "Database/Libros/modificar_libro.php";
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
                                $('#contenido').load('Custom/Libros/menu_libro.php');
                                $('#frmLibroActualizar').modal('hide');
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
// ADICIONAR NUEVO GUARDAR LIBRO -insert
$("#frmLibro").submit(function(e) {
    e.preventDefault();
    var nombre_nuevo = $("#nombre_nuevo").val();
    var area_nuevo = $("#area_nuevo").val();
    var editorial_nuevo = $("#editorial_nuevo").val();
    var autor_nuevo = $("#autor_nuevo").val();
    if (nombre_nuevo == "") {
        toastr.warning("Debe introducir nombre", "nombre!");
        $("#nombre_nuevo").focus();
    } else {
        if (area_nuevo == "") {
            toastr.warning("Debe introducir area", "area!");
            $("#area_nuevo").focus();
        } else {
            if (editorial_nuevo == "") {
                toastr.warning("Debe introducir editorial", "editorial!");
                $("#editorial_nuevo").focus();
            } else {
                if (autor_nuevo == "") {
                    toastr.warning("Debe introducir autor", "autor!");
                    $("#autor_nuevo").focus();
                } else {
                    var formData = new FormData(document.getElementById("frmLibro"));
                    formData.append("nombre_nuevo", nombre_nuevo);
                    formData.append("area_nuevo", area_nuevo);
                    formData.append("editorial_nuevo", editorial_nuevo);
                    formData.append("autor_nuevo", autor_nuevo);

                    var route = "Database/Libros/adicionar_libro.php";
                    $.ajax({
                        url: route,
                        type: "post",
                        dataType: "html",
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(data) {
                            console.log("DATA ", data);
                            if (data == 1) {
                                $('#contenido').load('Custom/Libros/menu_libro.php');
                                $('#nuevoLibroForm').modal('hide');
                                $('body').removeClass('modal-open');
                                $('.modal-backdrop').remove();
                                swal({
                                    title: "Guardado!",
                                    text: "Libro Guardado Correctamente!",
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
function eliminar_libro(id) {
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
            var route = "Database/Libros/eliminar_libro.php";
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
                        text: "Libro eliminado",
                        type: "success",
                        showConfirmButton: false,
                        timer: 3000
                    });
                    $('#contenido').load('Custom/Libros/menu_libro.php');
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
///funcio para obtener datos por moficar o actualizar libro,llenado de modal modificar libro -select
function datos_por_modificar_libro(id) {
    console.log('ID_CLI', id);
    var route = "Database/Libros/obtenerlibro.php";
    var parametros = {
        'id': id
    };
    $.get(route, parametros, function(data) {
        console.log("DATACLIIII", data);
        var valor = jQuery.parseJSON(data);
        $("#id_update").val(valor.id);
        $("#nombre_update").val(valor.nombre);
        $("#area_update").val(valor.area);
        $("#editorial_update").val(valor.editorial);
        $("#autor_up").val(valor.autor);
    });
}