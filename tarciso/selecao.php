<?php
require 'conn.php';
class ClassSelecao extends Classconn 
{
    function FunctionSelecao()
    {
        $dados = $_POST['condicao'];
        $sql = ("SELECT * FROM aluno WHERE id = :id");
        $resultado = self::FunctionSQL($sql,$banco=null,$parametro=null,$dados);
       $resultado_1 = $resultado->fetchAll();
    
       echo json_encode([
       'data'=>$resultado_1
    ]);
    }
}

$obj = new ClassSelecao;
$obj->FunctionSelecao();
