<?php

require 'msql.php';
class Classagrupamento extends ClassMDL
{
    protected $campo,$table,$values,$banco,$paremetro;
    function Functionagrupamento( $var = null,$variable)
    {
        foreach ($var as $key => $value) {
            switch ($variable) {
                case 'aluno':
                      if ($key == 'nome') {
                          
                          $this->banco[] = $value;
                          $this->paremetro[] = "':$key'";
                          $this->values = ":$key,";
                          $this->campo = $key . ',';
                          
                      } else {
                          if ($key == 'cpf') {
                           
                            $this->banco[]= $value;
                            $this->paremetro[] = "':$key'";
                            $this->values .= ":$key,";
                            $this->campo .= $key . ',';
                          } else {
                              if ($key == 'email') {
                                    
                                $this->banco[]= $value;
                                $this->paremetro[] = "':$key'";
                                $this->values .= ":$key,";
                                $this->campo .= $key . ',';
                              } else {
                                
                                $this->banco[]= $value;
                                $this->paremetro[] = "':$key'";
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