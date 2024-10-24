-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/10/2024 às 13:13
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veterinaria`
--
CREATE DATABASE IF NOT EXISTS `veterinaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veterinaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `dtnasc` date DEFAULT NULL,
  `espécie` varchar(255) DEFAULT NULL,
  `raça` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `porte` varchar(255) DEFAULT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `castrado` bit(1) DEFAULT NULL,
  `id_dono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `horario` time DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `id_veterinario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `dono`
--

CREATE TABLE `dono` (
  `id_dono` int(11) AUTO_INCREMENT NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ficha`
--

CREATE TABLE `ficha` (
  `id_diag` int(11) AUTO_INCREMENT NOT NULL,
  `exames` varchar(255) DEFAULT NULL,
  `retorno` bit(1) DEFAULT NULL,
  `diagnostico` varchar(255) DEFAULT NULL,
  `medicamento` varchar(255) DEFAULT NULL,
  `vacina` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `id_consulta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `veterinário`
--

CREATE TABLE `veterinário` (
  `id_veterinario` int(11) AUTO_INCREMENT NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `RG` varchar(255) DEFAULT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `formação` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `especialização` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veterinário`
--

INSERT INTO `veterinário` (`id_veterinario`, `nome`, `RG`, `CPF`, `nascimento`, `telefone`, `email`, `formação`, `tipo`, `especialização`) VALUES
(1, 'Ricardo Vanin', '49.393.756-9', '401.672.718-90', '0000-00-00', '11941064144', 'peracioenzo@gmail.com', 'medicina veterinária na USP', 'adm', 'Analises clinicas');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `id_dono` (`id_dono`);

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `id_veterinario` (`id_veterinario`);

--
-- Índices de tabela `dono`
--
ALTER TABLE `dono`
  ADD PRIMARY KEY (`id_dono`);

--
-- Índices de tabela `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`id_diag`),
  ADD KEY `id_consulta` (`id_consulta`);

--
-- Índices de tabela `veterinário`
--
ALTER TABLE `veterinário`
  ADD PRIMARY KEY (`id_veterinario`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_dono`) REFERENCES `dono` (`id_dono`);

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinário` (`id_veterinario`);

--
-- Restrições para tabelas `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
