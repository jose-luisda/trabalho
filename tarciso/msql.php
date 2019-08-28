<?php
require_once 'conn.php';
class ClassMDL extends Classconn 
{
    private $sql;
    function FunctionIserte()
    {
        $this->sql = "INSERT INTO $this->tabela ($this->campo) VALUES ($this->values)";
        self::FunctionSQL($this->sql,$this->banco,$this->paremetro);
    }
}
