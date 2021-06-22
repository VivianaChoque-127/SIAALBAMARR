    <?php include "sesion.php";
    include '../../Database/conexion.php';
    ?>
    <style>
        .subir {
            padding: 5px 10px;
            background: #f55d3e;
            color: #fff;
            border: 0px solid #fff;
        }

        .subir:hover {
            color: #fff;
            background: #f7cb15;
        }
    </style>
    <!--begin::Page Vendors -->
    <script src="assets/vendors/custom/datatables/datatables.bundle.js" type="text/javascript"></script>
    <!--end::Page Vendors -->
    <!--begin::Page Resources -->
    <script src="assets/demo/default/custom/crud/datatables/basic/paginations.js" type="text/javascript"></script>
    <!--end::Page Resources -->
    <!--toastr Resources -->
    <script src="assets/demo/default/custom/components/base/toastr.js" type="text/javascript"></script>
    <!--script para md5 -->
    <script type="text/javascript" src="assets/js/md5.js"></script>
    <!-- lamada al script para modificar perfil funcion modificar_perfil-->
    <script src="Custom/Configuracion/script/menu_perfil.js" type="text/javascript"></script>

    <div class="m-grid__item m-grid__item--fluid m-wrapper">
        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">
                        Mi perfil
                    </h3>
                </div>
            </div>
        </div>
        <?php
        // Consulta de datos del usuario
        /*  $uss    = $_SESSION["id"];
        $resultado = mysqli_query($conexion, "SELECT * from socios join caraso join user join ustipo where socios.idcaraso=caraso.idcaraso and user.idsocios=socios.idsocios and user.ustipo=ustipo.idustipo and user.iduser='$uss'");
        $fila = $resultado->fetch_assoc();
        $datos = $fila["imagen_perfil"]; // Se recuperan la imagen de perfil.
        //codificamos a base 64
        $datos2 = base64_encode($datos);
        $imagen_base = $datos2;
        //decodificamos base 64
        $resultado_imagen = base64_decode($imagen_base); */
        ?>
        <!-- END: Subheader -->
        <div class="m-content">
            <div class="row">
                <div class="col-xl-3 col-lg-4">
                    <div class="m-portlet m-portlet--full-height  ">
                        <div class="m-portlet__body">
                            <div class="m-card-profile">
                                <div class="m-card-profile__title m--hide">
                                    <?php
                                    $uss    = $_SESSION["id"];
                                    ?>
                                    Tu perfil
                                    <input type="text" id="user_id" value="<?php echo $uss; ?>" readonly>
                                </div>
                                <div class="m-card-profile__pic">
                                    <div class="m-card-profile__pic-wrapper">
                                        <img src="assets/app/media/img/users/user4.jpg" alt="user_image" id="user_image1" class="m--img-rounded m--marginless">
                                        <?php
                                        /* if ($resultado_imagen == "") {
                                            echo '<img src="assets/app/media/img/users/user4.jpg"class="m--img-rounded m--marginless" alt=""/>';
                                        } else {
                                            echo '<img src="data:image/png;base64,' . $resultado_imagen . '"class="m--img-rounded m--marginless" alt=""/>';
                                        } */
                                        ?>
                                    </div>
                                </div>
                                <!-- FORMULARIO que muestra datos del usuario -->
                                <div class="m-card-profile__details">
                                    <span class="m-card-profile__name" id="name_0">
                                        ADMIN
                                    </span>
                                    <a href="" class="m-card-profile__email m-link" id="name_1">
                                        admin
                                    </a>
                                </div>
                                <!-- <form id="frmModificarFoto" role="form" method="post" enctype="multipart/form-data">
                                    <input type="hidden" id="id_user_modificar" value=" ">
                                    <div class="form-group row">
                                        <div class="col-sm-12">
                                            <label for="file-upload" class="subir btn btn-unique modal-footer d-flex justify-content-center">
                                                <i class="fa fa-arrow-circle-o-up"></i> Subir archivo
                                            </label>
                                            <input id="file-upload" name='modificar_foto' type="file" style='display: none;' />
                                        </div>
                                    </div>
                                    <div class="modal-footer d-flex justify-content-center">
                                    </div>
                                </form> -->
                            </div>
                            <div class="m-portlet__body-separator"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8">
                    <div class="m-portlet m-portlet--full-height m-portlet--tabs  ">
                        <div class="m-portlet__head">
                            <div class="m-portlet__head-tools">
                                <ul class="nav nav-tabs m-tabs m-tabs-line   m-tabs-line--left m-tabs-line--primary" role="tablist">
                                    <li class="nav-item m-tabs__item">
                                        <a class="nav-link m-tabs__link active" data-toggle="tab" href="#m_user_profile_tab_1" role="tab">
                                            <i class="flaticon-share m--hide"></i>
                                            Perfil
                                        </a>
                                    </li>
                                    <li class="nav-item m-tabs__item">
                                        <a class="nav-link m-tabs__link" data-toggle="tab" href="#m_user_profile_tab_3" role="tab">
                                            Ajustes
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="m_user_profile_tab_1">

                                <div class="m-portlet__body">
                                    <div class="form-group m-form__group row">
                                        <div class="col-10 ml-auto">
                                            <h3 class="m-form__section">
                                                1. Datos Personales
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">
                                            Nombre completo
                                        </div>
                                        <div class="col-7" id="name_full">
                                            ADMIN
                                        </div>
                                    </div>
                                    <!-- div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">
                                            CI
                                        </div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;"> Fecha de Nacimiento</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Sexo</div>
                                        <div class="col-7">
                                            <b>
                                            </b>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">NIT</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Dirección</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Telefono</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Fecha de Alta</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Nota</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Caracter</div>
                                        <div class="col-7">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-3" style="text-align: right;">Tipo de Usuario</div>
                                        <div class="col-7">
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                            <div class="tab-pane " id="m_user_profile_tab_3">
                                <div class="m-portlet__body">
                                    <div class="form-group m-form__group row">
                                        <div class="col-10 ml-auto">
                                            <h3 class="m-form__section">
                                                2. Ajustes
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="example-text-input" class="col-3 col-form-label">
                                            Usuario
                                        </label>
                                        <div class="col-7">
                                            <input class="form-control m-input m-input--solid" type="text" id="usuario_name">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="example-text-input" class="col-3 col-form-label">
                                            Contraseña Actual
                                        </label>
                                        <div class="col-7">
                                            <input class="form-control m-input m-input--solid" type="password" value="" id="password_antiguo">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="example-text-input" class="col-3 col-form-label">
                                            Nueva contraseña
                                        </label>
                                        <div class="col-7">
                                            <input class="form-control m-input m-input--solid" type="password" value="" id="password_nuevo">
                                        </div>
                                    </div>
                                </div>
                                <div class="m-portlet__foot m-portlet__foot--fit">
                                    <footer class="page-footer font-small blue">
                                        <div class="footer-copyright text-center py-3">
                                            <button id="btnGuardarCambios" class="btn btn-primary m-btn m-btn--air m-btn--custom">
                                                Guardar Cambios
                                            </button>
                                        </div>
                                    </footer>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>