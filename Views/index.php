<?php include_once 'Views/template-principal/header.php'; ?>


  

  <!-- Start Banner Hero -->
  
  <!-- End Banner Hero -->


  <!-- Start Categories of The Month -->
  <section class="container py-5">
    <div class="row text-center pt-3">
      <div class="col-lg-6 m-auto">
        <h1 class="h1">Géneros</h1>
        <p>
          Lista de géneros disponibles.
        </p>
      </div>
    </div>
    <div class="row">
      <?php foreach($data['categorias'] as $categoria) { ?>
        <div class="col-12 col-md-2 p-5 mt-3">
          <a href="#"><img src="<?php echo  $categoria['imagen'];?> " class="rounded-circle img-fluid border"></a>
          <h5 class="text-center mt-3 mb-3"><?php echo $categoria['categoria'];?></h5>
        </div>
      <?php } ?>
    </div>
  </section>
  <!-- End Categories of The Month -->


  <!-- Start Featured Product -->
  <section class="bg-light">
    <div class="container py-5">
      <div class="row text-center py-3">
        <div class="col-lg-6 m-auto">
          <h1 class="h1">Productos</h1>
          <p>
            Todos los ejemplares disponibles!!
          </p>
        </div>
      </div>

      <div class="row">
        <?php foreach ($data['nuevoProducto'] as $producto) { ?>
        <div class="col-12 col-md-4 mb-4">
          <div class="card h-100">
            <a href="<?php echo BASE_URL . 'principal/detail/' . $producto['id'] ?>">
              <img src="<?php echo $producto['imagen'];?>" class="card-img-top" alt="<?php echo $producto['nombre'];?>">
            </a>
            <div class="card-body"> 
              <ul class="list-unstyled d-flex justify-content-between">
               
                <li class="text-muted text-right"><?php echo MONEDA . ' ' . $producto['precio'];?></li>
              </ul>
              <a href="<?php echo BASE_URL . 'principal/detail/' . $producto['id'] ?>" class="h2 text-decoration-none text-dark"><?php echo  $producto['nombre'];?></a>
              <p class="card-text">
              <?php echo $producto['descripcion'];?>
              </p>
            </div>
          </div>
        </div>
        <?php }?>
       
          
        </div>
      </div>
    </div>
  </section>
  <!-- End Featured Product -->



  <?php include_once 'Views/template-principal/footer.php'; ?>
</body>

</html>