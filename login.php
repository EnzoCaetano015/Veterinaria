<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <form action="processa_login.php" method="POST">
        <input name="email" type="email">
        <input name="senha" type="text">
        <button type="submit">Confirmar</button>
</body>
</html>