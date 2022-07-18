<?php
class ClientesModel extends Query{
 
    public function __construct()
    {
        parent::__construct();
    }
    public function registroDirecto($nombre,$correo,$clave)
    {
        $sql = "INSERT INTO clientes(nombre, corre, clave) VALUES (?,?,?)";
        $datos= array($nombre,$correo,$clave);
        $data=$this->insertar($sql,$datos);
        if($data>0){
             $res=$data;
        }else{
             $res=0;
        }
        return$res;
    }
    public function getVerificar($correo){
        $sql = "SELECT * FROM clientes WHERE corre = '$correo'";
        return $this->select($sql);
    }
   
}
 
?>