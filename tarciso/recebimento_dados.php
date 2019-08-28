<?php
require 'agrupamento.php';
class Classredebe extends Classagrupamento
{
    private $dados;

    function dadoscomun()
    {
        $this->dados = array('nome' =>$_POST['nome'] , 'cpf'=>$_POST['cpf'],'email'=>$_POST['email'],'telefone'=>$_POST['telefone']);
        self::Functionagrupamento($this->dados,'aluno');
    }

}
$obj = new Classredebe;
$obj->dadoscomun();
?>