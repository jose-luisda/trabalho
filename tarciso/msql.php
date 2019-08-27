<?php
require_once 'conn.php';
class ClassMDL extends Classconn 
{
    private $sql;
    function FunctionIserte()
    {
        $this->sql = "INSERT INTO $this->tabelas ($this->campos) VALUES ($this->valores)";
        return self::FunctionSQL($this->sql);
        echo $this->valores;

    }
}
