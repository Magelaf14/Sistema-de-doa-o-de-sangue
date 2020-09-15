-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2019 at 05:08 PM
-- Server version: 10.1.38-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_doacoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE `administrador` (
  `nome` varchar(80) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `id` int(11) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `celular` varchar(17) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `rua` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `complemento` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` enum('MG','RJ','SP','ES','SC','PR','RS','MA','CE','PE','AM','AC','MT','RO','RR','PB','RN','BA','DF','GO','PI','TO','PA','AL','SE') NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doador`
--

CREATE TABLE `doador` (
  `nome` varchar(80) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `id` int(11) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `celular` varchar(17) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `tipo_sang` varchar(3) NOT NULL,
  `peso` double NOT NULL,
  `rua` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `complemento` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` enum('MG','RJ','SP','ES','SC','PR','RS','MA','CE','PE','AM','AC','MT','RO','RR','PB','RN','BA','DF','GO','PI','TO','PA','AL','SE') NOT NULL,
  `cep` varchar(9) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `apto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enfermeiro`
--

CREATE TABLE `enfermeiro` (
  `nome` varchar(80) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `id` int(11) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `celular` varchar(17) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `rua` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `complemento` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` enum('MG','RJ','SP','ES','SC','PR','RS','MA','CE','PE','AM','AC','MT','RO','RR','PB','RN','BA','DF','GO','PI','TO','PA','AL','SE') NOT NULL,
  `id_filial_enfermeiro` int(11) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enfermeiro`
--

INSERT INTO `enfermeiro` (`nome`, `cpf`, `id`, `data_nasc`, `email`, `telefone`, `celular`, `sexo`, `rua`, `numero`, `bairro`, `complemento`, `cidade`, `estado`, `id_filial_enfermeiro`, `cep`, `senha`) VALUES
('Joseth da Silva', '111.111.111-11', 5, '1965-01-01', 'josethmoreninha@gmail.com', '(32) 3447-5648', '(32) 99199-1001', 'F', 'Rua do Merinho', '125', 'Pedro Brito', 'Próximo à quadra', 'São Gonçalo', 'RJ', 55, '36100-000', '25d55ad283aa400af464c76d713c07ad'),
('Juca de Souza', '121.111.111-11', 6, '1945-02-02', 'juquinha@gmail.com', '(32) 3441-5879', '(32) 99199-6541', 'M', 'Rua Alcantara da SIlva', '23', 'Serra Verde', 'Próximo ao mercado', 'São Bernardo do Campo', 'SP', 55, '36001-000', '25d55ad283aa400af464c76d713c07ad'),
('Fernando de Noronha', '131.111.111-11', 7, '1967-12-01', 'ferandao@gmail.com', '(32) 3449-4512', '(32) 99199-7415', 'M', 'Rua Arco Ìris', '456', 'Alto da Ventania', 'Oróximo ao açougue', 'Olinda', 'PE', 55, '36120-000', 'e2fc8e5b4434e89e0dd67c9e33d6e867'),
('Marília Mendonça', '141.111.111-11', 8, '1994-07-22', 'purasofrencia@gmail.com', '(32) 3441-9623', '(32) 99199-6543', 'F', 'Rua dos Cantores', '147', 'Seminário', 'Próximo ao hospital', 'Goiânia', 'GO', 55, '36474-000', 'f1bfd514f667cebd7595218b5a40d5b1'),
('Ferdinando Macedo', '151.111.111-11', 9, '1994-12-15', 'ferdinando@gmail.com', '(32) 3441-9623', '(32) 99199-6302', 'M', 'Rua Petrolina', '102', 'Alto do Cemitério', 'Próximo ao cemitério', 'Uberaba', 'MG', 55, '36333-000', '220466675e31b9d20c051d5e57974150'),
('Gilberto Costa', '161.111.111-11', 10, '1958-06-05', 'gilberto@gmail.com', '(32) 3441-7845', '(32) 99199-6326', 'M', 'Rua Oscar Machado', '236', 'Barra', 'Próximo à Sol e Neve', 'Juiz de Fora', 'MG', 55, '36121-000', 'f5bb0c8de146c67b44babbf4e6584cc0'),
('Maria da Dores', '171.111.111-11', 11, '1963-08-30', 'mariadasdores@gmail.com', '(32) 3441-7896', '(32) 99199-1079', 'F', 'Rua Floriano Peixoto', '789', 'Fábrica', 'Próximo à ponte', 'Natal', 'RN', 55, '36100-000', '25f9e794323b453885f5181f1b624d0b'),
('Jair Mendes', '181.111.111-11', 12, '1941-09-07', 'jairzinho@gmail.com', '(32) 3441-6210', '(32) 99199-1010', 'M', 'Rua Morumbi', '69', 'Milho Branco', 'Próximo à praça', 'Mesquita', 'RJ', 55, '36458-000', 'a3e41989c4df89d004d738e3104e0f1d'),
('Renata Ferraz', '191.111.111-11', 13, '1992-06-15', 'renatinhaferraz@gmail.com', '(32) 3441-7895', '(32) 99199-6320', 'F', 'Rua Padre Fábio de Melo', '123', 'Olinda', 'Próximo à escola', 'Viçosa', 'MG', 55, '36147-000', '7bc1dde2d22c12a7968355f3e077ef89'),
('Marta Oliveira', '112.000.000-00', 14, '1987-04-06', 'martaoliveira@gmail.com', '(32) 3441-5151', '(32) 99199-5647', 'F', 'Rua das Palmeiras', '457', 'Mesquita', 'Próximo ao shopping', 'Fortaleza', 'CE', 55, '36129-000', '59c0cae8a295d83a37051d763d08e5fa'),
('Ronaldo Pereira', '113.111.111-11', 15, '1985-05-18', 'ronaldinho_p@gmail.com', '(32) 3441-5741', '(32) 99199-9026', 'M', 'Rua MAchado Guedes', '896', 'São José', 'Próximo à igreja', 'MAnaus', 'AM', 55, '36478-000', '742364123f6dbda67731119bdeac4847'),
('Elisa Araújo', '114.111.111-11', 16, '1992-08-29', 'elisa_araujo@gmail.com', '(32) 3446-7412', '(32) 99199-4567', 'F', 'Rua Professor Arnaldo', '3', 'Santa Cruz', 'Próximo ao mercado', 'Salvador', 'BA', 55, '36002-000', '548af13bdd5fc92c120491aef92f9a22'),
('Rosângela Fernandes', '115.111.111-11', 17, '1972-11-07', 'rosa@gmail.com', '(32) 3449-7460', '(32) 99199-2030', 'F', 'Rua José Lintz', '209', 'Cruzeiro', 'Próximo à quadra', 'Maceió', 'AL', 55, '36123-000', '826395d501a3977864a41a44cfbe126c'),
('José Júlio Ramos', '116.111.111-11', 18, '1968-10-17', 'jjr@gmail.com', '(32) 3445-3571', '(32) 99199-4106', 'M', 'Rua do Ratinho', '369', 'Alto da Compadecida', 'Próximo ao açougue', 'Cascavel', 'PR', 55, '36478-000', '521dab5d249a2fc12de203ff47bc46a2'),
('Jussara Leite', '117.111.111-11', 19, '1995-07-31', 'jussaraleite@gmail.com', '(32) 3447-1005', '(32) 99199-9874', 'F', 'Rua Ferdinando', '789', 'Aeroporto', 'Próximo ao aeroporto', 'Teresina', 'PI', 55, '36010-000', '02a46e4971e44040b48363695136dde2'),
('Ruth Costa', '211.111.111-11', 22, '1994-09-09', 'ruthinha_cost@gmail.com', '(32) 3447-1025', '(32) 99199-3601', 'F', 'Rua MAchado de Assis', '445', 'Borboleta', 'Próximo à escola', 'Brasília', 'DF', 55, '36487-000', '140a869136dfa18cd7d192679f0292cb'),
('Raimundo Chagas', '122.111.111-11', 24, '1963-01-29', 'raimundo_c@gmail.com', '(32) 3441-7845', '(32) 99199-6363', 'M', 'Rua Machado de Assis', '89', 'São Geraldo', 'Próximo à igreja', 'Rio Branco', 'AC', 55, '36124-000', '982dfc61f391dd76571ab349024dd5e7'),
('Joana D\'Arc', '133.111.111-11', 25, '1991-11-13', 'joaninhadarc@gmail.com', '(32) 3447-8402', '(32) 99199-6550', 'F', 'Rua Maria Preta', '103', 'Mariano Procópio', 'Próximo ao mercado', 'Curitiba', 'PR', 55, '36014-000', 'bada71d9cec6db7f55984ced182ab999'),
('Maria das Graças', '144.111.111-11', 26, '1960-09-18', 'mariadasgracas@gmail,com', '(32) 3449-6547', '(32) 99199-6600', 'F', 'Rua Ribeiro Junqueira', '259', 'Carioca', 'Próximo à escola', 'Recreio', 'MG', 55, '36189-000', '1449b581319db5082e9f3d6f3057070a'),
('Mauro César', '155.111.111-11', 27, '1974-05-23', 'mauroc_esar@gmail.com', '(32) 3446-5741', '(32) 99199-0220', 'M', 'Rua do Risca Faca', '56', 'Capixaba', 'Próximo à praça', 'São Mateus', 'ES', 55, '36289-000', 'd6a39072d26b5553cfb7ddc976aef24a'),
('Matias Furtado', '166.111.111-11', 28, '1996-08-08', 'matia_fut@gmail.com', '(32) 3447-8941', '(32) 99199-0154', 'M', 'Rua das Mercês', '47', 'Ouro Branco', 'Próximo à quadra', 'Osasco', 'SP', 55, '36741-000', '671691e7e926f8f2cbc6c5a51d09eb30'),
('Patrícia Batista', '177.111.111-11', 29, '1985-06-29', 'paty_bat@gmail.com', '(32) 3447-8410', '(32) 99199-3996', 'F', 'Rua Juiz de Fora', '197', 'Grama', 'Próximo ao mercado', 'Paraty', 'RJ', 55, '36429-000', 'e9c4c1a2d3de623ff05b9a20b4a6c068'),
('Fátima Vieira', '188.111.111-11', 30, '1972-10-03', 'fatinhavieira_123@gmail.com', '(32) 3444-9741', '(32) 99199-9964', 'F', 'Rua Americana', '56', 'Bom Jardim', 'Próximo à praça', 'Florianópolis', 'SC', 55, '36254-000', 'd064625f87239f915bb1695588a7b67b'),
('Jairo Machado', '199.111.111-11', 31, '1954-02-19', 'jairinhomach@gmail.com', '(32) 3441-9741', '(32) 99199-6304', 'M', 'Rua das Orquídeas', '63', 'Améŕica', 'Próximo ao Banco da Caixa', 'Ouro preto', 'MG', 55, '36478-000', '1f2089354645d740766fa0719c3ae778'),
('Paulo José', '123.000.000-00', 32, '1975-08-26', 'paulinho_j@gmail.com', '(32) 3449-6547', '(32) 99199-6302', 'M', 'Rua Cantagalo', '784', 'Pedreira', 'Próximo ao campo', 'Santo André', 'SP', 55, '36741-000', '3b123705d0c9cb7594a3054142775e28'),
('Marcelina Bartole', '456.000.000-00', 33, '1973-06-27', 'marcelina_123@gmail.com', '(32) 3441-9657', '(32) 99199-4006', 'F', 'Rua Cheiro Verde', '57', 'São Pedro', 'Próximo ao restaurante', 'Palmas', 'TO', 55, '36410-000', 'c8e125f42550b94c20fba68cf884920e'),
('Gilson Moreira', '789.000.000-00', 34, '1954-01-26', 'gilsonmoreira@gmail.com', '(32) 3449-6325', '(32) 99199-6302', 'M', 'Rua Paulo Guedes', '63', 'Canto Verde', 'Próximo ao mercado', 'Fortaleza', 'CE', 55, '36478-900', '75e4000c54ca2ad474beeaf8eb2dfbe8'),
('Janete Gonçalves', '213.000.000-00', 35, '1976-12-31', 'janete_g_012@gmail.com', '(32) 3441-7458', '(32) 99199-6302', 'F', 'Rua do Goiabas', '687', 'Lindo Vale', 'Próximo à praça', 'Belém', 'PA', 55, '36478-100', '76dbd4f0c4437fbb4d9ffa9856ad072f'),
('Marcelo Lomba', '457.000.000-00', 36, '1997-09-28', 'marcelinho_lomba@gmail.com', '(32) 3441-7458', '(32) 99199-4702', 'M', 'Rua Oscar Vidal', '961', 'Santo Cristo', 'Próximo à escola', 'São Bernardo', 'MT', 55, '36201-300', 'ecb3b8a1a0d6b81d871dffbae36a0527'),
('Rosana Dutra', '149.000.000-00', 37, '1971-11-14', 'rosana@gmail.com', '(32) 3449-6230', '(32) 99199-6347', 'F', 'Rua Mato Grosso', '234', 'Vale do Sol', 'Próximo à quadra', 'Sol Nacente', 'RN', 55, '36471-240', '9a32349f4cccd2c8527fe0c29e8ca3f5'),
('Reginaldo Macedo', '169.000.000-00', 38, '1971-11-25', 'regis_macedo@gmail.com', '(32) 3449-4784', '(32) 99199-6327', 'M', 'Rua Dutra', '145', 'Olinda', 'Próximo à universidade', 'São José', 'RR', 55, '36471-100', '75feaddfbbe0338231ab90fa14dc1218'),
('Carla Santos', '142.000.000-00', 39, '1996-11-06', 'carlinha_santos@gmail.com', '(32) 3441-6556', '(32) 99199-6574', 'F', 'Rua Sai de Baixo', '874', 'Rancharia', 'Próximo à ponte', 'Santa Maria', 'SE', 55, '36900-000', 'd047c452c1798c5dd45b6e912e29c3c2'),
('Juca da Costa Rambo', '777.787.888-88', 40, '2011-05-22', 'juca@htomail.com', '(32) 9917-7777', '(11) 11111-1111', 'M', 'Testando Tudo', '122', 'Centro', '', 'Limoeiro', 'MA', 66, '22222-222', 'aa1bf4646de67fd9086cf6c79007026c'),
('Andrew Smith', '495.872.987-45', 43, '1989-04-25', 'andrew@hotmail.com', '(32) 3659-8323', '(99) 99999-9999', 'M', 'Rua Andradao', '123', 'Centro', '', 'Goiânia', 'DF', 17, '55565-656', 'aa1bf4646de67fd9086cf6c79007026c');

-- --------------------------------------------------------

--
-- Table structure for table `entrevistador`
--

CREATE TABLE `entrevistador` (
  `nome` varchar(80) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `id` int(11) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `celular` varchar(17) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `rua` varchar(60) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `complemento` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` enum('MG','RJ','SP','ES','SC','PR','RS','MA','CE','PE','AM','AC','MT','RO','RR','PB','RN','BA','DF','GO','PI','TO','PA','AL','SE') NOT NULL,
  `cep` varchar(9) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `id_filial_entrevistador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entrevistador`
--

INSERT INTO `entrevistador` (`nome`, `cpf`, `id`, `data_nasc`, `email`, `telefone`, `celular`, `sexo`, `rua`, `numero`, `bairro`, `complemento`, `cidade`, `estado`, `cep`, `senha`, `id_filial_entrevistador`) VALUES
('Guilherme Daher', '123.456.789-98', 4, '1997-04-23', 'guilhermedaherpinto@gmail.com', '(32) 3446-2023', '(32) 99155-5572', 'M', 'Jamil Jorge Salum', 'S/N', 'Centro', '', 'Cisneiros', 'MG', '36753-000', 'aa1bf4646de67fd9086cf6c79007026c', 66);

-- --------------------------------------------------------

--
-- Table structure for table `filial`
--

CREATE TABLE `filial` (
  `rua` varchar(60) NOT NULL,
  `numero` varchar(11) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `complemento` varchar(40) NOT NULL,
  `estado` enum('MG','RJ','SP','ES','SC','PR','RS','MA','CE','PE','AM','AC','MT','RO','RR','PB','RN','BA','DF','GO','PA','PI','TO') NOT NULL,
  `id` int(11) NOT NULL,
  `cep` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filial`
--

INSERT INTO `filial` (`rua`, `numero`, `bairro`, `cidade`, `complemento`, `estado`, `id`, `cep`) VALUES
('Rua José Júlio', '120', 'Santa Tereza', 'Rio de Janeiro', 'Próximo ao Subway', 'RJ', 7, '36100-000'),
('Rua da Paz', '12', 'São Cristóvão', 'Pelotas', 'Próximo à ponte', 'RS', 8, '36120-000'),
('Rua Copacabana', '789', 'Flamengo', 'Jericoacoara', 'Próximo ao mercado', 'CE', 9, '36140-000'),
('Rua da Lola', '56', 'Praça da Bandeira', 'São José do Rio Preto', 'Próximo à praça', 'SP', 10, '36471-000'),
('Rua das Flores', '78', 'Rosário', 'Vila Velha', 'Próximo à Sol e Neve ', 'ES', 11, '36789-000'),
('Rua Cantagalo', '10', 'Botafogo', 'São Paulo', 'Próximo ao MacDonalds', 'SP', 12, '36103-000'),
('Rua João Vieira', '62', 'São Judas Tadeu', 'Belo Horizonte', 'Próximo ao Mineirão', 'MG', 13, '36890-000'),
('Rua Abrantes de Oliveira', '36', 'Milho Branco', 'Florianópolis', 'Próximo ao mercado', 'SC', 14, '36200-000'),
('Rua Getúlio Vargas', '30', 'Fábrica', 'Porto de Galinhas', 'Próximo à escola', 'BA', 15, '36963-000'),
('Rua da Bandeira', '15', 'Madureira', 'Goiânia', 'Próximo ao mercado', 'GO', 16, '36700-000'),
('Rua São Vicente', '89', 'Centro', 'Rio Branco', 'Próximo à praça', 'AC', 17, '36300-000'),
('Rua Ouro Branco', '75', 'Bela Vista', 'Sete Lagoas', 'Proximo à Sol e Neve', 'MG', 18, '36158-000'),
('Rua Itamar Franco', '230', 'Cidade Nova', 'Osasco', 'Próximo à ponte', 'SP', 19, '36360-000'),
('Rua Barbacena', '238', 'Universitário', 'Santa Maria', 'Próximo à escola', 'RS', 20, '36147-000'),
('Rua São José', '456', 'Independência', 'Juiz de Fora', 'Próximo ao shopping', 'MG', 21, '36987-000'),
('Rua Santa Maria', '89', 'Jardim Norte', 'Vitória', 'Próximo ao shopping', 'ES', 22, '36897-000'),
('Rua Maracanã', '562', 'Maracanã', 'Rio de Janeiro', 'Próximo à universidade', 'RJ', 23, '36230-000'),
('Rua Maria da Glória', '74', 'Botafogo', 'Recife', 'Próximo ao estádio', 'PE', 24, '36189-000'),
('Rua Professor Anselmo', '546', 'Centro', 'Ouro Preto', 'Próximo á escola', 'MG', 25, '36950-000'),
('Rua Cotegipe', '378', 'Nova Leopoldina', 'Petrópolis', 'Próximo à ponte', 'RJ', 26, '36560-000'),
('Rua Alan Kardec', '45', 'Quinta Residência', 'Manaus', 'Próximo ao Subway ', 'AM', 27, '36231-000'),
('Rua da Pinguda', '18', 'Santa Catarina', 'Brasília', 'Próximo ao MacDonalds', 'DF', 28, '36639-000'),
('Rua das Palmeiras', '635', 'Dom Bosco', 'Londrina', 'Próximo ao mercado', 'PR', 29, '36459-000'),
('Rua São Pedro', '376', 'Vale do Sol', 'São Luís', 'Próximo à universidade', 'MA', 30, '36245-000'),
('Rua Manoel Lobato', '120', 'Jardim das Acácias', 'Belém', 'Próximo ao Shopping', 'PA', 35, '36897-000'),
('Rua Chiavenato', '740', 'Borboletas', 'João Pessoa', 'Próximo ao estádio', 'PB', 36, '36569-000'),
('Rua da Ponte', '102', 'Mirante do Arvrão', 'Teresina', 'Próximo à praça', 'PI', 37, '36500-000'),
('Rua Pablo Picasso', '304', 'Mina de Ouro', 'Natal', 'Próximo à Sol e Neve', 'RN', 38, '36706-000'),
('Rua Rio Sul', '63', 'Urca', 'São Caetano', 'Próximo à escola', 'RO', 39, '36845-000'),
('Rua da Bomba', '610', 'Pinguda', 'Santa Úrsula', 'Próximo ao Hospital', 'RR', 40, '36333-000'),
('Rua da Catedral', '13', 'São Sebastião', 'Palmas', 'Próximo ao Igreja', 'TO', 41, '36973-000'),
('Rua Americana', '26', 'Lapa', 'Duque de Caxias', 'Próximo à praça', 'RJ', 42, '36654-000'),
('Rua Pirineus', '967', 'São Sebastião', 'São José do Rio Preto', 'Próximo ao Shopping', 'SP', 43, '36140-000'),
('Rua Pernambuco', '87', 'Posto Puris', 'Joinvile', 'Próxmo à universidade', 'SC', 44, '36257-000'),
('Rua São Geraldo', '137', 'Barra', 'Guarulhos', 'Próximo ao mercado', 'SP', 45, '36555-000'),
('Rua João Bela', '444', 'Nossa Senhora das Graças', 'Nilópolis', 'Próximo à escola', 'RJ', 46, '36782-000'),
('Rua Marília Mendonça', '100', 'Belo Horizonte', 'João Pessoa', 'Próximo ao Shopping', 'PB', 47, '36100-000'),
('Rua Humberto Gessinger', '200', 'São Manoel', 'Florianópolis', 'Próximo à Igreja', 'SC', 48, '36300-000'),
('Rua Juscelino ', '980', 'São Pedro', 'Olinda', 'Próximo à escola', 'PE', 49, '36451-000'),
('Rua das Acácias', '59', 'Lindo Rancho', 'Florianópolis', 'Próximo à praça', 'MG', 50, '36985-000'),
('Rua dos Caranguejos', '58', 'Cohab', 'Juiz de Fora', 'Próximo à Igreja', 'MG', 52, '36456-000'),
('Rua dos Coqueiros', '231', 'Nossa Senhora de Fátima', 'Mesquita', 'Próximo ao mercado', 'RJ', 53, '36999-000'),
('Rua Padre Marcelo Rossi', '111', 'Centro', 'Natal', 'Próximo ao Hospital', 'RN', 54, '36012-000'),
('Rua Fernando de Noronha', '663', 'Nova Holanda', 'Altos', 'Próximo à ponte', 'PI', 55, '36222-000'),
('Rua Fernando Lobo', '123', 'Ouro Fino', 'São Mateus', 'Próximo à escola', 'RO', 56, '36330-000'),
('Rua Cheia de Charme', '106', 'Cohab Velha', 'Nossa Senhora da Paz', 'Próximo ao mercado', 'RR', 57, '36477-000'),
('Rua dos Fantasmas', '666', 'Posto Puris', 'Sorocaba', 'Próximo ao cemitério', 'SP', 58, '36398-000'),
('Rua Monteiro Lobato', '777', 'Manoel Honório', 'Goiânia', 'Próximo ao hospital', 'GO', 59, '36471-000'),
('Rua Rio Branco', '145', 'Centro', 'Juiz de Fora', 'Próximo ao parque', 'MG', 60, '36788-000'),
('Rua das Formigas', '169', 'Centro', 'Teresópolis', 'Próximo à praça', 'RJ', 61, '36196-000'),
('Rua Dom Bosco', '98', 'São Manoel', 'Recife', 'Próximo ao mercado', 'PE', 62, '36012-000'),
('Jamil Jorge Salum', 'S/N', 'Centro', 'Cisneiros', '', 'MG', 66, '36753-000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `senha` (`senha`);

--
-- Indexes for table `doador`
--
ALTER TABLE `doador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Indexes for table `enfermeiro`
--
ALTER TABLE `enfermeiro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `id_filial_enfermeiro` (`id_filial_enfermeiro`);

--
-- Indexes for table `entrevistador`
--
ALTER TABLE `entrevistador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `id_filial_entrevistador` (`id_filial_entrevistador`);

--
-- Indexes for table `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doador`
--
ALTER TABLE `doador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `enfermeiro`
--
ALTER TABLE `enfermeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `entrevistador`
--
ALTER TABLE `entrevistador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `filial`
--
ALTER TABLE `filial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `enfermeiro`
--
ALTER TABLE `enfermeiro`
  ADD CONSTRAINT `id_filial_enfermeiro` FOREIGN KEY (`id_filial_enfermeiro`) REFERENCES `filial` (`id`);

--
-- Constraints for table `entrevistador`
--
ALTER TABLE `entrevistador`
  ADD CONSTRAINT `id_filial_entrevistador` FOREIGN KEY (`id_filial_entrevistador`) REFERENCES `filial` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
