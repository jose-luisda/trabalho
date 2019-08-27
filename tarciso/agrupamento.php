<?php

require 'msql.php';
class Classagrupamento extends 
{
    protected $campo,$table,$values;
    function Functionagrupamento( $var = null)
    {
        foreach ($var as $key => $value) {
            switch ($variable) {
                case 'aluno':
                      if ($key == 'nome') {
                          $banco = self::FunctionIserte();
                          $banco->bindvalue(":$key",$value,PDO::PARAM_STR);
                          $this->values = ":$key,";
                          $this->campo = $key . ',';
                      } else {
                          if ($key == 'cpf') {
                            $banco = self::FunctionIserte();
                            $banco->bindvalue(":$key",$value,PDO::PARAM_STR);
                            $this->values .= ":$key,";
                            $this->campo .= $key . ',';
                          } else {
                              if ($key == 'telefone') {
                                    $banco = self::FunctionIserte();
                                    $banco->bindvalue(":$key",$value,PDO::PARAM_STR);
                                    $this->values .= ":$key,";
                                  $this->campo .= $key . ',';
                              } else {
                                $banco = self::FunctionIserte();
                                $banco->bindvalue(":$key",$value,PDO::PARAM_STR);
                                $this->values .= ":$key";
                                $this->campo .= $key ;
                                $this->tabela = 'aluno';
                                self::FunctionIserte();
                              }
                              
                          }
                          
                      }
                      
                    break;
            }
        }
    }
}


?>