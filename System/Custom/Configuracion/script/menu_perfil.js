/*CARGA INICIO DE LA PAGINA*/
$(document).ready(function () {
  /********************* ANULAR ENTER EN FORMULARIOS ******************/
  $('input').keypress(function (e) {
    if (e.which == 13) {
      return false;
    }
  });

  var id = $('#user_id').val();
  fnObtenerDatosUser(id)
});
// Funcion para modificar datos de perfil   USUARIO Y PASSWORD
function modificar_perfil(valor, pass, usuario_ant) {
  var id = valor;
  var pass_ant = pass;
  var antigua_pass = document.getElementById("password_antiguo").value;
  var usuario = document.getElementById("usuario").value;
  var nueva_pass = document.getElementById("password_nuevo").value;

  if (usuario === "") {
    toastr.warning("Debe introducir un usuario", "Usuario!");
    document.getElementById("usuario").focus();
    return false
  }
  if (antigua_pass !== "") {
    if (pass_ant === md5(antigua_pass)) {
      if (nueva_pass !== "") {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
          if (xhttp.readyState == 4 && xhttp.status == 200) {
            $('#contenido').load('Custom/Configuracion/menu_perfil.php');
          }
        };
        xhttp.open("POST", "Database/Configuracion/modificar_perfil.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("usuario=" + usuario + "&password=" + md5(nueva_pass) + "&id=" + id + "");
        toastr.success('Los datos se modificaron exitosamente', 'Modificado!');
      }
      else {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
          if (xhttp.readyState == 4 && xhttp.status == 200) {
            $('#contenido').load('Custom/Configuracion/menu_perfil.php');
          }
        };
        xhttp.open("POST", "Database/Configuracion/modificar_perfil.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("usuario=" + usuario + "&password=" + pass_ant + "&id=" + id + "");
        toastr.success('Usuario modificado exitosamente', 'Modificado!');
      }
    }
    else {
      toastr.warning('Contraseña actual incorrecta', 'Advertencia!');
      document.getElementById("password_antiguo").focus();
      return false
    }
  }
  else {
    if (usuario_ant !== usuario) {
      toastr.warning('Introduzca contraseña actual para realizar cambios', 'Advertencia!');
      document.getElementById("password_antiguo").focus();
      return false
    }
    else {
      return false
    }
  }
}
///FUNCION PARA MODIFICAR ESPECIFEICAMENTE LA FOTO DE PERFIL DE USUARIO
$("#frmModificarFoto").change(function (e) {
  e.preventDefault();
  var id_user_modificar = $("#id_user_modificar").val();
  var imagen = $("#file-upload").val();
  var extensiones = imagen.substring(imagen.lastIndexOf("."));
  if (extensiones != ".jpg" && extensiones != ".png" && extensiones != ".jpeg") {
    toastr.warning("El archivo de tipo " + extensiones + " no es válido", "Imagen!")
  }
  else {
    var formData = new FormData(document.getElementById("frmModificarFoto"));
    formData.append("id", id_user_modificar);
    var route = "Database/Configuracion/modificar_foto.php";
    $.ajax({
      url: route,
      type: "post",
      dataType: "html",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: function (data) {
        swal({
          title: "Perfil!",
          text: "Actualización Correcta!",
          type: "success",
          showConfirmButton: false,
          timer: 3000
        });
        $('#contenido').load('Custom/Configuracion/menu_perfil.php');
      }
    });
  }
});
function fnObtenerDatosUser(id) {
  var route = "Database/Usuarios/obtenerUsuario.php";
  var parametros = {
    'id': id
  };
  $.get(route, parametros, function (data) {
    console.log("DATA", data);
    var valor = jQuery.parseJSON(data);
    var name_0 = document.getElementById("name_0");
    var name_1 = document.getElementById("name_1");
    var name_full = document.getElementById("name_full");
    // name_complete.innerHTML = valor.snombre + ' ' + valor.sapellido1 + ' ' + valor.sapellido2;
    name_0.innerHTML = valor.nom_usuario;
    name_1.innerHTML = valor.nom_usuario;
    name_full.innerHTML = valor.nom_usuario;
    $("#usuario_name").val(valor.nom_usuario);
  });
}

$("#btnGuardarCambios").click(function () {
  var id = $("#user_id").val();
  var user = $("#usuario_name").val();
  var passActual = $("#password_antiguo").val();
  var passNuevo = $("#password_nuevo").val();
  var route = "Database/Usuarios/modificar_usuario.php";
  var parametros = {
    'id': id,
    'usuario': user,
    'passAntiguo': passActual,
    'passNuevo': passNuevo
  };
  $.ajax({
    data: parametros,
    url: route,
    type: 'post',
    success: function (data) {
      console.log("DATAAAA", data);
      if (data == 0) {
        swal({
          title: "MENSAJE...",
          text: "No se pudo Actualizar el Registro",
          confirmButtonColor: "#EF5350",
          confirmButtonText: 'Aceptar',
          type: "warning"
        });
        /* $('#contenido').load('Custom/Socios/menu_tipos_usuarios.php');
        $('#nuevousuarioForm').modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove(); */
      }
      if (data == 'passDiferentes') {
        swal({
          title: "MENSAJE...",
          text: "Error en las Credenciales",
          confirmButtonColor: "#EF5350",
          confirmButtonText: 'Aceptar',
          type: "warning"
        });
      }
      if (data == 'notUpdate') {
        swal({
          title: "MENSAJE...",
          text: "Error no se pudo Actualizar las Credenciales",
          confirmButtonColor: "#EF5350",
          confirmButtonText: 'Aceptar',
          type: "warning"
        });
      }
      if (data == 'update') {
        swal({
          title: "Actualizado!",
          text: "Credenciales Actualizados!",
          type: "success",
          showConfirmButton: false,
          timer: 3000
        });
      }
    }
  });
  console.log("Parametros", parametros);
  console.log("usuariooo", user, passActual, passNuevo);
});