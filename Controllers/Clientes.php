<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';
class Clientes extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
    }
    public function index()
    {
        if (empty($_SESSION['correoCliente'])) {
            header('Location: ' . BASE_URL);
        }
        $data['title'] = 'Tu perfil';
    
        $this->views->getView('principal', "perfil", $data);

    }
    
    public function registroDirecto()
    {
        
        if(isset($_POST['nombre'])&& isset($_POST['clave']) ){
            if (empty($_POST['nombre']) || (empty($_POST['correo'])) || (empty($_POST['clave']) )) {
                $mensaje = array('msg' => 'TODOS LOS CAMPOS SON REQUERIDOS','icono'=> 'warning');
            }else{
                $nombre=$_POST['nombre'];
                $correo=$_POST['correo'];
                $clave=$_POST['clave'];
                $verificar = $this->model->getVerificar($correo);
                if (empty($verificar)) {
                    $hash = password_hash($clave, PASSWORD_DEFAULT);
                    $data=$this->model->registroDirecto($nombre,$correo,$hash);
                    if ($data>0){
                        $_SESSION['correoCliente'] = $correo;
                        $_SESSION['nombreCliente'] = $nombre;
                        $mensaje = array('msg' => 'registrado con éxito','icono'=>'success');
                    }else{
                        $mensaje = array('msg' => 'error al registrarse','icono'=> 'error');
                    }
                    
                } else {
                    $mensaje = array('msg' => 'YA TIENES CUENTA','icono'=> 'warning');
                }
                
            }
            echo json_encode($mensaje, JSON_UNESCAPED_UNICODE);
            die(); 
        }
    }
 
    public function loginDirecto()
    {
        
        if(isset($_POST['correoLogin'])&& isset($_POST['claveLogin']) ){
            if (empty($_POST['correoLogin']) || (empty($_POST['claveLogin']))  ){
                $mensaje = array('msg' => 'TODOS LOS CAMPOS SON REQUERIDOS','icono'=> 'warning');
            }else{
                $correo=$_POST['correoLogin'];
            
                $clave=$_POST['claveLogin'];
                $verificar = $this->model->getVerificar($correo);
                if (!empty($verificar)) {
                    $_SESSION['correoCliente'] = $verificar['corre'];
                    $_SESSION['nombreCliente'] = $verificar['nombre'];
                    if (password_verify($clave,$verificar['clave'])){
                        $mensaje = array('msg' => 'ok','icono'=>'success');
                    }else{
                        $mensaje = array('msg' => 'CONTRASEÑA INCORRECTA','icono'=> 'error');
                    }
                    
                } else {
                    $mensaje = array('msg' => 'EL CORREO NO EXISTE','icono'=> 'warning');
                }
                
            }
            echo json_encode($mensaje, JSON_UNESCAPED_UNICODE);
            die(); 
        }
    }

    
 
} 