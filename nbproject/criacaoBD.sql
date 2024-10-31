- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/10/2024 às 19:02
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `presente`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `lista_codigo` int(11) NOT NULL,
  `produto_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lista`
--

CREATE TABLE `lista` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descricao` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `buscar` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `criacao` date NOT NULL,
  `foto` varchar(45) NOT NULL DEFAULT 'padrão.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`lista_codigo`,`produto_codigo`),
  ADD KEY `produto_codigo` (`produto_codigo`);

--
-- Índices de tabela `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lista`
--
ALTER TABLE `lista`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`lista_codigo`) REFERENCES `lista` (`codigo`) ON DELETE CASCADE,
  ADD CONSTRAINT `itm_ibfk_2` FOREIGN KEY (`produto_codigo`) REFERENCES `produto` (`codigo`);

--
-- Restrições para tabelas `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `lista_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
