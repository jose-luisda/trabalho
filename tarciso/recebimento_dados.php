<?php
class ClassName 
{
    private $dados;

    function dadoscomun()
    {
        $dados = array('nome' =>$_POST['nome'] , 'cpf'=>$_POST['cpf'],'email'=>$_POST['email'],'telefone'=>$_POST['telefone']);

    }
}
?>