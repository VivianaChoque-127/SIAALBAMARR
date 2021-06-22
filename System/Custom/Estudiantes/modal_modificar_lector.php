<!-- FORMULARIO para nuevo socio-->
<div class="modal fade" id="actualizarLectorForm" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header d-flex justify-content-center" style="text-align: center; background-color: #773FDF; color:white">
                <h4 class="modal-title w-100 font-weight-bold" style="color:white"><i class="col-sm-2 fa fa-user prefix grey-text" style="color:white"></i>Actualizar Lector</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <input type="hidden" id="id_update" class="form-control m-input--solid validate">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="frmLectorActualizar" role="form" method="post" enctype="multipart/form-data" autocomplete="off">
                <div class="modal-body mx-3">
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label" style="text-align: left;">Nombre</label>
                        <div class="col-sm-5">
                            <input type="text" id="nombre_update" class="form-control m-input--solid validate">
                        </div>
                        <label class="col-sm-1 col-form-label" style="text-align: left;">Apellidos</label>
                        <div class="col-sm-5">
                            <input type="text" id="apellido_update" class="form-control m-input--solid validate">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label" style="text-align: left;">Celular</label>
                        <div class="col-sm-5">
                            <input type="text" id="celular_update" class="form-control m-input--solid validate">
                        </div>
                        <label class="col-sm-1 col-form-label" style="text-align: left;">CI</label>
                        <div class="col-sm-5">
                            <input type="text" id="CI_update" class="form-control m-input--solid validate">
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
                            Actualizar Registro
                            </span>
                        </span>
                    </button>
                </div>
        </div>
        </form>
    </div>
</div>