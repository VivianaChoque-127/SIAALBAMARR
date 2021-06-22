/*CARGA INICIO DE LA PAGINA*/
$(document).ready(function() {
    /********************* ANULAR ENTER EN FORMULARIOS ******************/
    $('input').keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });

    var id = $('#user_id').val();
    fnObtenerDatosUser(id);
    /* FUNCIONES PARA LAS ACCIONES EN EL SISTEMA */
    $('#Perfil').click(function() {
        $("#contenido").load("Custom/Configuracion/menu_perfil.php");
    });
    $('#menuLectores').click(function() {
        $("#contenido").load("Custom/Lectores/menu_lector.php");
    });
    $('#menuLibros').click(function() {
        $("#contenido").load("Custom/Libros/menu_libro.php");
    });
});
/* FUNCION PARA OBTENER DATOS DEL USUARIO LOGUEADO */
function fnObtenerDatosUser(id) {
    var route = "Database/Usuarios/obtenerUsuario.php";
    var parametros = {
        'id': id
    };
    $.get(route, parametros, function(data) {
        // console.log("DATA", data);
        var valor = jQuery.parseJSON(data);
        /* if (valor.imagen_perfil != null) {
        	document.getElementById("user_image").src = "data:image/png;base64," + valor.imagen_perfil;
        	document.getElementById("user_image1").src = "data:image/png;base64," + valor.imagen_perfil;
        }
        else {
        	$("#user_image").attr("src", "assets/app/media/img/users/user4.jpg");
        	$("#user_image1").attr("src", "assets/app/media/img/users/user4.jpg");
        } */
        var name_complete = document.getElementById("name_user_complete");
        // name_complete.innerHTML = valor.snombre + ' ' + valor.sapellido1 + ' ' + valor.sapellido2;
        name_complete.innerHTML = valor.nombre_usuario;
        var user_name = document.getElementById("user_name");
        user_name.innerHTML = '<small>' + valor.nom_usuario + '</smal>';
    });
}