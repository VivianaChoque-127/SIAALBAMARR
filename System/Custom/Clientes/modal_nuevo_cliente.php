<!-- FORMULARIO para nuevo socio-->
<div class="modal fade" id="nuevoClienteForm" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header d-flex justify-content-center" style="text-align: center; background-color: #773FDF; color:white">
        <h4 class="modal-title w-100 font-weight-bold" style="color:white"><i class="col-sm-2 fa fa-user prefix grey-text" style="color:white"></i>Nuevo Cliente</h4>
        <button type="button" class="close" style="color:white" onclick="cerrar()">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="frmCliente" role="form" method="post" enctype="multipart/form-data" autocomplete="off">
        <div class="modal-body mx-3">
          <div class="form-group row">
            <label class="col-sm-1 col-form-label" style="text-align: left;">Cliente</label>
            <div class="col-sm-11">
              <input type="text" id="nombre_cliente_nuevo" class="form-control m-input--solid validate">
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-1 col-form-label" style="text-align: left;">NIT/CI</label>
            <div class="col-sm-5">
              <input type="text" id="nit_ci_cliente_nuevo" class="form-control m-input--solid validate" onkeypress="return solo_numeros(event);">
            </div>
            <label class="col-sm-1 col-form-label" style="text-align: left;">Telefono</label>
            <div class="col-sm-5">
              <input type="text" id="telefono_cliente_nuevo" class="form-control m-input--solid validate" onkeypress="return solo_numeros(event);">
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-1 col-form-label" style="text-align: left;">Correo</label>
            <div class="col-sm-5">
              <input type="email" id="correo_cliente_nuevo" class="form-control m-input--solid validate">
            </div>
            <label class="col-sm-2 col-form-label" style="text-align: left;">Dirección</label>
            <div class="col-sm-4">
              <select class="form-control m-input m-input--solid" id="direccion_cliente_nuevo">
                <option>La Paz - Boliva</option>
                <option>Oruro - Bolivia</option>
                <option>Potosi - Bolivia</option>
                <option>Cochabamba - Bolivia</option>
                <option>Santa Cruz - Bolivia</option>
                <option>Chuquisaca - Bolivia</option>
                <option>Beni - Boliva</option>
                <option>Pando - Boliva</option>
                <option>Tarija - Bolivia</option>
              </select>
            </div>
          </div>
          <hr>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label" style="text-align: left;">Nombre Contacto</label>
            <div class="col-sm-9">
              <input type="text" id="nombre_contacto_nuevo" class="form-control m-input--solid validate">
            </div>
          </div>
          <div class="form-group row">
            <label class="col-sm-3 col-form-label" style="text-align: left;">Correo Contacto</label>
            <div class="col-sm-4">
              <input type="email" id="correo_contacto_nuevo" class="form-control m-input--solid validate">
            </div>
            <label class="col-sm-2 col-form-label" style="text-align: left;">Teléfono Contacto</label>
            <div class="col-sm-3">
              <input type="text" id="telefono_contacto_nuevo" class="form-control m-input--solid validate" onkeypress="return solo_numeros(event);">
            </div>
          </div>
        </div>
        <div class="modal-footer d-flex justify-content-center">
          <!-- <input type='submit' value='Guardar' class="btn btn-primary m-btn m-btn--pill m-btn--custom m-btn--icon m-btn--air">
                    btn btn-success -->
          <button type="submit" class="btn btn-primary m-btn m-btn--pill m-btn--custom m-btn--icon m-btn--air">
            <span>
              <i class="la la-plus"></i>
              <span>
                Guardar Registro
              </span>
            </span>
          </button>
        </div>
    </div>
    </form>
  </div>
</div>