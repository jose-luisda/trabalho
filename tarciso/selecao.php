<?php
require 'conn.php';
class ClassSelecao extends Classconn 
{
    function FunctionSelecao()
    {
        $dados = $_POST['condicao'];
        if ($dados) {
            $sql = ("SELECT * FROM aluno WHERE id >= :id");
            $resultado = self::FunctionSQL($sql,$banco=null,$parametro=null,$dados);
            $contado = $resultado->rowCount(); 
           $resultado_1 = $resultado->fetchAll();
        }
            $deletado = $_POST['deleta'];
            if ($deletado) {
            $sql = ("DELETE FROM aluno WHERE id = :id");
            $resultado = self::FunctionSQL($sql,$banco=null,$parametro=null,$deletado);
            $contado = $resultado->rowCount(); 
            if ($contado) {
                $sucesso='Deletado com sucesso!';
            } else {
                $sucesso='Não deletado com sucesso!';
            }
        }
            
        echo $deletado;
       echo json_encode([
           'deletado'=>$sucesso,
        'contador'=> $contado,
       'data'=>$resultado_1
    ]);

 

    }
}

$obj = new ClassSelecao;
$obj->FunctionSelecao();
