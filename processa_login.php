<?php
require 'PHP/conecta.php';

$email = $_POST['email'];
$senha = $_POST['senha'];


$consulta = " SELECT * FROM dono WHERE email = '$email' and senha = '$senha' ";

$resultado = $conexao->query($consulta);
$registros = $resultado->num_rows;
$result_usuario = mysqli_fetch_assoc($resultado);

if($registros == 1){
    header('Location:index.php');
}
else{
    echo "ERRO";
}
 ?>