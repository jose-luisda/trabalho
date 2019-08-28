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
    function FunctionSQL($msql=null,$banco=null,$parametro=null,$id = null)
    {
        $this->sql = $this->conn->prepare($msql);
            if (!$id) {
                $this->sql->bindParam(':nome', $banco[0], PDO::PARAM_STR);
                $this->sql->bindParam(':cpf', $banco[1], PDO::PARAM_STR);
                $this->sql->bindParam(':email', $banco[2], PDO::PARAM_STR);
                $this->sql->bindParam(':telefone', $banco[3], PDO::PARAM_STR);
                $this->sql->execute();
            } else {
                $this->sql->bindValue(':id', $id, PDO::PARAM_INT);
                $this->sql->execute();
            }

            if($parametro){
                $this->sql->bindParam(':id', $id, PDO::PARAM_INT); 
            }
         return $this->sql;
    }
}

?>