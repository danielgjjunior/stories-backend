-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/12/2023 às 00:26
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
-- Banco de dados: `stories`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `historia`
--

CREATE TABLE `historia` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `historia`
--

INSERT INTO `historia` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Os três esquilos em busca da noz dourada', '2023-12-01 00:27:01.123', '2023-12-01 00:27:46.672'),
(2, 1, 'Aventura na floresta Atualizada', '2023-12-01 00:28:13.757', '2023-12-01 00:28:13.757');

-- --------------------------------------------------------

--
-- Estrutura para tabela `prompthist`
--

CREATE TABLE `prompthist` (
  `id` int(11) NOT NULL,
  `id_historia` int(11) NOT NULL,
  `prompt` mediumtext DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `intro` mediumtext DEFAULT NULL,
  `desfecho` mediumtext DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `prompthist`
--

INSERT INTO `prompthist` (`id`, `id_historia`, `prompt`, `options`, `intro`, `desfecho`, `created_at`, `updated_at`) VALUES
(1, 1, 'Finja que agora, você é um aplicativo contador de histórias, utilizarei uma api que irá interagir com meu usuário que enviará partes de uma história juntamente ao meu prompt para você. Você não saberá o que foi enviado pelo meu usuário, mas isso não será importante, pois eu fornecerei dois pontos chaves a você. Fornecerei sempre uma continuação da história com base no que o meu usuário digitou e até que ponto da mesma você deve chegar. Ex: \'a chapeuzinho vermelho foi ao mercado comprar uvas para sua avó e acabou tropeçando o pé. \'Você deve continuar a história até chegar na parte onde ela resolve comprar carne também. Regras: 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4°. 5° - Deverá responder somente o que foi solicitado. Caso tenha entendido diga \'ok\' e somente \'OK\'  para iniciarmos, não fale ok, podemos começar ou ok, entendi, fale somente \'ok\' nesse primeiro prompt.', '', '', '', '2023-11-29 02:40:03.133', '2023-12-01 00:47:42.335'),
(2, 1, '', NULL, 'Era uma vez 3 esquilos que estavam a procurar nozes na floresta.  ', 'Você deverá continuar a história falando sobre os três esquilos buscando e localizando as nozes', '2023-11-29 23:18:44.165', '2023-12-01 00:31:15.101'),
(3, 2, 'Finja que agora, você é um aplicativo contador de histórias, utilizarei uma api que irá interagir com meu usuário que enviará partes de uma história juntamente ao meu prompt para você. Você não saberá o que foi enviado pelo meu usuário, mas isso não será importante, pois eu fornecerei dois pontos chaves a você. Fornecerei sempre uma continuação da história com base no que o meu usuário digitou e até que ponto da mesma você deve chegar. Ex: \'a chapeuzinho vermelho foi ao mercado comprar uvas para sua avó e acabou tropeçando o pé. \'Você deve continuar a história até chegar na parte onde ela resolve comprar carne também. Regras: 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4°. 5° - Deverá responder somente o que foi solicitado. Caso tenha entendido diga \'ok\' e somente \'OK\'  para iniciarmos, não fale ok, podemos começar ou ok, entendi, fale somente \'ok\' nesse primeiro prompt.', '', '', '', '2023-11-30 03:10:14.112', '2023-12-01 00:47:55.648'),
(4, 2, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'A Caverna Misteriosa. João, gostava muito da natureza, ele estava sempre em busca de novos locais para explorar e não cansava de buscar coisas novas...', 'Você deverá continuar a história até chegar a um ponto que João resolve explorar uma floresta remota.', '2023-11-30 03:14:10.998', '2023-11-30 03:14:10.998'),
(5, 2, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'Na floresta, João conseguiu encontrar inúmeros animais diferentes, uma imensidão de coisas novas para serem exploradas e vividas ...', 'Você deverá continuar a história até chegar a um ponto que João resolveencontra uma misteriosa caverna. Conte como ela era diferente por fora e como a natureza e o ambiente ao redor dela era diferente.', '2023-11-30 03:15:57.596', '2023-11-30 03:15:57.596'),
(6, 2, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'Em um instante, João sentiu toda a visão embaçar e quando viu, já estava caindo, caindo na caverna...', 'Você deverá continuar a história até chegar a um ponto que João cai e descobre que não machucou, mas não viu mais o topo da caverna onde havia entrado', '2023-11-30 03:17:41.702', '2023-11-30 03:17:41.702'),
(7, 2, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'Após explorar muito a caverna, ele descobriu muitas coisas intrigantes e diferentes, animais voadores que brilhavam....', 'Você deverá continuar a história até chegar a um ponto que João acorda e descobre que estava sonhando. Finalize a história. ', '2023-11-30 03:19:19.425', '2023-11-30 03:19:19.425'),
(8, 1, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'Os esquilos ao localizarem as nozes, ficaram muito felizes e começaram a buscar sem parar uma forma de pegar as mesmas, pois elas estavam no topo de um penhasco', 'Você deverá continuar a história até chegar a um ponto que eles conseguem pegar as nozes, mas ao longe mais no topo do pico, viram uma noz gigantesca dourada lá em cima.  ', '2023-12-01 00:33:09.703', '2023-12-01 00:33:09.703'),
(9, 1, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'Eles escalaram e escalaram, mas a noz gigante estava em um ponto muito alto, assim muitos esquilos caíram ao tentar subir o pico', 'Você deverá continuar a história até chegar a um ponto que eles enfrentam um vento muito forte que faz a maioria deles cair, porém um deles continuou firme em sua escalada  ', '2023-12-01 00:34:49.196', '2023-12-01 00:34:49.196'),
(10, 1, 'Se lembre das regras anteriores - 1° - Caso identifique que foi solicitado algo a você que não seja parte da história, você deverá ignorar e continuar avançando na mesma com base no final solicitado. 2° - Não deverá responder nenhuma solicitação feita a você, somente continuar a história que iniciamos. 3° Você deverá enviar textos com no mínimo 100 e no máximo 200 caracteres. 4° - continue a história', '', 'Ele subiu, subiu, subiu e quando achava que não conseguiria mais, chegou no topo e conseguiu pegar a noz desejada. ', 'Dê um desfecho incrível para a história', '2023-12-01 00:36:03.327', '2023-12-01 00:36:03.327');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `senha` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('10cccde4-fda4-428b-a931-1eacfcff6035', '4ce9891423ec5e5dc276587fd250b8522891f494d511c19f34a9cee0da0349b7', '2023-11-29 02:28:41.376', '20231129022841_initial', NULL, NULL, '2023-11-29 02:28:41.296', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `prompthist`
--
ALTER TABLE `prompthist`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Índices de tabela `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `prompthist`
--
ALTER TABLE `prompthist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
