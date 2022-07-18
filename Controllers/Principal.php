<?php
class Principal extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
    }
    public function index()
    {
        
    }
    
    
    public function detail($id_producto)
    {
        $data['title'] = '------------';
        $this->views->getView('principal', "detail", $data);
    }
    public function registro()
    {
        $data['title'] = 'register';
        $this->views->getView('principal', "register", $data);
    }
}