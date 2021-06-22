//funcion para crear nuevo caracter de socio
function nuevo_caracter() {
  var caracter = $('#caracter_nuevo').val();
  var parametros = {
    'caracter': caracter
  };
  $.ajax({
    data: parametros,
    url: 'Database/Socios/nuevo_caracter_socio.php',
    type: 'post',
    success: function (data) {
      if (data == 1) {
        swal({
          title: "Registrado!",
          text: "Caracter de Socio Registrado",
          type: "success",
          showConfirmButton: false,
          timer: 3000
        });
        $('#contenido').load('Custom/Socios/menu_socio_caracter.php');
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
//funcio para modificar el careacter de socio
function modificar_caracter() {
  var id = $('#id_caracter').val();
  var caracter = $('#caracter_modificar').val();
  var parametros = {
    'caracter': caracter,
    'id': id
  };
  $.ajax({
    data: parametros,
    url: 'Database/Socios/modificar_caracter_socio.php',
    type: 'post',
    success: function (data) {
      if (data == 1) {
        swal({
          title: "Actualizado!",
          text: "Caracter de Socio Actualizado",
          type: "success",
          showConfirmButton: false,
          timer: 3000
        });
        $('#contenido').load('Custom/Socios/menu_socio_caracter.php');
        $('#modificarcaracterForm').modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
      } else {
        swal({
          title: "MENSAJE...",
          text: "No se pudo Actualizar el Registro",
          confirmButtonColor: "#EF5350",
          confirmButtonText: 'Aceptar',
          type: "warning"
        });
      }
    }
  });
}
/* FUNCION QUE TRAE LOS DATOS PARA SER MODIFICADOS */
function datos_por_modificar(valor, valor1) {
  $('#id_caracter').val(valor);
  $('#caracter_modificar').val(valor1);
}
/* FUNCION PARA ELIMINAR UN CARACTER DE SOCIO */
function eliminar_caracter(id) {
  var parametros = {
    'id': id
  };
  swal({
    title: "Esta seguro de eliminar el Caracter de Socio?",
    text: "Presione Si para eliminar el registro de la base de datos!",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "Si, Eliminar!",
    cancelButtonText: 'Cancelar'
    //closeOnConfirm: false 
  }).then((result) => {
    if (result.value) {
      $.ajax({
        data: parametros,
        url: 'Database/Socios/eliminar_caracter_socio.php',
        type: 'post',
        success: function (data) {
          if (data == 1) {
            swal({
              title: "ELiminado!",
              text: "Caracter de Socio eliminado",
              type: "success",
              showConfirmButton: false,
              timer: 3000
            });
            $('#contenido').load('Custom/Socios/menu_socio_caracter.php');
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