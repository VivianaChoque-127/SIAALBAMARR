<!-- FORMULARIO para nuevo socio-->
<div class="modal fade" id="hacer_prestamoForm" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header d-flex justify-content-center" style="text-align: center; background-color: #773FDF; color:white">
                <h4 class="modal-title w-100 font-weight-bold" style="color:white"><i class="col-sm-2 fa fa-user prefix grey-text" style="color:white"></i>Nuevo Prestamo</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <input type="hidden" id="id_lector_nuevo" class="form-control m-input--solid validate">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="frmNuevoPrestamo" role="form" method="post" enctype="multipart/form-data" autocomplete="off">
                <div class="modal-body mx-3">
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label" style="text-align: left;">Nombre</label>
                        <div class="col-sm-11">
                            <input type="text" id="nombre_prestamo_nuevo" class="form-control m-input--solid validate">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label" style="text-align: left;">CI</label>
                        <div class="col-sm-5">
                            <input type="text" id="CI_prestamo_nuevo" class="form-control m-input--solid validate">
                        </div>
                        <label class="col-sm-2 col-form-label" style="text-align: left;">Libro</label>
                        <div class="col-sm-4">
                            <select class="form-control m-input m-input--solid" style="width : 250px;" id="libro_nuevo"></select>
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