<?php
class Home extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
        
    }
    public function index()
    {
        $data['title'] = 'Pagina Principal';
        
        $data['categorias']=$this->model->getCategorias();
        $data['nuevoProducto']=$this->model->getNuevoProductos();
        $this->views->getView('home', "index", $data);

    }
    
} 