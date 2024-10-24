<?php
 session_start();

require 'PHP/conecta.php';

$email = $_POST['email'];
$senha = $_POST['senha'];


$consulta_user = "SELECT * FROM dono WHERE email = '$email' and senha = '$senha'";

$resultado_user = $conexao->query($consulta_user);
$registros_user = $resultado_user->num_rows;


        if($registros_user == 1){
            $result_user = mysqli_fetch_assoc($resultado_user);

            $_SESSION['id'] = $result_user['id_dono'];
            $_SESSION['email'] = $result_user['email'];
        
            header('Location:index.php');
        } 
        else {
            $consulta_adm = " SELECT * FROM veterinário WHERE email = '$email' and senha = '$senha' ";
            $resultado_adm = $conexao->query($consulta_adm);
            $registros_adm = $resultado_adm->num_rows;

            if($registros_adm == 1){
                $result_adm= mysqli_fetch_assoc($resultado_adm);
                header('Location: adm.php');
            }
            else{
                echo "ERRO!";
            }
        }
 ?>