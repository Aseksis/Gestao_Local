-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Maio-2020 às 00:49
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gestao_familiar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `congregacao_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `situacao`, `congregacao_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, 'Alexandre Pereira Gonçalves', 'alexandre.pereirag@gmail.com', NULL, '$2y$10$W68qBJOgIGi/dbdxYlV8yOe90IuP0k.5O4EQLMppZOY3jjSIhctXG', NULL, '2020-02-11 01:48:35', '2020-02-15 00:23:29'),
(7, 'A', 1, 'Vitor de Jesus Oliveira Braz', 'vitordejesus2017@outlook.com', NULL, '$2y$10$hAwlzUh49BwGd3zgnrDmTev1gnl124zDKt0DROoDbIa0IqyvtHrkC', NULL, '2020-02-19 00:19:56', '2020-02-19 00:19:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `casais`
--

CREATE TABLE `casais` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_esposo` int(11) NOT NULL,
  `Esposo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_esposa` int(11) NOT NULL,
  `Esposa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_casamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `casais`
--

INSERT INTO `casais` (`id`, `situacao`, `id_esposo`, `Esposo`, `id_esposa`, `Esposa`, `data_casamento`, `created_at`, `updated_at`) VALUES
(2, 'A', 4, 'Alexandre Pereira Gonçalves', 5, 'Eni Vieira Gonçalves', '01/09/1990', '2020-02-11 02:17:51', '2020-03-02 02:54:43'),
(6, 'A', 8, 'Alecson Pereira Gonçalves', 9, 'Helida Magda da Silva Gonçalves', '01/01/1990', '2020-02-12 02:35:58', '2020-02-12 02:35:58'),
(7, 'D', 2, 'Evaldo Luiz Oliveira Braz', 1, 'Ione de Jesus da Silva Braz', '01/01/1990', '2020-03-08 17:00:58', '2020-03-08 17:10:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `congregacoes`
--

CREATE TABLE `congregacoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regional_id` int(10) UNSIGNED NOT NULL,
  `congregação` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pastor_local` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_id` int(10) UNSIGNED NOT NULL,
  `endereco_nro` int(11) NOT NULL,
  `ponto_referencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `congregacoes`
--

INSERT INTO `congregacoes` (`id`, `situacao`, `regional_id`, `congregação`, `pastor_local`, `endereco_id`, `endereco_nro`, `ponto_referencia`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, 'Parque São Jose', 'Fernando Inacio', 4, 219, 'Proximo Ao Supermercado BH.', '2020-02-11 01:01:28', '2020-03-02 21:37:01'),
(2, 'A', 1, 'Teste Congregacao', 'Teste Congregacao', 1, 148, 'a', '2020-03-10 17:49:03', '2020-03-10 17:49:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rua` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id`, `situacao`, `cep`, `rua`, `bairro`, `cidade`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'A', '30570-470', 'Rua Tito Dias de Assis', 'Parque São José', 'Belo Horizonte', 'MG', '2020-02-11 00:41:04', '2020-02-11 00:41:04'),
(3, 'A', '30550-360', 'Rua Campo Formoso', 'Salgado Filho', 'Belo Horizonte', 'MG', '2020-02-11 00:59:51', '2020-02-11 00:59:51'),
(4, 'A', '30570-565', 'Rua Lourival Gonçalves Oliveira', 'Parque São José', 'Belo Horizonte', 'MG', '2020-02-11 01:01:28', '2020-02-11 01:01:28'),
(5, 'A', '30575-100', 'Rua Maria Heilbuth Surette', 'Buritis', 'Belo Horizonte', 'MG', '2020-02-11 01:40:24', '2020-02-11 01:40:24'),
(6, 'A', '30575-460', 'Avenida Dom João VI', 'Palmeiras', 'Belo Horizonte', 'MG', '2020-02-12 02:14:33', '2020-02-12 02:14:33'),
(7, 'A', '30570-080', 'Rua Júlio de Castilho', 'Cinquentenário', 'Belo Horizonte', 'MG', '2020-02-27 15:24:49', '2020-02-27 15:24:49'),
(8, 'A', '30575-380', 'Rua Dona Luci', 'Palmeiras', 'Belo Horizonte', 'MG', '2020-03-01 12:24:51', '2020-03-01 12:24:51'),
(9, 'A', '30570-380', 'Avenida Arcésio Rodrigues', 'Havaí', 'Belo Horizonte', 'MG', '2020-03-07 17:56:15', '2020-03-07 17:56:15'),
(10, 'A', '30580-170', 'Rua Estrela Brilhante', 'Estrela do Oriente', 'Belo Horizonte', 'MG', '2020-03-08 01:39:06', '2020-03-08 01:39:06'),
(11, 'A', '30580-060', 'Rua Estrela dos Viajantes', 'Estrela do Oriente', 'Belo Horizonte', 'MG', '2020-03-10 12:33:51', '2020-03-10 12:33:51'),
(12, 'A', '30575-510', 'Rua Dona Tina', 'Palmeiras', 'Belo Horizonte', 'MG', '2020-03-10 12:37:28', '2020-03-10 12:37:28'),
(13, 'A', '30575-520', 'Rua Aníbal Teotônio', 'Palmeiras', 'Belo Horizonte', 'MG', '2020-03-10 12:48:01', '2020-03-10 12:48:01'),
(14, 'A', '30550-270', 'Rua Veríssimo', 'Salgado Filho', 'Belo Horizonte', 'MG', '2020-03-10 12:52:20', '2020-03-10 12:52:20'),
(15, 'A', '30570-050', 'Rua Emídio Beruto', 'Cinquentenário', 'Belo Horizonte', 'MG', '2020-03-10 12:54:45', '2020-03-10 12:54:45'),
(16, 'A', '30570-570', 'Rua Zenita Maria Gomes', 'Parque São José', 'Belo Horizonte', 'MG', '2020-03-10 12:59:24', '2020-03-10 12:59:24'),
(17, 'A', '30570-575', 'Rua João Paulo Viotti', 'Parque São José', 'Belo Horizonte', 'MG', '2020-03-10 13:01:59', '2020-03-10 13:01:59'),
(18, 'A', '30575-368', 'Rua Cristo Rei', 'Buritis', 'Belo Horizonte', 'MG', '2020-03-10 13:18:17', '2020-03-10 13:18:17'),
(19, 'A', '30580-070', 'Rua Estrela dos Navegantes', 'Estrela do Oriente', 'Belo Horizonte', 'MG', '2020-03-10 13:28:13', '2020-03-10 13:28:13'),
(20, 'A', '30570-475', 'Rua Quatro', 'Parque São José', 'Belo Horizonte', 'MG', '2020-03-10 13:32:52', '2020-03-10 13:32:52'),
(21, 'A', '30570-450', 'Rua dos Álamos', 'Marajó', 'Belo Horizonte', 'MG', '2020-03-10 13:37:36', '2020-03-10 13:37:36'),
(22, 'A', '30570-690', 'Rua Francisco Gomes da Rocha', 'Havaí', 'Belo Horizonte', 'MG', '2020-03-10 14:01:03', '2020-03-10 14:01:03'),
(23, 'A', '30570-000', 'Rua Úrsula Paulino', 'Cinquentenário', 'Belo Horizonte', 'MG', '2020-03-10 14:08:52', '2020-03-10 14:08:52'),
(24, 'A', '30575-500', 'Rua Alfredo Caporalli', 'Palmeiras', 'Belo Horizonte', 'MG', '2020-03-10 14:20:08', '2020-03-10 14:20:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pai` int(11) NOT NULL,
  `mae` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mae` int(11) NOT NULL,
  `situacao_relacionamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome_parente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `familias`
--

INSERT INTO `familias` (`id`, `situacao`, `sobrenome`, `pai`, `id_pai`, `mae`, `id_mae`, `situacao_relacionamento`, `id_parente`, `nome_parente`, `tipo`, `created_at`, `updated_at`) VALUES
(2, 'A', 'EniAlexandre', 'Alexandre Pereira Gonçalves', 4, 'Eni Vieira Gonçalves', 5, 'Casados', '6', 'Samuel Vieira Gonçalves', 'Filho(a)', '2020-02-11 02:17:51', '2020-03-04 00:45:24'),
(6, 'A', 'HelidaAlecson', 'Alecson Pereira Gonçalves', 8, 'Helida Magda da Silva Gonçalves', 9, 'Casados', '10,18', 'Laura Kamylle Gonçalves,Lucas Lavelly Goncalves', 'Filho(a),Filho(a)', '2020-02-12 02:35:58', '2020-03-08 15:23:58'),
(8, 'A', 'IoneEvaldo', 'Evaldo Luiz Oliveira Braz', 2, 'Ione de Jesus da Silva Braz', 1, 'Divorciados', '3,7', 'Vitor de Jesus Oliveira Braz,Guilherme de Jesus Oliveira Braz', 'Filho(a),Filho(a)', '2020-03-08 17:47:46', '2020-03-08 17:47:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

CREATE TABLE `funcoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `funcao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcoes`
--

INSERT INTO `funcoes` (`id`, `situacao`, `funcao`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Cooperador', NULL, NULL),
(2, 'A', 'Diácono', NULL, NULL),
(3, 'A', 'Evangelista', NULL, NULL),
(4, 'A', 'Membro', NULL, NULL),
(5, 'A', 'Obreiro', NULL, NULL),
(6, 'A', 'Pastor', NULL, NULL),
(7, 'A', ' Presbítero', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_05_30_141943_create_enderecos_table', 1),
(2, '2013_05_30_142717_create_regionais_table', 1),
(3, '2013_05_30_142718_create_congregacoes_table', 1),
(4, '2014_10_12_000000_create_admins_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_05_30_142719_create_familias_table', 1),
(8, '2019_05_30_142720_create_funcoes_table', 1),
(9, '2019_05_30_142721_create_casais_table', 1),
(10, '2019_05_30_142722_create_pessoas_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alecsongoncalves25@gmail.com', '$2y$10$mb4nohJUEmdRYvX6AzMDRedFXq5cS.aRtNIkPMPB8Y2/p2U1NjlMm', '2020-02-12 17:47:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `congregacao_id` int(10) UNSIGNED DEFAULT NULL,
  `endereco_id` int(10) UNSIGNED NOT NULL,
  `familia_id` int(10) UNSIGNED DEFAULT NULL,
  `conjuge_id` int(10) UNSIGNED DEFAULT NULL,
  `regional_id` int(10) UNSIGNED DEFAULT NULL,
  `funcao_id` int(10) UNSIGNED DEFAULT NULL,
  `codigo_tc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pai` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mae` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nasc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` char(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_civil` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_nro` int(11) NOT NULL,
  `endereco_complemento` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `situacao_membro` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `situacao`, `congregacao_id`, `endereco_id`, `familia_id`, `conjuge_id`, `regional_id`, `funcao_id`, `codigo_tc`, `nome`, `pai`, `mae`, `data_nasc`, `sexo`, `celular`, `telefone`, `email`, `estado_civil`, `endereco_nro`, `endereco_complemento`, `created_at`, `updated_at`, `situacao_membro`) VALUES
(1, 'A', 2, 1, 8, NULL, 1, 4, '123456', 'Ione de Jesus da Silva Braz', 'Geraldo Dasdores', 'Maria Dasdores', '09/10/1969', 'Feminino', '(31) 98200-8163', '(31) 3312-3484', 'ione-da-silvaa@hotmail.com', 'Solteiro(a)', 149, 'Casa', '2020-02-11 00:41:04', '2020-03-10 18:44:44', 'MC'),
(2, 'A', NULL, 1, 8, NULL, NULL, NULL, NULL, 'Evaldo Luiz Oliveira Braz', 'Helio Braz', 'Maria de Lurdes', '03/09/1972', 'Masculino', '(31) 98200-8163', '(31) 3312-3484', 'evaldo.luiz@gmail.com', 'Solteiro(a)', 149, 'Casa', '2020-02-11 00:42:13', '2020-03-10 16:52:17', 'NM'),
(3, 'A', 2, 1, 8, NULL, 1, 1, '012345', 'Vitor de Jesus Oliveira Braz', 'Evaldo Luiz Oliveira Braz', 'Ione de Jesus da Silva', '30/05/2001', 'Masculino', '(31) 98200-8163', '(31) 3312-3484', 'vitordejesus2017@outlook.com', 'Solteiro(a)', 149, 'Casa', '2020-02-11 01:13:01', '2020-03-10 17:49:19', 'MC'),
(4, 'A', 1, 5, 2, 5, 1, 1, '25314', 'Alexandre Pereira Gonçalves', 'Josué Gonçalves Floriano', 'Najadir Pereira Gonçalves', '16/09/1970', 'Masculino', '(31) 99213-1682', '(31) 2531-4136', 'alexandre.pereirag@gmail.com', 'Casado(a)', 410, '202', '2020-02-11 01:40:24', '2020-03-09 20:24:20', 'MC'),
(5, 'A', 1, 5, 2, 4, 1, 1, '1234', 'Eni Vieira Gonçalves', 'João Rodrigues Pinto', 'Benina Vieira da Silva', '26/01/1972', 'Feminino', '(31) 99188-9466', '(31) 2531-1345', 'enivgoncalves@gmail.com', 'Casado(a)', 410, '202', '2020-02-11 02:16:58', '2020-03-09 20:24:48', 'MC'),
(6, 'A', 1, 5, 2, NULL, 1, 1, '12345', 'Samuel Vieira Gonçalves', 'Alexandre Pereira Gonçalves', 'Eni Vieira Gonçalves', '19/10/1997', 'Masculino', '(31) 99273-2990', '(31) 2541-1234', 'samuelvgoncalves@gmail.com', 'Solteiro(a)', 410, '202', '2020-02-11 02:20:39', '2020-03-09 20:24:55', 'MC'),
(7, 'A', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Guilherme de Jesus Oliveira Braz', 'Evaldo Luiz Oliveira Braz', 'Ione de Jesus da Silva Braz', '16/04/1996', 'Masculino', '(31) 98200-8163', '(31) 3312-3384', 'ione-da-silvaa@hotmail.com', 'Solteiro(a)', 149, 'Casa', '2020-02-11 16:56:07', '2020-03-09 20:25:51', 'NM'),
(8, 'A', 1, 6, 6, 9, 1, 3, '10225', 'Alecson Pereira Gonçalves', 'Josue Gonçalves Floriano', 'Najadir Pereira Gonçalves', '25/05/1972', 'Masculino', '(31) 99418-6571', '(31) 3359-2700', 'alecsongoncalves25@gmail.com', 'Casado(a)', 770, '104', '2020-02-12 02:14:33', '2020-03-09 20:25:58', 'MC'),
(9, 'A', 1, 6, 6, 8, 1, 4, '10264', 'Helida Magda da Silva Gonçalves', 'Antonio Dario da Silva', 'Geralda Bernardes da Silva', '11/05/1972', 'Masculino', '(31) 99993-6571', '(31) 3359-2700', 'helida1105@gmail.com', 'Casado(a)', 770, '104', '2020-02-12 02:18:36', '2020-03-09 20:26:03', 'MC'),
(10, 'A', NULL, 6, 6, NULL, NULL, NULL, NULL, 'Laura Kamylle Gonçalves', 'Alecson Pereira Gonçalves', 'Helida Magda da Silva Gonçalves', '15/02/2005', 'Feminino', '(31) 99418-6571', '(31) 9941-8657', 'alecsongoncalves25@gmail.com', 'Solteiro(a)', 770, '104', '2020-02-12 02:24:26', '2020-03-09 20:27:13', 'NMC'),
(11, 'A', 1, 7, NULL, NULL, 1, 1, '24580', 'Kessia Vieira Gonçalves', 'Alexandre Pereira Gonçalves', 'Eni Vieira Gonçalves', '15/08/1992', 'Feminino', '(31) 98723-2437', '(31) 2525-1263', 'kessiavgoncalves@gmail.com', 'Casado(a)', 1187, 'Apto 104 BL 4', '2020-02-27 15:24:49', '2020-03-09 20:27:08', 'MC'),
(12, 'A', 1, 8, NULL, NULL, 1, 1, '23587', 'Marta Maria Alves da Silva', 'Francisco Alves', 'Juventina Amaral Alves', '17/04/1961', 'Feminino', '(31) 98802-3253', '(31) 2121-3100', 'martaalves100@yahoo.com', 'Casado(a)', 26, 'Bloco 10 Casa 69', '2020-03-01 12:24:51', '2020-03-09 20:27:24', 'MC'),
(18, 'A', NULL, 6, 6, NULL, NULL, NULL, NULL, 'Lucas Lavelly Goncalves', 'Alecson Pereira Gonçalves', 'Helida Magda da Silva Gonçalves', '02/10/2007', 'Masculino', '(31) 99993-6571', '(31) 2131-3100', 'helida1105@gmail.com', 'Solteiro(a)', 770, 'Apto 104- b Ed Lucuri', '2020-03-02 00:11:03', '2020-03-09 20:27:39', 'NMC'),
(23, 'A', NULL, 8, NULL, NULL, NULL, NULL, NULL, 'Ronilson Geraldo da Silva', 'Alcides Ferreira da Silva', 'Neusa Martins dos Reis Silva', '27/10/1966', 'Masculino', '(31) 99696-9506', '(31) 9880-2325', 'ronilsoneventosculinarios@yahoo.com.br', 'Casado(a)', 26, 'bloco 10 casa 69', '2020-03-03 14:08:27', '2020-03-09 20:27:44', 'NM'),
(30, 'A', 1, 8, NULL, NULL, 1, 1, '31254', 'Najadir Pereira Gonçalves', 'Manoel da Silva', 'Divina Ribeiro', '28/10/1950', 'Feminino', '(31) 99176-9130', '(31) 2121-0967', 'najadir1950@gmail.com', 'Viuvo(a)', 49, 'casa 01', '2020-03-05 14:48:34', '2020-03-09 20:27:50', 'MC'),
(32, 'A', 1, 9, NULL, NULL, 1, 4, '23509', 'Abner Aquila Gomes Caetano', 'Silas Caetano', 'Cleuseni Caetano', '13/10/1988', 'Masculino', '(31) 99334-2979', '(31) 3386-9649', 'a@a.yahoo.com', 'Solteiro(a)', 26, 'casa a', '2020-03-07 17:56:15', '2020-03-09 20:27:55', 'MC'),
(33, 'A', 1, 10, NULL, NULL, 1, 1, '34544', 'Rebeca Stephanie Alves Nunes', 'Herbert Nunes Pereira', 'Rute Alves de Souza Nunes', '11/10/1997', 'Feminino', '(31) 99553-9533', '(31) 3382-8155', 'Rebecasan.nunes@gmail.com', 'Solteiro(a)', 30, 'Casa', '2020-03-08 01:39:06', '2020-03-09 20:28:02', 'MC'),
(34, 'A', 1, 10, NULL, NULL, 1, 4, '23213', 'Rute Alves de Souza Nunes', 'Francisco Alves Pessoa', 'Zulmira Francisca do Nascimento', '31/10/1972', 'Feminino', '(31) 97166-1001', '(31) 3382-8155', 'Ruteasnunes@gmail.com', 'Casado(a)', 30, 'Casa', '2020-03-08 01:45:04', '2020-03-09 20:28:06', 'MC'),
(35, 'A', 1, 10, NULL, NULL, 1, 4, '23451', 'Raquel Stephanie Alves Nunes', 'Herbert Nunes Pereira', 'Rute Alves de Souza Nunes', '26/04/1996', 'Feminino', '(31) 99181-4798', '(31) 3382-8155', 'Raquaelstephenie@hotmail.com', 'Casado(a)', 30, 'Casa', '2020-03-08 01:49:02', '2020-03-09 20:28:13', 'MC'),
(36, 'A', 1, 10, NULL, NULL, 1, 4, '31233', 'Herbert Nunes Pereira', 'Pedro Cândido Pereira', 'Maria Lardira Nunes Pereira', '10/04/1967', 'Masculino', '(31) 99799-1019', '(31) 3382-8155', 'Herbert.hn@gmail.com', 'Casado(a)', 30, 'Casa', '2020-03-08 01:51:56', '2020-03-09 20:28:17', 'MC'),
(37, 'A', NULL, 10, NULL, NULL, NULL, NULL, NULL, 'Ana Beatriz Nunes', 'Herbert Nunes', 'Rute Nunes', '05/01/2005', 'Feminino', '(31) 99234-4545', '(31) 3386-2181', 'Herbert@gmail.com', 'Solteiro(a)', 30, 'Casa', '2020-03-08 01:57:39', '2020-03-09 20:28:28', 'NMC'),
(41, 'A', 1, 8, NULL, NULL, 1, 4, '023509', 'Ademar Pereira da Silva', 'Jose Pereira da Silva', 'Maria Pereira da Silva', '25/09/1942', 'Masculino', '(31) 93333-3333', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 61, 'casa A', '2020-03-10 12:29:47', '2020-03-10 12:29:47', 'MC'),
(42, 'A', 1, 11, NULL, NULL, 1, 4, '23510', 'Adiel Carlos Elias', 'Adiel Elias', 'Maria Elias', '15/08/1944', 'Masculino', '(31) 93333-3333', '(31) 3331-6358', 'artaalves100@hotmail.com', 'Casado(a)', 125, '0000', '2020-03-10 12:33:51', '2020-03-10 16:36:04', 'MC'),
(43, 'A', NULL, 12, NULL, NULL, NULL, NULL, '23511', 'Adriana Meireles da Silva', 'José Lourenço da Silva', 'Malvina Meireles Goveia Silva', '19/10/1984', 'Feminino', '(31) 97128-1647', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 317, '00000', '2020-03-10 12:37:28', '2020-03-10 12:37:28', 'MNC'),
(44, 'A', 1, 12, NULL, NULL, 1, 4, '40123', 'Jose Lourenço da Silva', 'Jose Lourenço', 'Maria Lourenço', '09/07/1967', 'Masculino', '(31) 98501-8340', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 317, '0000', '2020-03-10 12:41:32', '2020-03-10 16:48:13', 'MC'),
(45, 'A', 1, 12, NULL, NULL, 1, 4, '23561', 'Malvina Meireles Goveia Silva', 'Jose Goveia Silva', 'Maria Goveia Silva', '23/05/1963', 'Feminino', '(31) 99783-3523', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 317, '00000', '2020-03-10 12:44:53', '2020-03-10 12:44:53', 'MC'),
(46, 'A', 1, 13, NULL, NULL, 1, 4, '23512', 'Agda Helena de Paula Fontes', 'Jose de Paula', 'Maria de Paula', '15/09/1963', 'Feminino', '(31) 99606-3884', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 87, '000', '2020-03-10 12:48:01', '2020-03-10 12:48:01', 'MC'),
(47, 'A', 1, 14, NULL, NULL, 1, 4, '23559', 'Lydia Maria Lopes', 'Jose Lopes', 'Maria Lopes', '23/06/1941', 'Feminino', '(31) 99918-0647', '(31) 2551-6877', 'artaalves100@hotmail.com', 'Viuvo(a)', 149, 'apto 301', '2020-03-10 12:52:20', '2020-03-10 12:52:20', 'MC'),
(48, 'A', 1, 15, NULL, NULL, 1, 6, '23593', 'Nilo dos Santos', 'Jose dos Santos', 'Maria dos Santos', '19/06/1937', 'Masculino', '(31) 99999-9999', '(31) 3377-6771', 'artaalves100@hotmail.com', 'Casado(a)', 285, '000', '2020-03-10 12:54:45', '2020-03-10 12:54:45', 'MNC'),
(49, 'A', 1, 1, NULL, NULL, 1, 4, '23566', 'Maria Aparecida de Souza', 'Jose de Souza', 'Maria de Souza', '02/02/1963', 'Feminino', '(31) 99442-2710', '(31) 3374-6442', 'artaalves100@hotmail.com', 'Casado(a)', 165, '000', '2020-03-10 12:57:04', '2020-03-10 12:57:04', 'MC'),
(50, 'A', 1, 16, NULL, NULL, 1, 4, '23595', 'Nilza Moreira Domiciano', 'Jose Moreira', 'Maria Moreira', '29/04/1945', 'Feminino', '(31) 99999-9999', '(31) 3234-4147', 'artaalves100@hotmail.com', 'Casado(a)', 210, '000', '2020-03-10 12:59:24', '2020-03-10 12:59:24', 'MC'),
(51, 'A', 1, 17, NULL, NULL, 1, 4, '20000', 'Jorge Bittencourt Filho', 'Jose Bittencourt', 'Maria Bittencourt', '17/05/1965', 'Masculino', '(31) 99577-2308', '(33) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 100, '000', '2020-03-10 13:01:59', '2020-03-10 13:01:59', 'MC'),
(52, 'A', 1, 17, NULL, NULL, 1, 1, '2000', 'Rosangela Moreira Bittencourt', 'Jose Moreira', 'Maria Moreira', '20/02/1980', 'Feminino', '(31) 99744-9211', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 100, '000', '2020-03-10 13:04:28', '2020-03-10 13:04:28', 'MC'),
(53, 'A', 1, 17, NULL, NULL, 1, 1, '48380', 'João Guilherme Moreira da Silva', 'Jorge Bittencourt', 'Rosangela Moreira Bittencourt', '03/02/2003', 'Masculino', '(31) 99744-9211', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Solteiro(a)', 100, '000', '2020-03-10 13:07:24', '2020-03-10 13:07:24', 'MC'),
(54, 'A', 1, 1, NULL, NULL, 1, 1, '47123', 'Renato Clemente Rodrigues Pereira', 'Jose Clemente', 'Maria Clemente', '02/07/1982', 'Masculino', '(31) 98425-5582', '(31) 3568-5581', 'artaalves100@hotmail.com', 'Casado(a)', 149, 'A', '2020-03-10 13:10:39', '2020-03-10 13:10:39', 'MC'),
(55, 'A', 1, 1, NULL, NULL, 1, 4, '49575', 'Ivanilda Ester da Silva Rodrigues', 'Geraldo das Dores Silva', 'Maria das Dores Matoso Silva', '25/02/1983', 'Feminino', '(31) 98425-5582', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 149, 'A', '2020-03-10 13:13:34', '2020-03-10 13:13:34', 'MC'),
(56, 'A', 1, 11, NULL, NULL, 1, 1, '23576', 'Maria Gomes Elias', 'Jose Gomes', 'Maria Gomes', '08/05/1947', 'Feminino', '(31) 98743-0657', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 125, 'A', '2020-03-10 13:15:57', '2020-03-10 13:15:57', 'MC'),
(57, 'A', 1, 18, NULL, NULL, 1, 1, '23523', 'Deuzenira dos Santos Castelo Branco', 'Jose dos Santos', 'Maria dos Santos', '07/11/1965', 'Feminino', '(31) 99999-9999', '(31) 3312-3413', 'artaalves100@hotmail.com', 'Casado(a)', 117, 'A', '2020-03-10 13:18:17', '2020-03-10 13:18:17', 'MC'),
(58, 'A', 1, 16, NULL, NULL, 1, 4, '23618', 'Vanda Pereira dos Santos', 'Jose Pereira', 'Maria Pereira', '30/11/1965', 'Feminino', '(31) 98705-6029', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 197, 'A', '2020-03-10 13:21:04', '2020-03-10 13:21:04', 'MC'),
(59, 'A', 1, 19, NULL, NULL, 1, 6, '38759', 'Josué Machado de Amorim', 'Jose Amorim', 'Maria Amorim', '16/12/1945', 'Masculino', '(31) 98949-9107', '(31) 3383-2909', 'artaalves100@hotmail.com', 'Casado(a)', 111, 'A', '2020-03-10 13:28:13', '2020-03-10 13:28:13', 'MC'),
(60, 'A', 1, 11, NULL, NULL, 1, 4, '38761', 'Dalila de Oliveira Amorim', 'Jose Oliveira', 'Maria Oliveira', '28/10/1950', 'Feminino', '(31) 98949-9107', '(31) 3383-2909', 'artaalves100@hotmail.com', 'Casado(a)', 111, 'A', '2020-03-10 13:30:24', '2020-03-10 13:30:24', 'MC'),
(61, 'A', 1, 20, NULL, NULL, 1, 4, '23000', 'Genésio Zeferino Silva', 'Jose Zeferino', 'Maria Zeferino', '20/01/1960', 'Masculino', '(31) 99896-0478', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Viuvo(a)', 216, 'A', '2020-03-10 13:32:52', '2020-03-10 13:32:52', 'MC'),
(62, 'A', 1, 21, NULL, NULL, 1, 1, '23200', 'Lucas Lopes de Oliveira', 'Jose Lopes', 'Maria Lopes', '12/02/1984', 'Masculino', '(31) 98749-2883', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 250, 'A', '2020-03-10 13:37:36', '2020-03-10 13:37:36', 'MC'),
(63, 'A', 1, 21, NULL, NULL, 1, 4, '23609', 'Sheila Miriam da Silva Lopes', 'Jose da Silva', 'Maria de Lourdes Pereira da Silva', '11/01/1986', 'Feminino', '(31) 98749-2883', '(31) 3312-2874', 'artaalves100@hotmail.com', 'Casado(a)', 250, 'A', '2020-03-10 13:40:58', '2020-03-10 13:40:58', 'MC'),
(64, 'A', 1, 21, NULL, NULL, 1, 4, '23580', 'Maria de Lourdes Portes  da Silva', 'Jose Portes', 'Maria Portes', '12/01/1962', 'Feminino', '(31) 99999-9999', '(31) 3312-2874', 'artaalves100@hotmail.com', 'Casado(a)', 250, 'A', '2020-03-10 13:43:39', '2020-03-10 13:43:39', 'MC'),
(65, 'A', 1, 8, NULL, NULL, 1, 4, '23583', 'Mario Alves dos Santos', 'Jose dos Santos', 'Maria dos Santos', '21/07/1925', 'Masculino', '(31) 99676-7187', '(31) 3374-9997', 'artaalves100@hotmail.com', 'Viuvo(a)', 86, 'bloco 3 casa 14', '2020-03-10 13:46:11', '2020-03-10 13:46:11', 'MC'),
(66, 'A', 1, 8, NULL, NULL, 1, 1, '23622', 'Zuleide Maria Castelo Branco', 'Mario Alves dos Santos', 'Maria dos Santos Castelo Branco', '10/05/1952', 'Feminino', '(31) 99676-7187', '(31) 3374-9997', 'artaalves100@hotmail.com', 'Solteiro(a)', 86, 'bloco 3 casa 14', '2020-03-10 13:48:31', '2020-03-10 13:48:31', 'MC'),
(67, 'A', 1, 8, NULL, NULL, 1, 4, '23547', 'José Coelho Sobrinho', 'Jose Coelho', 'Maria Coelho', '12/07/1940', 'Masculino', '(31) 99999-9999', '(31) 3374-5666', 'artaalves100@hotmail.com', 'Casado(a)', 86, 'bloco 9', '2020-03-10 13:52:16', '2020-03-10 13:52:16', 'MC'),
(68, 'A', 1, 8, NULL, NULL, 1, 4, '23518', 'Arlinda dos Santos Coelho', 'Mario Alves dos Santos', 'Maria dos Santos Castelo Branco', '08/02/1954', 'Feminino', '(31) 99999-9999', '(31) 3374-5666', 'artaalves100@hotmail.com', 'Casado(a)', 86, 'casa 10', '2020-03-10 13:58:42', '2020-03-10 13:58:42', 'MC'),
(69, 'A', 1, 22, NULL, NULL, 1, 1, '23597', 'Noemia de Assis Heiderick', 'Jose de Assis', 'Maria de Assis', '18/08/1948', 'Feminino', '(31) 93312-3420', '(31) 2520-4721', 'artaalves100@hotmail.com', 'Casado(a)', 119, 'A', '2020-03-10 14:01:03', '2020-03-10 14:01:03', 'MC'),
(70, 'A', 1, 16, NULL, NULL, 1, 4, '23571', 'Maria das Graças Alves', 'Francisco Alves', 'Juventina Amaral Alves', '01/01/1956', 'Feminino', '(31) 98802-3253', '(31) 3333-3333', 'martaalves100@yahoo.com', 'Solteiro(a)', 173, 'A', '2020-03-10 14:03:03', '2020-03-10 14:03:03', 'MC'),
(71, 'A', 1, 16, NULL, NULL, 1, 4, '23532', 'Eunice da Silva Alves', 'Jose da Silva', 'Matilde da Silva', '27/04/1930', 'Feminino', '(31) 99999-9999', '(31) 3374-1318', 'artaalves100@hotmail.com', 'Viuvo(a)', 185, 'A', '2020-03-10 14:05:13', '2020-03-10 14:05:13', 'MC'),
(72, 'A', 1, 23, NULL, NULL, 1, 4, '25818', 'Lucinda Madalena Gonçalves de Souza', 'Jose Gonçalves', 'Maria Gonçalves', '30/09/1946', 'Feminino', '(31) 99637-4177', '(31) 3312-2455', 'artaalves100@hotmail.com', 'Casado(a)', 750, 'A', '2020-03-10 14:08:52', '2020-03-10 14:08:52', 'MC'),
(73, 'A', 1, 23, NULL, NULL, 1, 4, '23551', 'Josephina Nieta da Silva', 'Jose da Silva', 'Maria da Silva', '15/07/1939', 'Feminino', '(31) 99637-4177', '(31) 3312-2455', 'artaalves100@hotmail.com', 'Casado(a)', 750, 'A', '2020-03-10 14:10:56', '2020-03-10 14:10:56', 'MC'),
(74, 'A', 1, 8, NULL, NULL, 1, 4, '38760', 'Geni Soares Mateus', 'Jose Soares', 'Maria soares', '03/01/1952', 'Feminino', '(31) 99223-9026', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Viuvo(a)', 10, 'A', '2020-03-10 14:13:52', '2020-03-10 14:13:52', 'MC'),
(75, 'A', 1, 8, NULL, NULL, 1, 6, '2300', 'Sidraque MarcoChello', 'Jose Marcochello', 'Maria Marcochello', '02/02/1959', 'Masculino', '(31) 99691-2465', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 365, 'A', '2020-03-10 14:17:40', '2020-03-10 14:17:40', 'MC'),
(76, 'A', 1, 24, NULL, NULL, 1, 1, '50648', 'Osvaldo Maciel da Silva', 'Jose Maciel', 'Maria Maciel', '16/10/1943', 'Masculino', '(31) 99999-9999', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 122, 'A', '2020-03-10 14:20:08', '2020-03-10 14:20:08', 'MC'),
(78, 'A', 1, 24, NULL, NULL, 1, 4, '23575', 'Maria Eugenia de Magalhães da Silva', 'Jose Magalhães', 'Maria Magalhães', '02/06/1944', 'Feminino', '(31) 99999-9999', '(31) 3374-7347', 'artaalves100@hotmail.com', 'Casado(a)', 122, 'A', '2020-03-10 14:22:48', '2020-03-10 14:22:48', 'MC'),
(79, 'A', 1, 8, NULL, NULL, 1, 4, '230000', 'Iricina de Souza Silva', 'Francisco de Souza', 'Maria da Conceição de Souza', '12/02/1943', 'Feminino', '(31) 99999-9999', '(31) 3333-3333', 'artaalves100@hotmail.com', 'Casado(a)', 10, 'A', '2020-03-10 14:26:41', '2020-03-10 14:26:41', 'MC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `regionais`
--

CREATE TABLE `regionais` (
  `id` int(10) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regional` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pastor_regional` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_id` int(10) UNSIGNED NOT NULL,
  `endereco_nro` int(11) NOT NULL,
  `ponto_referencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `regionais`
--

INSERT INTO `regionais` (`id`, `situacao`, `regional`, `pastor_regional`, `endereco_id`, `endereco_nro`, `ponto_referencia`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Salgado Filho', 'Agnaldo Roberto', 3, 600, 'Proximo ao Hopital André Luiz', '2020-02-11 00:59:51', '2020-02-11 00:59:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `congregacao_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `situacao`, `congregacao_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(30, 'A', 1, 'Alexandre', 'alexandre.pereirag@gmail.com', NULL, '$2y$10$k6folChCP.49/WyGSDganuHxSzNthipFVRsUoygX/pLa71nDDBWY.', 'SnNxizDrzccmg41yAU2F95ahJrl2HEs2p5e2lvx0Joj3V4ogMK3g6Q9XhNlB', '2020-02-18 00:50:40', '2020-02-18 00:50:40'),
(31, 'A', 1, 'Alecson Pereira Gonçalves', 'alecsongoncalves25@gmail.com', NULL, '$2y$10$Nu3qed.25gg/38JAeUDABO07WZ3qd0a63n3idnGw6Y5n0Q1q6yiem', 'uwTGgh4kOabGu1TMWZWuC2tjOLU3JGYzUbFmNnoXUHwKkSZHANH4ur91Vpfv', '2020-02-18 01:28:44', '2020-02-18 01:28:44'),
(37, 'A', 1, 'Vitor', 'vitordejesus2017@outlook.com', NULL, '$2y$10$LDyoqhWa8KVV2RZOszHWXOwdVTzqtht71qQzJiwldRNcKqwLrJw0C', 'hnJsYgDasdBh9RK8ttsVJxZPtmkWub5ZtZgn5zRDMwbBXRR3rzRL6uD0pfQ4', '2020-02-18 21:52:32', '2020-02-18 23:27:13'),
(41, 'A', 1, 'Marta Alves', 'martaalves100@hotmail.com', NULL, '$2y$10$FSL7fIXIkrUBPstXPUw5Mu4q8fZaGQnyIhChy5jwhVx20lFpazRyW', 'tIziDp4gUBlPZQc2woQWUZGIgtJzhQmyxKhExPfsSyfHCjPOwPrMhe1WE2mI', '2020-02-28 20:25:44', '2020-02-28 20:25:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_congregacao_id_foreign` (`congregacao_id`);

--
-- Índices para tabela `casais`
--
ALTER TABLE `casais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `congregacoes`
--
ALTER TABLE `congregacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `congregacoes_regional_id_foreign` (`regional_id`),
  ADD KEY `congregacoes_endereco_id_foreign` (`endereco_id`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enderecos_cep_unique` (`cep`);

--
-- Índices para tabela `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcoes`
--
ALTER TABLE `funcoes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `funcoes_funcao_unique` (`funcao`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pessoas_codigo_tc_unique` (`codigo_tc`),
  ADD KEY `pessoas_congregacao_id_foreign` (`congregacao_id`),
  ADD KEY `pessoas_endereco_id_foreign` (`endereco_id`),
  ADD KEY `pessoas_familia_id_foreign` (`familia_id`),
  ADD KEY `pessoas_conjuge_id_foreign` (`conjuge_id`),
  ADD KEY `pessoas_regional_id_foreign` (`regional_id`),
  ADD KEY `pessoas_funcao_id_foreign` (`funcao_id`);

--
-- Índices para tabela `regionais`
--
ALTER TABLE `regionais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regionais_endereco_id_foreign` (`endereco_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_congregacao_id_foreign` (`congregacao_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `casais`
--
ALTER TABLE `casais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `congregacoes`
--
ALTER TABLE `congregacoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `regionais`
--
ALTER TABLE `regionais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_congregacao_id_foreign` FOREIGN KEY (`congregacao_id`) REFERENCES `congregacoes` (`id`);

--
-- Limitadores para a tabela `congregacoes`
--
ALTER TABLE `congregacoes`
  ADD CONSTRAINT `congregacoes_endereco_id_foreign` FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`id`),
  ADD CONSTRAINT `congregacoes_regional_id_foreign` FOREIGN KEY (`regional_id`) REFERENCES `regionais` (`id`);

--
-- Limitadores para a tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD CONSTRAINT `pessoas_congregacao_id_foreign` FOREIGN KEY (`congregacao_id`) REFERENCES `congregacoes` (`id`),
  ADD CONSTRAINT `pessoas_conjuge_id_foreign` FOREIGN KEY (`conjuge_id`) REFERENCES `pessoas` (`id`),
  ADD CONSTRAINT `pessoas_endereco_id_foreign` FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`id`),
  ADD CONSTRAINT `pessoas_familia_id_foreign` FOREIGN KEY (`familia_id`) REFERENCES `familias` (`id`),
  ADD CONSTRAINT `pessoas_funcao_id_foreign` FOREIGN KEY (`funcao_id`) REFERENCES `funcoes` (`id`),
  ADD CONSTRAINT `pessoas_regional_id_foreign` FOREIGN KEY (`regional_id`) REFERENCES `regionais` (`id`);

--
-- Limitadores para a tabela `regionais`
--
ALTER TABLE `regionais`
  ADD CONSTRAINT `regionais_endereco_id_foreign` FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_congregacao_id_foreign` FOREIGN KEY (`congregacao_id`) REFERENCES `congregacoes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
