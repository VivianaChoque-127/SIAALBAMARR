<?php
include "../Configuracion/sesion.php";
include "../../Database/conexion.php";
include "modal_nuevo_cliente.php";
include "modal_modificar_cliente.php";
include "modalImprimir.php";
include "../Almacenamiento/modal_nuevo_medio.php";
?>
<!--begin::Page Vendors -->
<script src="assets/vendors/custom/datatables/datatables.bundle.js" type="text/javascript"></script>
<!--end::Page Vendors -->
<!--begin::Page Resources -->
<script src="assets/demo/default/custom/crud/datatables/basic/paginations.js" type="text/javascript"></script>
<!--end::Page Resources -->
<script src="Custom/Clientes/script/menu_cliente.js" type="text/javascript"></script>
<script src="Custom/Almacenamiento/script/menu_almacenamiento.js" type="text/javascript"></script>
<!-- script para agregar nuevo socio -->

<!-- BEGIN: Subheader -->
<div class="m-subheader ">
  <div class="d-flex align-items-center">
    <div class="mr-auto">
      <h3 class="m-subheader__title ">
        Clientes Registrados
      </h3>
    </div>
  </div>
</div>
<div class="m-content">
  <div class="m-portlet m-portlet--mobile">
    <div class="m-portlet__head">
      <div class="m-portlet__head-caption">
        <div class="m-portlet__head-title">
          <h3 class="m-portlet__head-text">
            Lista de Clientes
          </h3>
        </div>
      </div>
      <div class="m-portlet__head-tools">
        <ul class="m-portlet__nav">
          <li class="m-portlet__nav-item">
            <a href="#" class="btn btn-primary m-btn m-btn--pill m-btn--custom m-btn--icon m-btn--air" data-toggle="modal" data-target="#nuevoClienteForm">
              <span>
                <i class="la la-plus"></i>
                <span>
                  Nuevo
                </span>
              </span>
            </a>
          </li>
          <li class="m-portlet__nav-item">
            <button class="btn btn-primary" id="btnGenRepCli">
              Gen Rep
            </button>
          </li>
        </ul>
      </div>
    </div>
    <div class="m-portlet__body">
      <table border= "1" class="table table-striped- table-bordered table-hover table-checkable" id="tblListadoClientes">
        <thead>
          <tr>
            <th colspan="5" style="text-align: center; background-color: #5B53F9; color:white">Cliente</th>
            <th colspan="4" style="text-align: center; background-color: #0B40F7; color:white">Contacto</th>
          </tr>
          <tr>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Nit / CI</th>
            <th>Telefono</th>
            <th>Direccion</th>
            <th>Nombre</th>
            <th>Telefono / Celular</th>
            <th>Correo</th>
            <th> </th>
          </tr>
        </thead>
      </table>
    </div>
  </div>
</div>