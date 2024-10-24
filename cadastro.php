<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <form action="processa_cadastro.php" method="POST">
        <input placeholder="E-Mail" name="email" type="email">
        <input placeholder="Nome" name="nome" type="text">
        <input name="datanasc" type="date">
        <input placeholder="CPF" name="cpf" type="text">
        <input placeholder="RG" name="rg" type="text">
        <input placeholder="Estado" name="estado" type="text">
        <input placeholder="Cidade" name="cidade" type="text">
        <input  placeholder="Bairro"name="bairro" type="text">
        <input  placeholder="Rua" name="rua" type="text">
        <input  placeholder="Telefone" name="telefone" type="tel">
        <input  placeholder="Senha" name="senha" type="password">
        <input  placeholder="Confirmar Senha" name="confirm" type="text">
        <button type="submit">Confirmar</button>
</body>
</html>