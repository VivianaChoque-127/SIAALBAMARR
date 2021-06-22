var indexItemsI = 0;
//limpiar y asignar valor al formulario nueva cuenta
function limpiar_cu_co() {
	document.getElementById("valor_retornar").value = "";
	document.getElementById("digito_cuenta").value = "";
	document.getElementById("digito_rubro").value = "";
	document.getElementById("digito_grupo").value = "";
	document.getElementById("digito_sub_cuenta").value = "";
	document.getElementById("digito_sub_grupo").value = "";
	document.getElementById("detalle_cuenta").value = "";
	document.getElementById("detalle_rubro").value = "";
	document.getElementById("detalle_grupo").value = "";
	document.getElementById("detalle_sub_cuenta").value = "";
	document.getElementById("detalle_sub_grupo").value = "";
	document.getElementById("codigo_generado").value = "";
	document.getElementsByName("actividad_cu_co")[0].disabled = false;
}
/* FUNCION AL CARGAR EL SCRIPT */
$(document).ready(function () {
	//funciones para agregar cuenta contable , validacion de numeros
	$("#digito_rubro").keyup(function () {
		var codigo = event.which || event.keyCode;
		var cod = document.getElementById("codigo_generado").value;
		var value = $(this).val();
		if (codigo === 9) {
			return false
		}
		if (codigo == 8) {
			var nuevotexto = "000000000";
			document.getElementById("digito_grupo").value = "";
			document.getElementById("digito_sub_grupo").value = "";
			document.getElementById("digito_cuenta").value = "";
			document.getElementById("digito_sub_cuenta").value = "";
			document.getElementById("detalle_grupo").value = "";
			document.getElementById("detalle_sub_grupo").value = "";
			document.getElementById("detalle_cuenta").value = "";
			document.getElementById("detalle_sub_cuenta").value = "";
			document.getElementById("digito_grupo").disabled = true;
			document.getElementById("digito_sub_grupo").disabled = true;
			document.getElementById("digito_cuenta").disabled = true;
			document.getElementById("digito_sub_cuenta").disabled = true;
			document.getElementById("detalle_grupo").disabled = true;
			document.getElementById("detalle_sub_grupo").disabled = true;
			document.getElementById("detalle_cuenta").disabled = true;
			document.getElementById("detalle_sub_cuenta").disabled = true;
			document.getElementsByName("actividad_cu_co")[1].disabled = true;
			document.getElementsByName("actividad_cu_co")[0].checked = true;

		} else {
			var nuevotexto = value + "00000000";
			document.getElementById("digito_grupo").value = "";
			document.getElementById("digito_sub_grupo").value = "";
			document.getElementById("digito_cuenta").value = "";
			document.getElementById("digito_sub_cuenta").value = "";
			document.getElementById("detalle_grupo").value = "";
			document.getElementById("detalle_sub_grupo").value = "";
			document.getElementById("detalle_cuenta").value = "";
			document.getElementById("detalle_sub_cuenta").value = "";
		}
		$("#codigo_generado").val(nuevotexto);
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		}
		else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var detalle = document.getElementById("detalle_rubro").value = xmlhttp.responseText;
				if (detalle !== "") {
					document.getElementById("digito_grupo").disabled = false;
					document.getElementById("digito_sub_grupo").disabled = true;
					document.getElementById("digito_cuenta").disabled = true;
					document.getElementById("digito_sub_cuenta").disabled = true;
					document.getElementById("detalle_grupo").disabled = false;
					document.getElementById("detalle_sub_grupo").disabled = true;
					document.getElementById("detalle_cuenta").disabled = true;
					document.getElementById("detalle_sub_cuenta").disabled = true;
					document.getElementsByName("actividad_cu_co")[1].disabled = true;
					document.getElementsByName("actividad_cu_co")[0].checked = true;
				}
			}
		}
		xmlhttp.open("POST", "Database/Contabilidad/Ingreso/busqueda_cuenta.php", true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send("codigo=" + nuevotexto + "");
	});
	//funciones para agregar cuenta contable , validacion de numeros
	$("#digito_grupo").keyup(function () {
		var codigo = event.which || event.keyCode;
		var rubro = document.getElementById("digito_rubro").value;
		if (rubro === "") {
			rubro = "0";
		}
		var cod = document.getElementById("codigo_generado").value;
		var value = $(this).val();
		if (codigo === 9) {
			return false
		}
		if (codigo == 8) {
			var nuevotexto = rubro + "00000000";
			document.getElementById("digito_sub_grupo").value = "";
			document.getElementById("digito_cuenta").value = "";
			document.getElementById("digito_sub_cuenta").value = "";
			document.getElementById("detalle_sub_grupo").value = "";
			document.getElementById("detalle_cuenta").value = "";
			document.getElementById("detalle_sub_cuenta").value = "";
			document.getElementById("digito_sub_grupo").disabled = true;
			document.getElementById("digito_cuenta").disabled = true;
			document.getElementById("digito_sub_cuenta").disabled = true;
			document.getElementById("detalle_sub_grupo").disabled = true;
			document.getElementById("detalle_cuenta").disabled = true;
			document.getElementById("detalle_sub_cuenta").disabled = true;
			document.getElementsByName("actividad_cu_co")[1].disabled = true;
			document.getElementsByName("actividad_cu_co")[0].checked = true;

		} else {
			var nuevotexto = rubro + value + "0000000";
			document.getElementById("digito_sub_grupo").value = "";
			document.getElementById("digito_cuenta").value = "";
			document.getElementById("digito_sub_cuenta").value = "";
			document.getElementById("detalle_sub_grupo").value = "";
			document.getElementById("detalle_cuenta").value = "";
			document.getElementById("detalle_sub_cuenta").value = "";
		}
		$("#codigo_generado").val(nuevotexto);
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		}
		else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var detalle = document.getElementById("detalle_grupo").value = xmlhttp.responseText;
				if (detalle !== "") {
					document.getElementById("digito_sub_grupo").disabled = false;
					document.getElementById("digito_cuenta").disabled = true;
					document.getElementById("digito_sub_cuenta").disabled = true;
					document.getElementById("detalle_sub_grupo").disabled = false;
					document.getElementById("detalle_cuenta").disabled = true;
					document.getElementById("detalle_sub_cuenta").disabled = true;
					document.getElementsByName("actividad_cu_co")[1].disabled = true;
					document.getElementsByName("actividad_cu_co")[0].checked = true;
				}
				else {
					document.getElementById("digito_sub_grupo").disabled = true;
					document.getElementById("digito_cuenta").disabled = true;
					document.getElementById("digito_sub_cuenta").disabled = true;
					document.getElementById("detalle_sub_grupo").disabled = true;
					document.getElementById("detalle_cuenta").disabled = true;
					document.getElementById("detalle_sub_cuenta").disabled = true;
					document.getElementsByName("actividad_cu_co")[1].disabled = true;
					document.getElementsByName("actividad_cu_co")[0].checked = true;
				}
			}
		}
		xmlhttp.open("POST", "Database/Contabilidad/Ingreso/busqueda_cuenta.php", true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send("codigo=" + nuevotexto + "");
	});
	//funciones para agregar cuenta contable , validacion de numeros
	$("#digito_sub_grupo").keyup(function () {
		var rubro = document.getElementById("digito_rubro").value;
		var grupo = document.getElementById("digito_grupo").value;
		if (rubro === "") { rubro = "0"; }
		if (grupo === "") { grupo = "0"; }
		var codigo = event.which || event.keyCode;
		var value = $(this).val();
		var tamaño = value.length;
		if (codigo === 9) {
			return false
		}
		if (codigo == 8) {
			if (tamaño == "1") {
				nuevotexto = rubro + grupo + "0" + value + "00000";
				document.getElementById("digito_cuenta").value = "";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
				document.getElementById("digito_cuenta").disabled = false;
				document.getElementById("digito_sub_cuenta").disabled = true;
				document.getElementById("detalle_cuenta").disabled = false;
				document.getElementById("detalle_sub_cuenta").disabled = true;
				document.getElementsByName("actividad_cu_co")[1].disabled = false;
			} else {
				nuevotexto = rubro + grupo + "0000000";
				document.getElementById("digito_cuenta").value = "";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
				document.getElementById("digito_cuenta").disabled = true;
				document.getElementById("digito_sub_cuenta").disabled = true;
				document.getElementById("detalle_cuenta").disabled = true;
				document.getElementById("detalle_sub_cuenta").disabled = true;
				document.getElementsByName("actividad_cu_co")[1].disabled = false;
			}
		} else {
			if (tamaño == "1") {
				nuevotexto = rubro + grupo + "0" + value + "00000";
				document.getElementById("digito_cuenta").value = "";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
			} else {
				nuevotexto = rubro + grupo + value + "00000";
				document.getElementById("digito_cuenta").value = "";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
			}

		}
		$("#codigo_generado").val(nuevotexto);
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		}
		else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var detalle = document.getElementById("detalle_sub_grupo").value = xmlhttp.responseText;
				if (detalle !== "") {
					document.getElementById("digito_cuenta").disabled = false;
					document.getElementById("digito_sub_cuenta").disabled = true;
					document.getElementById("detalle_cuenta").disabled = false;
					document.getElementById("detalle_sub_cuenta").disabled = true;
					document.getElementsByName("actividad_cu_co")[0].disabled = false;
					document.getElementsByName("actividad_cu_co")[1].disabled = false;
				}
				else {
					document.getElementById("digito_cuenta").disabled = true;
					document.getElementById("digito_sub_cuenta").disabled = true;
					document.getElementById("detalle_cuenta").disabled = true;
					document.getElementById("detalle_sub_cuenta").disabled = true;
					document.getElementsByName("actividad_cu_co")[0].disabled = false;
					document.getElementsByName("actividad_cu_co")[1].disabled = false;
				}
			}
		}
		xmlhttp.open("POST", "Database/Contabilidad/Ingreso/busqueda_cuenta.php", true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send("codigo=" + nuevotexto + "");
	});
	//funciones para agregar cuenta contable , validacion de numeros
	$("#digito_cuenta").keyup(function () {
		var rubro = document.getElementById("digito_rubro").value;
		var grupo = document.getElementById("digito_grupo").value;
		var sub_grupo = document.getElementById("digito_sub_grupo").value;
		if (rubro === "") {
			rubro = "0";
		}
		if (grupo === "") {
			grupo = "0";
		}
		if (sub_grupo === "") {
			sub_grupo = "00";
		}
		if (sub_grupo.length === 1) {
			sub_grupo = "0" + sub_grupo;
		}
		var codigo = event.which || event.keyCode;
		var value = $(this).val();
		var tamaño = value.length;
		if (codigo === 9) {
			return false
		}
		if (codigo == 8) {
			if (tamaño == "1") {
				nuevotexto = rubro + grupo + sub_grupo + "0" + value + "000";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
				document.getElementById("digito_sub_cuenta").disabled = true;
				document.getElementById("detalle_sub_cuenta").disabled = true;
				document.getElementsByName("actividad_cu_co")[1].disabled = false;
			} else {
				nuevotexto = rubro + grupo + sub_grupo + "00000";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
				document.getElementById("digito_sub_cuenta").disabled = true;
				document.getElementById("detalle_sub_cuenta").disabled = true;
				document.getElementsByName("actividad_cu_co")[1].disabled = false;
			}
		} else {
			if (tamaño == "1") {
				nuevotexto = rubro + grupo + sub_grupo + "0" + value + "000";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";

			} else {
				nuevotexto = rubro + grupo + sub_grupo + value + "000";
				document.getElementById("digito_sub_cuenta").value = "";
				document.getElementById("detalle_sub_cuenta").value = "";
			}
		}
		$("#codigo_generado").val(nuevotexto);

		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		}
		else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var detalle = document.getElementById("detalle_cuenta").value = xmlhttp.responseText;

				if (detalle !== "") {
					document.getElementById("digito_sub_cuenta").disabled = false;
					document.getElementById("detalle_sub_cuenta").disabled = false;

					document.getElementsByName("actividad_cu_co")[1].disabled = false;
				}
				else {
					document.getElementById("digito_sub_cuenta").disabled = true;
					document.getElementById("detalle_sub_cuenta").disabled = true;

					document.getElementsByName("actividad_cu_co")[1].disabled = false;
				}
			}
		}
		xmlhttp.open("POST", "Database/Contabilidad/Ingreso/busqueda_cuenta.php", true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send("codigo=" + nuevotexto + "");

	});
	//control para guardar nueva cuenta contable
	$("#digito_sub_cuenta").keyup(function () {
		var rubro = document.getElementById("digito_rubro").value;
		var grupo = document.getElementById("digito_grupo").value;
		var sub_grupo = document.getElementById("digito_sub_grupo").value;
		var cuenta = document.getElementById("digito_cuenta").value;

		if (rubro === "") {
			rubro = "0";
		}
		if (grupo === "") {
			grupo = "0";
		}
		if (sub_grupo === "") {
			sub_grupo = "00";
		}
		if (cuenta === "") {
			cuenta = "00";
		}
		if (sub_grupo.length === 1) {
			sub_grupo = "0" + sub_grupo;
		}
		if (cuenta.length === 1) {
			cuenta = "0" + cuenta;
		}
		var codigo = event.which || event.keyCode;
		var value = $(this).val();
		var tamaño = value.length;
		if (codigo === 9) {
			return false
		}
		if (codigo == 8) {
			if (tamaño == "1") {
				nuevotexto = rubro + grupo + sub_grupo + cuenta + "00" + value;
			} else {
				if (tamaño == "2") {
					nuevotexto = rubro + grupo + sub_grupo + cuenta + "0" + value;
				} else {
					nuevotexto = rubro + grupo + sub_grupo + cuenta + "000";
				}
			}
		} else {
			if (tamaño === 1) {
				nuevotexto = rubro + grupo + sub_grupo + cuenta + "00" + value;
			} else {
				if (tamaño === 2) {
					nuevotexto = rubro + grupo + sub_grupo + cuenta + "0" + value;
				}
				else {
					nuevotexto = rubro + grupo + sub_grupo + cuenta + value;
				}
			}
		}
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		}
		else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function () {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("detalle_sub_cuenta").value = xmlhttp.responseText;
			}
		}
		xmlhttp.open("POST", "Database/Contabilidad/Ingreso/busqueda_cuenta.php", true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send("codigo=" + nuevotexto + "");
		document.getElementsByName("actividad_cu_co")[0].disabled = true;
		document.getElementsByName("actividad_cu_co")[1].checked = true;
		$("#codigo_generado").val(nuevotexto);
	});
});
//funcion para guardar nueva cuenta contable
function agregar_cuenta_contable() {
	var codigo = document.getElementById("codigo_generado").value;
	var rubro = document.getElementById("detalle_rubro").value;
	var grupo = document.getElementById("detalle_grupo").value;
	var sub_grupo = document.getElementById("detalle_sub_grupo").value;
	var cuenta = document.getElementById("detalle_cuenta").value;
	var sub_cuenta = document.getElementById("detalle_sub_cuenta").value;
	var actividad = $('input[id="actividad_cu_co"]:checked').val();
	var tipo = document.getElementById("tipo_cuenta_co").value;
	var valor_retornar = document.getElementById("valor_retornar").value;
	var nivel = 0;
	var nombre = "";
	if (rubro === "" || codigo === "000000000") {
		toastr.warning("Debe introducir por lo menos un digito", "Cuenta!");
		document.getElementById("digito_rubro").focus();
		return false
	}

	if (sub_cuenta === "") {

		if (cuenta === "") {
			if (sub_grupo === "") {
				if (grupo === "") {
					if (rubro === "") {
						toastr.warning("Debe introducir por lo menos un digito", "Cuenta!");
						document.getElementById("digito_rubro").focus();
						return false
					} else {
						nivel = 1;
						nombre = rubro;
					}

				} else {
					nivel = 2;
					nombre = grupo;
				}
			} else {
				nivel = 3;
				nombre = sub_grupo;
			}
		} else {
			nivel = 4;
			nombre = cuenta;
		}

	} else {
		nivel = 5;
		nombre = sub_cuenta;
	}

	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function () {
		if (xhttp.readyState == 4 && xhttp.status == 200) {


		}
	};
	xhttp.open("POST", "Database/Contabilidad/Ingreso/nueva_cuenta_contable.php", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("codigo=" + codigo + "&nombre=" + nombre + "&nivel=" + nivel + "&actividad=" + actividad + "&tipo=" + tipo + "");

	//document.getElementById("codigo_"+valor_retornar+"").value=codigo;
	//document.getElementById("cuenta2_"+valor_retornar+"").innerHTML="<input type='input' class='form-control form-control-sm m-input  m-input--solid' id='cuenta' value='"+nombre+ "'><input type='input' class='form-control form-control-sm m-input  m-input--solid' id='codigo_2' style='display: none;' value='"+codigo+"'>";
	console.log(indexItemsI);
	var cont = indexItemsI - 1;
	console.log(cont);
	console.log("codigo", codigo);
	//$('#ddlCuentaI_'+cont).val(codigo).change();
	//var index = $(".ddlCuentaI").prop('selectedIndex');
	//console.log("index",index);
	console.log(indexItemsI);
	var cont = indexItemsI - 1;
	console.log(cont);
	//console.log("codigo Ingreso",codigo);
	limpiar_cu_co();
	//toastr.success("Cuenta Guardada", "Cuenta!");
	swal({
		title: "Cuenta!",
		text: "Guardada.. ",
		type: "success",
		showConfirmButton: false,
		timer: 2000
	});
}