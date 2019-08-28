<?php
require 'conn.php';
class ClassSelecao extends Classconn 
{
    function FunctionSelecao()
    {
        $dados = $_POST['condicao'];
        $sql = ("SELECT * FROM aluno WHERE id >= :id");
        $resultado = self::FunctionSQL($sql,$banco=null,$parametro=null,$dados);
        $contado = $resultado->rowCount(); 
       $resultado_1 = $resultado->fetchAll();
    
       echo json_encode([
        'contador'=> $contado,
       'data'=>$resultado_1
    ]);
    }
}

$obj = new ClassSelecao;
$obj->FunctionSelecao();
