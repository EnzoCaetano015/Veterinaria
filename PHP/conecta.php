<!-- Este será o arquivo de conexão com o banco de dados uaando a linguagem PHP -->

<?php

$host = "localhost";
$usuario = "root";
$password = "";
$banco = "veterinaria";

$conexao = new mysqli($host,$usuario,$password,$banco);

if (mysqli_connect_errno()){
  echo "ERRO AO CONECTAR";
    }

?>