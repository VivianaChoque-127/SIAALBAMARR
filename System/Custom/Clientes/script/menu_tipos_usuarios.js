//Recuperamos a los accesoa menus que se dara
$(document).ready(function () {
  $('[name="menus[]"]').click(function () {
    var arr = $('[name="menus[]"]:checked').map(function () {
      return this.value;
    }).get();
    var str = arr.join(', ');
    $('#menu_nuevo').val(str);
  });
  $('[name="menus_modificar[]"]').click(function () {
    var array = $('[name="menus_modificar[]"]:checked').map(function () {
      return this.value;
    }).get();
    var union = array.join(', ');
    $('#menu_modificar').val(union);
  });
});
//guardamos los tipos de usuarios, con los accesos a menus
function nuevo_tipo() {
  var menu = $("#menu_nuevo").val();
  var descripcion = $('#descripcion_nuevo').val();
  //var menu=document.getElementById('menu_nuevo').value;
  if (descripcion == "") {
    toastr.warning("No debe estar vacio el campo descripción", "Descripción!");
    document.getElementById("descripcion_nuevo").focus();
  }
  else {
    if (menu == "") {
      toastr.warning("Debe seleccionar al menos un Menú", "Menú!");
    }
    else {
      var parametros = {
        'menu': menu,
        'descripcion': descripcion
      };
      $.ajax({
        data: parametros,
        url: 'Database/Socios/nuevo_tipo_usuario.php',
        type: 'post',
        success: function (data) {
          if (data == 1) {
            swal({
              title: "Registrado!",
              text: "Tipo  de Usuario Registrado",
              type: "success",
              showConfirmButton: false,
              timer: 3000
            });
            $('#contenido').load('Custom/Socios/menu_tipos_usuarios.php');
            $('#nuevousuarioForm').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
          } else {
            swal({
              title: "MENSAJE...",
              text: "No se pudo adicionar el Registro",
              confirmButtonColor: "#EF5350",
              confirmButtonText: 'Aceptar',
              type: "warning"
            });
          }
        }
      });
    }
  }
}
/* FUNCION PARA MODIFICAR EL TIPO DE USUARIO */
function modificar_tipo() {
  var id = document.getElementById('id_tipo').value;
  var descripcion = document.getElementById('descripcion_modificar').value;
  var menu = document.getElementById('menu_modificar').value;
  if (descripcion == "") {
    toastr.warning("No debe estar vacio el campo descripción", "Descripción!");
    document.getElementById("descripcion_modificar").focus();
  }
  else {
    if (menu == "") {
      toastr.warning("Debe seleccionar al menos un Menú", "Menú!");
    }
    else {
      var parametros = {
        'id': id,
        'menu': menu,
        'descripcion': descripcion
      };
      $.ajax({
        data: parametros,
        url: 'Database/Socios/modificar_tipo_usuario.php',
        type: 'post',
        success: function (data) {
          if (data == 1) {
            swal({
              title: "Actualización!",
              text: "Tipo de Usuario Actualizado",
              type: "success",
              showConfirmButton: false,
              timer: 3000
            });
            $('#contenido').load('Custom/Socios/menu_tipos_usuarios.php');
            $('#modificartipoForm').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
          } else {
            swal({
              title: "MENSAJE...",
              text: "No se pudo actualizar el Registro",
              confirmButtonColor: "#EF5350",
              confirmButtonText: 'Aceptar',
              type: "warning"
            });
          }
        }
      });
    }
  }
}
/* FUNCION PARA OBTENER LOS DATOS QUE SERAN MODIFICADOS */
function datos_por_modificar(valor, valor1, valor2) {
  document.getElementById('id_tipo').value = valor;
  document.getElementById('descripcion_modificar').value = valor1;
  document.getElementById('menu_modificar').value = valor2;
  //solo para el checkbox de socio
  if (valor2 == "Socios") {
    $('#Edit_socio').attr('checked', true);
    $('#Edit_contabilidad').attr('checked', false);
    $('#Edit_configuracion').attr('checked', false);
  }
  //solo para el checkbox de socio y Contabilidad
  if (valor2 == "Socios, Contabilidad") {
    $('#Edit_socio').attr('checked', true);
    $('#Edit_contabilidad').attr('checked', true);
    $('#Edit_configuracion').attr('checked', false);
  }
  //solo para el checkbox de socio y Configuracion
  if (valor2 == "Socios, Configuracion") {
    $('#Edit_socio').attr('checked', true);
    $('#Edit_contabilidad').attr('checked', false);
    $('#Edit_configuracion').attr('checked', true);
  }
  //solo para el checkbox de contabilidad
  if (valor2 == "Contabilidad") {
    $('#Edit_contabilidad').attr('checked', true);
    $('#Edit_socio').attr('checked', false);
    $('#Edit_configuracion').attr('checked', false);
  }
  //solo para el checkbox de contabilidad y Configuracion
  if (valor2 == "Contabilidad, Configuracion") {
    $('#Edit_contabilidad').attr('checked', true);
    $('#Edit_socio').attr('checked', false);
    $('#Edit_configuracion').attr('checked', true);
  }
  //solo para el checkbox de configuracion
  if (valor2 == "Configuracion") {
    $('#Edit_configuracion').attr('checked', true);
    $('#Edit_contabilidad').attr('checked', false);
    $('#Edit_socio').attr('checked', false);
  }
  //solo para los checkbox de Socios, Contabilidad, Configuracion
  if (valor2 == "Socios, Contabilidad, Configuracion") {
    $('#Edit_socio').attr('checked', true);
    $('#Edit_contabilidad').attr('checked', true);
    $('#Edit_configuracion').attr('checked', true);
  }
}
/* FUNCION PARA ELIMINAR EL TIPO DE USUARIO */
function eliminar_tipo(id) {
  swal({
    title: "Esta seguro de eliminar el tipo de Usuario?",
    text: "Presione Si para eliminar el registro de la base de datos!",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "Si, Eliminar!",
    cancelButtonText: 'Cancelar'
    //closeOnConfirm: false 
  }).then((result) => {
    if (result.value) {
      var parametros = {
        'id': id
      };
      $.ajax({
        data: parametros,
        url: 'Database/Socios/eliminar_tipo_usuario.php',
        type: 'post',
        success: function (data) {
          if (data == 1) {
            swal({
              title: "ELiminado!",
              text: "Tipo de usuario eliminado",
              type: "success",
              showConfirmButton: false,
              timer: 3000
            });
            $('#contenido').load('Custom/Socios/menu_tipos_usuarios.php');
          } else {
            swal({
              title: "MENSAJE...",
              text: "No se pudo eliminar el Registro",
              confirmButtonColor: "#EF5350",
              confirmButtonText: 'Aceptar',
              type: "warning"
            });
          }
        }
      });
    }
  });
}