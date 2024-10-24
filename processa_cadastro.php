<?php

    require 'PHP/conecta.php';

       $email = $_POST['email'];
       $nome = $_POST['nome'];
       $cpf = $_POST['cpf'];
       $datanasc = $_POST['datanasc'];
       $rg = $_POST['rg'];
       $estado = $_POST['estado'];
       $cidade = $_POST['cidade'];
       $bairro = $_POST['bairro'];
       $rua = $_POST['rua'];
       $telefone = $_POST['telefone'];
       $senha = $_POST['senha'];

       $consulta = "INSERT INTO dono (email,nome,CPF,nascimento,RG,estado,cidade,bairro,rua,telefone,senha) VALUES 
       ('$email','$nome','$cpf','$datanasc','$rg','$estado','$cidade','$bairro','$rua','$telefone','$senha')";

        $conexao->query($consulta);

        header('Location: index.php');
?>

       