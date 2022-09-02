-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02-Set-2022 às 14:46
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lib_power`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id_aluno` int(5) NOT NULL AUTO_INCREMENT,
  `aluno_nome` varchar(60) NOT NULL,
  `aluno_cpf` varchar(25) NOT NULL,
  `aluno_contato` varchar(50) NOT NULL,
  `aluno_criadoem` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `aluno_nome`, `aluno_cpf`, `aluno_contato`, `aluno_criadoem`) VALUES
(7, 'Fabio Sousa', '123456789', 'fabio@email.com', '0000-00-00 00:00:00'),
(8, 'Alexandre Sousa', '123456', 'alexandre@email.com', '2030-08-22 03:00:00'),
(9, 'xvxcxcvcx', 'aasda', 'asda', '0000-00-00 00:00:00'),
(10, 'Fabio Sousaa', '123456789', 'fabio@email.com', '2012-12-12 13:10:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id_funcionario` int(3) NOT NULL AUTO_INCREMENT,
  `funcionario_nome` varchar(60) NOT NULL,
  `funcionario_cpf` varchar(20) NOT NULL,
  `funcionario_criadoem` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `id_livro` int(11) NOT NULL AUTO_INCREMENT,
  `livro_nome` varchar(50) NOT NULL,
  `livro_capa` varchar(255) NOT NULL,
  `livro_autor` varchar(50) NOT NULL,
  `livro_criadoem` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `livro_nome`, `livro_capa`, `livro_autor`, `livro_criadoem`) VALUES
(1, 'PHP OO', 'PHP OO', 'Anthony Jefferson', '2022-08-24 23:30:33'),
(3, 'Harry Potter', 'Capa', 'J. K. Rollings', '2022-08-25 22:30:05'),
(5, 'Livro Teste', 'qualqer', 'qualquer', '2022-08-25 23:18:04'),
(6, 'LIvro de Java', 'Qualquer', 'Java muito louco', '2022-08-27 00:08:32'),
(7, 'Pequeno Principe', 'Pequena', 'Lins', '2022-08-31 00:17:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `id_professor` int(5) NOT NULL AUTO_INCREMENT,
  `professor_nome` varchar(60) NOT NULL,
  `professor_curso` varchar(25) NOT NULL,
  `professor_contato` varchar(50) NOT NULL,
  `professor_criadoem` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_professor`),
  UNIQUE KEY `id_professor` (`id_professor`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id_professor`, `professor_nome`, `professor_curso`, `professor_contato`, `professor_criadoem`) VALUES
(2, 'marco', 'ingles', 'marco@email.com', '0000-00-00 00:00:00'),
(3, 'marco 2', 'ingles 2', 'marco2@email.com', '0000-00-00 00:00:00'),
(4, 'binho', 'programação', 'binho@email.com', '2010-10-10 03:00:00'),
(5, 'binho2', 'ingles3', 'binho2@email.com', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(150) DEFAULT NULL,
  `USER_LOGIN` varchar(120) DEFAULT NULL,
  `USER_EMAIL` varchar(210) DEFAULT NULL,
  `USER_PASSWORD` varchar(150) DEFAULT NULL,
  `USER_FUNCTIONS` varchar(765) DEFAULT NULL,
  `USER_CREATED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID_USER`, `USER_NAME`, `USER_LOGIN`, `USER_EMAIL`, `USER_PASSWORD`, `USER_FUNCTIONS`, `USER_CREATED`) VALUES
(1, 'Administrador', 'admin', 'admin@admin.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', '2022-08-25 17:27:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
