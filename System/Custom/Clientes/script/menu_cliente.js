/*CARGA INICIO DE LA PAGINA*/
var modifiedFormClienteUpdate = false;
$(document).ready(function() {
    console.log("MODALLLLLLLLLLLLLLLLCLIENTEEEEEEEEEEEEEEEE", refreshModalCliente);
    fnCargarComboCaracterSocio();
    fnCargarComboTipoUusuario();
    $('#caracter_nuevo').select2({
        placeholder: "Seleccione",
        allowClear: !0,
        dropdownAutoWidth: true
    });
    $('#tipo_usuario_nuevo').select2({
        placeholder: "Seleccione",
        allowClear: !0,
        dropdownAutoWidth: true
    });
    /* SELECT PARA LS MODIFICACIONES */
    $('#caracter_modificar').select2({
        placeholder: "Seleccione",
        allowClear: !0,
        dropdownAutoWidth: true
    });
    $('#tipo_usuario_modificar').select2({
        placeholder: "Seleccione",
        allowClear: !0,
        dropdownAutoWidth: true
    });
    console.log("dsadsadSADSAD");
    /********************* ANULAR ENTER EN FORMULARIOS ******************/
    $('input').keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });

    /********************* LISTADO DE SOCIOS ******************/
    $("#tblListadoClientes").DataTable({
        responsive: !0,
        //searchDelay:500,
        // processing:!0,
        // serverSide:!0,
        data: {
            pagination: {
                perpage: 25
            }
        },
        ajax: "Database/Clientes/listadoCliente.php",
        type: "POST",
        columns: [
            { data: "nombre_cliente" },
            { data: "correo_cliente" },
            { data: "nit_ci_cliente" },
            { data: "telefono_cliente" },
            { data: "direccion_cliente" },
            { data: "nombre_contacto" },
            { data: "telefono_contacto" },
            { data: "correo_contacto" },

            //id a enviar
            { data: "id" }
        ],
        columnDefs: [{
            targets: 8,
            title: "Opciones",
            data: null,
            orderable: !1,
            render: function(a, e, n, t) {
                var valor = 0;
                return '<a href="javascript:void(0)" title="Editar"class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#actualizarClienteForm" data-backdrop="static" onclick="datos_por_modificar_cliente(' + a + ');return false;"><i class="flaticon-edit-1"></i></a><a href="javascript:void(0)" title="Nuevo Medio" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="modal" data-target="#nuevoMedioAlmacenamientoForm" data-backdrop="static" onclick="nuevo_medio_almacenamiento(' + a + ');return false;"><i class="flaticon-edit"></i></a><a href="javascript:void(0)" title="Eliminar" class="m-portlet__nav-link btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-backdrop="static"  onclick="eliminar_cliente(' + a + ');return false;"><i class="fa fa-trash-o"></i></a>'
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
///funcion para modifica usuario
$("#frmClienteActualizar").submit(function(e) {
    e.preventDefault();
    var id_update = $("#id_update").val();
    var nombre_cliente_update = $("#nombre_cliente_update").val();
    var nit_ci_cliente_update = $("#nit_ci_cliente_update").val();
    var telefono_cliente_update = $("#telefono_cliente_update").val();
    var correo_cliente_update = $("#correo_cliente_update").val();
    var direccion_cliente_update = $("#direccion_cliente_update").val();
    var nombre_contacto_update = $("#nombre_contacto_update").val();
    var correo_contacto_update = $("#correo_contacto_update").val();
    var telefono_contacto_update = $("#telefono_contacto_update").val();

    var formData = new FormData(document.getElementById("frmClienteActualizar"));
    formData.append("id", id_update);
    formData.append("nombre_cliente_update", nombre_cliente_update);
    formData.append("nit_ci_cliente_update", nit_ci_cliente_update);
    formData.append("telefono_cliente_update", telefono_cliente_update);
    formData.append("correo_cliente_update", correo_cliente_update);
    formData.append("direccion_cliente_update", direccion_cliente_update);
    formData.append("nombre_contacto_update", nombre_contacto_update);
    formData.append("correo_contacto_update", correo_contacto_update);
    formData.append("telefono_contacto_update", telefono_contacto_update);
    var route = "Database/Clientes/modificar_cliente.php";
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
                $('#contenido').load('Custom/Clientes/menu_cliente.php');
                $('#frmClienteActualizar').modal('hide');
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
});
$("#frmCliente").submit(function(e) {
    e.preventDefault();
    var nombre_cliente_nuevo = $("#nombre_cliente_nuevo").val();
    var nit_ci_cliente_nuevo = $("#nit_ci_cliente_nuevo").val();
    var telefono_cliente_nuevo = $("#telefono_cliente_nuevo").val();
    var correo_cliente_nuevo = $("#correo_cliente_nuevo").val();
    var direccion_cliente_nuevo = $("#direccion_cliente_nuevo").val();
    var nombre_contacto_nuevo = $("#nombre_contacto_nuevo").val();
    var correo_contacto_nuevo = $("#correo_contacto_nuevo").val();
    var telefono_contacto_nuevo = $("#telefono_contacto_nuevo").val();
    var formData = new FormData(document.getElementById("frmCliente"));
    formData.append("nombre_cliente_nuevo", nombre_cliente_nuevo);
    formData.append("nit_ci_cliente_nuevo", nit_ci_cliente_nuevo);
    formData.append("telefono_cliente_nuevo", telefono_cliente_nuevo);
    formData.append("correo_cliente_nuevo", correo_cliente_nuevo);
    formData.append("direccion_cliente_nuevo", direccion_cliente_nuevo);
    formData.append("nombre_contacto_nuevo", nombre_contacto_nuevo);
    formData.append("correo_contacto_nuevo", correo_contacto_nuevo);
    formData.append("telefono_contacto_nuevo", telefono_contacto_nuevo);
    console.log("FORMMM DATA CLIENTE", formData);
    var route = "Database/Clientes/adicionar_cliente.php";
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
                if (refreshModalCliente == false) {
                    $('#contenido').load('Custom/Clientes/menu_cliente.php');
                    $('#nuevoClienteForm').modal('hide');
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                    swal({
                        title: "Guardado!",
                        text: "Cliente Guardado Correctamente!",
                        type: "success",
                        showConfirmButton: false,
                        timer: 3000
                    });
                } else {
                    $('#nuevoClienteForm').modal('hide');
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                    swal({
                        title: "Guardado!",
                        text: "Cliente Guardado Correctamente!",
                        type: "success",
                        showConfirmButton: false,
                        timer: 3000
                    });
                }

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
///funcio para eliminar liente
function eliminar_cliente(id) {
    console.log('IDasdasdasd', id);
    swal({
        title: "Esta seguro de eliminar el Cliente",
        text: "Presione Si para eliminar el registro de la base de datos!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: '<i class="flaticon-delete-2"> </i> Si, Eliminar!',
        cancelButtonText: '<i class="la la-thumbs-down"> </i> Cancelar'
            //closeOnConfirm: false 
    }).then((result) => {
        if (result.value) {
            var route = "Database/Clientes/eliminar_cliente.php";
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
                        text: "Cliente eliminado",
                        type: "success",
                        showConfirmButton: false,
                        timer: 3000
                    });
                    $('#contenido').load('Custom/Clientes/menu_cliente.php');
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
///funcio para obtener datos por moficar
function datos_por_modificar_cliente(id) {
    // console.log('ID_CLI', id);
    var route = "Database/Clientes/obtenerCliente.php";
    var parametros = {
        'id': id,
        'ci_cliente': null
    };
    $.get(route, parametros, function(data) {
        console.log("DATACLIIII", data);
        var valor = jQuery.parseJSON(data);
        $("#id_update").val(valor.id);
        $("#nombre_cliente_update").val(valor.nombre_cliente);
        $("#nit_ci_cliente_update").val(valor.nit_ci_cliente);
        $("#telefono_cliente_update").val(valor.telefono_cliente);
        $("#correo_cliente_update").val(valor.correo_cliente);
        $("#direccion_cliente_update").val(valor.direccion_cliente);
        $("#nombre_contacto_update").val(valor.nombre_contacto);
        $("#correo_contacto_update").val(valor.correo_contacto);
        $("#telefono_contacto_update").val(valor.telefono_contacto);
    });
}
$(document).on('change', 'input[type="file"]', function() {
    var fileName = this.files[0].name;
    var fileSize = this.files[0].size;

    if (fileSize > 5000000) {
        alert('El archivo no debe superar los 5MB');
        this.value = '';
        this.files[0].name = '';
    } else {
        // recuperamos la extensión del archivo
        var ext = fileName.split('.').pop();

        // console.log(ext);
        switch (ext) {
            case 'jpg':
            case 'jpeg':
            case 'png':
                break;
            default:
                toastr.warning("Debe ser una imagen", "Archivo!")
                this.value = ''; // reset del valor
                this.files[0].name = '';
        }
    }
});
/* FUNCION PARA PODER CARGAR EL COMBO DE CARACTER DE SOCIO */
function fnCargarComboCaracterSocio() {
    var route = "Database/Socios/comboCaracterSocio.php";
    $.ajax({
        url: route,
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var htmlCaracterSocio = '';
            htmlCaracterSocio += '<option value="">-- Seleccione --</option>';
            $.each(data, function(ind, elem) {
                console.log('ELEMENTO', elem);
                htmlCaracterSocio += '<option value=' + elem.idcaraso + '>' + elem.caracter + '</option>';
            });
            $("#caracter_nuevo").append(htmlCaracterSocio);
            $("#caracter_modificar").append(htmlCaracterSocio);
        }
    });
}

function fnCargarComboTipoUusuario() {
    var route = "Database/Socios/comboTipoUsuario.php";
    $.ajax({
        url: route,
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var htmlTipoUsuario = '';
            htmlTipoUsuario += '<option value="">-- Seleccione --</option>';
            $.each(data, function(ind, elem) {
                console.log('ELEMENTO', elem);
                htmlTipoUsuario += '<option value=' + elem.idustipo + '>' + elem.descripcion + '</option>';
            });
            $("#tipo_usuario_nuevo").append(htmlTipoUsuario);
            $("#tipo_usuario_modificar").append(htmlTipoUsuario);
        }
    });
}

function nuevo_medio_almacenamiento(id) {
    // console.log("ID", id);
    $("#id_clienteAlmacenamiento").val(id);
}

function cerrar() {
    $("input, select").change(function() {
        modifiedFormClienteUpdate = true;
    });
    // console.log("Cearararara", modifiedFormClienteUpdate);
    if (modifiedFormClienteUpdate) {
        // console.log("Hubo cambios en el formulario");
        swal({
            title: "Esta seguro de salir",
            text: "Hubo cambios en el formulario",
            type: "question",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: 'Si, Salir!',
            cancelButtonText: '<i class="la la-thumbs-down"> </i> Cancelar'
                //closeOnConfirm: false 
        }).then((result) => {
            if (result.value) {
                $("#frmCliente")[0].reset();
                $("#actualizarClienteForm").modal('hide'); //ocultamos el modal
                $("#nuevoClienteForm").modal('hide'); //ocultamos el modal
                $('body').removeClass('modal-open'); //eliminamos la clase del body para poder hacer scroll
                $('.modal-backdrop').remove(); //eliminamos el backdrop del modal
                modifiedFormClienteUpdate = false;
            }
        });
    } else {
        $("#frmCliente")[0].reset();
        $("#actualizarClienteForm").modal('hide'); //ocultamos el modal
        $("#nuevoClienteForm").modal('hide'); //ocultamos el modal
        $('body').removeClass('modal-open'); //eliminamos la clase del body para poder hacer scroll
        $('.modal-backdrop').remove(); //eliminamos el backdrop del modal
        modifiedFormClienteUpdate = false;
    }
}
$('#btnGenRepCli').click(function(id = 2) {
    console.log("reppppp");
    $("#reporteModal").modal();
    var src = "Reportes/Clientes/rptClientes.php?id=" + 1;
    var object = "<object data=\"{src}\" type=\"application/pdf\" width=\"750px\" height=\"600px\">";
    object += "</object>";
    object = object.replace(/{src}/g, src);
    $("#dialog").html(object);
    $("#dialog").show();
});