 
 
<!-- login-->
<div id="modalLogin" class="modal fade" tabindex="-1" role="dialog"  aria-labelledby="my-modal-title" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">                                              
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title" id="titleLogin">Iniciar Sesión o Crear Cuenta</h5>
        <button class="btn-close" data-bs-dismiss="modal" aria-label="closed" ></button>
      </div>

      <div class="modal-body m-3">
        <form method="get" action="" >
          <div class="text-center">
          <img class="img-thumbnail rounded-circle" src="<?php echo BASE_URL . 'assets/img/fall.png';?>" alt="" width="100">
          </div>

          <div class="row">
              <div class="col-md-12" id="frmLogin">
                <div class="form-group mb-3">
                  <label for="correoLogin"> <i class="fas fa-envelope"></i> Correo</label>
                  <input id="correoLogin" class="form-control" type="email" name="correoLogin" placeholder="Correo electrónico">
                </div>
                <div class="form-group mb-3">
                  <label for="claveLogin"><i class="fas fa-key" ></i> Contraseña</label>
                  <input id="claveLogin" class="form-control" type="password" name="claveLogin" placeholder="Contraseña">
               </div>
               <a href="#" id="btnRegister" >Crea tu cuenta aquí</a>
                <div class="float-end">
                 <button class="btn btn-primary btn-lg" type="button" id="login">Login</button>
                </div>
              </div>
              <!--formulario de registro-->
              <div class="col-md-12 d-none"  id="frmRegister">
              <div class="form-group mb-3">
                  <label for="nombreRegistro"> <i class="fas fa-list"></i> Nombre</label>
                  <input id="nombreRegistro" class="form-control" type="text" name="nombreRegistro" placeholder="Nombre completo">
                </div>
                <div class="form-group mb-3">
                  <label for="correoRegistro"> <i class="fas fa-envelope"></i> Correo</label>
                  <input id="correoRegistro" class="form-control" type="email" name="correoRegistro" placeholder="Correo electrónico">
                </div>
                <div class="form-group mb-3">
                  <label for="claveoRegistro"><i class="fas fa-key" ></i> Contraseña</label>
                  <input id="claveRegistro" class="form-control" type="password" name="claveRegistro" placeholder="Contraseña">
                  
                </div>
                <a href="#" id="btnLogin" >Ya tienes cuenta?</a>
                <div class="float-end">
                 <button class="btn btn-primary btn-lg" type="button" id ="registrarse">Registrate</button>
                </div>
              </div>
          </div>
          

          
        </form>
      </div>
      
    </div>
  </div>
</div>

 <!-- Start Footer -->
 <footer class="bg-dark" id="tempaltemo_footer">
    <div class="container">
      <div class="row">

        <div class="col-md-4 pt-5">
          <h2 class="h2 text-util border-bottom pb-3 border-light logo">Ubicanos</h2>
          <ul class="list-unstyled text-light footer-link-list">
            <li>
              <i class="fas fa-map-marker-alt fa-fw"></i>
             UTFSM sede viña del mar - Departamento U.
            </li>
            <li>
              <i class="fa fa-phone fa-fw"></i>
              <a class="text-decoration-none" href="tel:66-66-66-66">9-9999-999</a>
            </li>
            <li>
              <i class="fa fa-envelope fa-fw"></i>
              <a class="text-decoration-none" href="mailto:fenix.jh5@gmail.com">email de contacto</a>
            </li>
          </ul>
        </div>

      

        <div class="col-md-4 pt-5">
          <h2 class="h2 text-light border-bottom pb-3 border-light">Inicio</h2>
          <ul class="list-unstyled text-light footer-link-list">
            <li><a class="text-decoration-none" href="<?php echo BASE_URL?>">Menu</a></li>
         
          </ul>
        </div>

      </div>

     

    <div class="w-100 bg-black py-3">
      <div class="container">
        <div class="row pt-2">
          <div class="col-12">
            <p class="text-left text-light">
              Copyright &copy; 2022 c3-web
            </p>
          </div>
        </div>
      </div>
    </div>

  </footer>
  <!-- End Footer -->

  <!-- Start Script -->
  <script src="<?php echo BASE_URL;?>assets/js/jquery-3.6.0.min.js"></script>
  <script src="<?php echo BASE_URL;?>assets/js/jquery-migrate-1.2.1.min.js"></script>
  <script src="<?php echo BASE_URL;?>assets/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo BASE_URL;?>assets/js/templatemo.js"></script>
  <script src="<?php echo BASE_URL;?>assets/js/all.min.js"></script>
  <script src="<?php echo BASE_URL;?>assets/js/sweetalert2.all.min.js"></script>
  
  <script > 
  const base_url="<?php echo BASE_URL;?>" 
  </script>
  <script src="<?php echo BASE_URL;?>assets/js/login.js"></script>
  <!-- End Script -->