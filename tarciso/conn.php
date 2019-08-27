<?php
class Classconn 
{
    private $host, $db, $use, $pass, $conn,$sql;

    function __construct()
    {
        $this->host = 'localhost';
        $this->db = 'escola';
        $this->use = 'root';
        $this->pass = 'jldcs0512';
        self::FunctionExecute();

    }

    function FunctionExecute()
    {
        $this->conn = new PDO("mysql:host=$this->host;dbname=$this->db",$this->use,$this->pass);
        
    }
    function FunctionSQL($msql)
    {
        $this->sql = $this->conn->prepare($msql);
        $this->sql->execute();
        $sqls = $this->sql;
        return $sql;
    }
}

?>