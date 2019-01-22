-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.25a
-- Versão do PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `agendatecnologica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contatos`
--

CREATE TABLE IF NOT EXISTS `tb_contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` varchar(18) DEFAULT NULL,
  `celular` varchar(18) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `obs` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tb_contatos`
--

--INSERT INTO `tb_contatos` (`id`, `nome`, `endereco`, `telefone`, `celular`, `fax`, `email`, `obs`) VALUES
--(1, 'Rafael Paes Leme', 'Rua Dr. Vasconcelos, 26, centro, Três Rios, RJ', '(24)2255-5211', '(24)9 9999-7634', '', 'rafaelspaesleme.ads@gmail.com', 'Emial Opcional: rafaels.paesleme@hotmail.com\nNúmero Oi: (24)988818410\nSite: www.rpldesign.com.br'),
--(2, 'Lúcia Helena (Minha mãe)', 'Rua Dr. Vasconcelos, 26, centro, Três Rios, RJ', '(24)2255-5211', '(24)9 8811-1707', '', 'luciahspl@hotmail.com', 'O WhatsApp dela é o mesmo número do celular citado acima.'),
--(3, 'Dalva', 'Rua Dr. Vasconcelos, 28, centro, Três Rios', '(24)2255-5211', '(  )      -    ', '', '', ''),
--(4, 'Ana Caroline Ribeiro Rufino de Souza', 'Pilões', '(  )    -    ', '(24)9 9927-8052', '', 'carolinerufino.adv@gmail.com', 'Minha namorada.'),
--(5, 'Marco Aurelio (Aluguel)', 'Três Rios', '(24)2255-3516', '(24)9 9278-5262', '', '', 'Contato para aluguel e venda de Imoveis.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_nomedeacesso`
--

CREATE TABLE IF NOT EXISTS `tb_nomedeacesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tb_nomedeacesso`
--

--INSERT INTO `tb_nomedeacesso` (`id`, `nome`, `obs`) VALUES
--(1, 'Rafael Paes Leme', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_nota`
--

CREATE TABLE IF NOT EXISTS `tb_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `nome` varchar(300) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `obs` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `tb_nota`
--

--INSERT INTO `tb_nota` (`id`, `titulo`, `descricao`, `nome`, `data`, `obs`) VALUES
--(2, 'Pegar meu oculos', 'Pegar meu oculos amanhã.', 'Rafael Paes Leme', '2016-03-03', NULL),
--(3, 'ICM Paraiba do Sul', 'Evangelização na ICM de Paraiba do Sul', 'Rafael Paes Leme', '2016-03-03', NULL),
--(4, 'Terminar de arrumar Notebook do Thárcio', 'Terminar ainda essa semana. (até dia 6).', 'Rafael Paes Leme', '2016-03-03', NULL),
--(5, 'Terminar Notebook da minha mãe.', 'Terminar até a semana que vem!', 'Rafael Paes Leme', '2016-03-03', NULL),
--(6, 'Aniversario do Gabriel', 'Hoje é aniversario do meu irmão!', 'Rafael Paes Leme', '2016-03-03', NULL),
--(7, 'Curso ANDROID', 'Aula 01 - Android + MySQL\n\nVideo:\nhttps://www.youtube.com/watch?v=WOsQow2UKNU', 'Rafael Paes Leme', '2016-05-18', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(150) DEFAULT NULL,
  `usuario` varchar(32) NOT NULL,
  `senha` varchar(16) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nome`, `sobrenome`, `usuario`, `senha`, `obs`) VALUES
(1, 'Administrador', 'Do Sistema', 'admin', 'admin', 'Usuário Padrão do Sistema e Administrador'),
--(2, 'Rafael', 'Paes Leme', 'rafael', '12345', 'Usuário Principal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
