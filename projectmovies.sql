CREATE DATABASE  IF NOT EXISTS `movies_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movies_project`;
-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: movies_project
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movies_table`
--

DROP TABLE IF EXISTS `movies_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(550) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `status` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_table`
--

LOCK TABLES `movies_table` WRITE;
/*!40000 ALTER TABLE `movies_table` DISABLE KEYS */;
INSERT INTO `movies_table` VALUES (1,'Greys Anatomy','drama, medicina','https://i.ibb.co/xFZs0cN/Greys-Anatomy.jpg','Grey\'s Anatomy é uma série de TV americana transmitida originalmente pelo canal American Broadcasting Company (ABC). O drama acompanha a vida pessoal e profissional de estagiários de cirurgia e seus supervisores do Grey Sloan Memorial Hospital, anteriormente conhecido como o Seattle Grace Hospital.','série','intrigantes'),(2,'Brooklyn99','comédia, policial','https://i.ibb.co/pQTdM38/brooklyn99.jpg',NULL,'série','intrigantes'),(3,'Clickbait','suspense, drama','https://i.ibb.co/zN9Fb3X/clickbait.jpg',NULL,'série','intrigantes'),(4,'You','suspense, drama','https://i.ibb.co/cY4jM85/you.jpg',NULL,'série','intrigantes'),(5,'Sharp Objects ( Objetos Cortantes )','suspense, drama, investigacao','https://i.ibb.co/x5g6Gm0/sharpobjects.jpg',NULL,'série','intrigantes'),(6,'Sex Education','comedia, escolar','https://i.ibb.co/QFJYMyy/sexeducation.jpg',NULL,'série','intrigantes'),(7,'Modern Family','comedia, familia','https://i.ibb.co/g3BvLfw/modernfamily.jpg',NULL,'série','intrigantes'),(8,'La Casa de Papel','suspense','https://i.ibb.co/88ngmJM/ladacasadepapel.jpg',NULL,'série','intrigantes'),(9,'Friends','comedia, familia','https://i.ibb.co/4NGb7p0/firends.jpg',NULL,'série','intrigantes'),(10,'Atypical','comedia, familia','https://i.ibb.co/F4TP5rT/atypical.jpg',NULL,'série','intrigantes'),(11,'Riverdale','drama, suspense, adolescente','https://i.ibb.co/WtmL4mX/riverdale.jpg','Riverdale acompanha um grupo de adolescentes formado por Archie, Betty, Veronica, Jughead Jones e Josie, todos alunos do ensino médio. Depois de uma trágica perda, Archie embarca em uma jornada para realizar o seu sonho de se tornar um grande músico. Mas ele vai precisar da ajuda de seus amigos, que às vezes só atrapalham.','série','intrigantes'),(13,'La Casa de Papel','drama, suspense','https://i.ibb.co/crkRjZZ/lacasa.jpg','Na série La Casa de Papel, da Netflix, nove habilidosos ladrões (Nairóbi, Berlim, Tókyo, Rio, Helsinki, Oslo, Professor, Denver e Moscou) se trancam na Casa da Moeda da Espanha, com o ambicioso plano de realizar o maior roubo da história.','série','em alta'),(14,'The Walking Dead','drama, suspense, horror, ação','https://i.ibb.co/R0k6PTZ/twd.jpg','The Walking Dead conta a história de um pequeno grupo de sobreviventes em um mundo pós-apocalíptico cheio de mortos-vivos. A série apresenta a excessiva jornada do grupo liderado por Rick Grimes, em busca de suprimentos e refúgios seguros.','série','em alta'),(15,'You','drama, suspense','https://i.ibb.co/hHCbGSj/you.jpg','A história acompanha Joe, um gerente de livrarias que conhece uma aspirante a escritora e usa a internet e as mídias sociais como ferramentas para reunir as informações pessoais para se aproximar dela e também para fazer a mulher dos seus sonhos se apaixonar por ele.','série','em alta'),(16,'Slasher','drama, suspense, horror, terror, investigação','https://i.ibb.co/wc8hdfF/slasher.jpg','No Halloween, Bryan e Rachel Bennet foram brutalmente assassinados em sua casa. O bebê que Rachel carregava foi encontrado nos braços do killer quando a polícia chegou. No presente, Sarah Bennet volta para sua cidade natal com o marido Dylan, mas suas esperanças são despedaçadas quando uma série de assassinatos acontecem por alguém conhecido como O Carrasco, que se veste com um manto e capuz de couro assim como o killer da família Bennet.','série','em alta'),(17,'Stranger Things','drama, suspense, ação','https://i.ibb.co/cLtJ2Vn/strangerthings.jpg','Em 6 de Novembro, 1983 na pequena cidade de Hawkins, Indiana, o garoto de 12 anos, Will Byers desaparece misteriosamente. A mãe de Will, Joyce, torna-se frenética e tenta encontrar Will enquanto o chefe de polícia Jim Hopper começa a investigar, e assim fazem também os amigos de Will: Dustin, Mike e Lucas.','série','em alta'),(18,'Eu Nunca','adolescente, escolar, drama, comédia, romance','https://i.ibb.co/ZfsrMT3/eununca.jpg','Eu Nunca é uma série de televisão estadunidense de drama adolescente e comédia romântica. Ela estreou na Netflix em 21 de maio de 2020 e aborda a história de uma estudante americana com ascendência indiana do ensino médio, lidando com a morte de seu pai e a vontade de subir na pirâmide social de sua escola. A série recebeu muitas críticas positivas.','série','intrigantes'),(19,'Dinastia','drama','https://i.ibb.co/RHtJCdX/dinastia.jpg','O bilionário Blake Carrington e a jovem Cristal (Nathalie Kelley) estão prestes a se casar, mas a notícia não parece agradar a todos, principalmente à filha do empresário Fallon Carrington. Como se os conflitos entre as duas já não fossem suficientes, Blake precisa encarar a terrível rede de corrupção da alta sociedade, que pode acabar em assassinato.','série','intrigantes'),(20,'Anne With an E','drama, época, adolescente','https://i.ibb.co/S6t4G5K/anne.jpg','Anne with an E é uma série canadense transmitida originalmente pelo canal CBC Television. A história acompanha a vida de Anne Shirley, uma jovem órfã que, após uma infância de abusos entre orfanatos e casas de estranhos, é enviada por engano para viver com um casal de irmãos em idade avançada.','série','intrigantes'),(21,'Divergente','drama, ação, aventura, romance','https://i.ibb.co/Q97SXPy/divergente-1.jpg','Na futurística cidade de Chicago, ao completar 16 anos, Beatrice precisa escolher entre as diferentes facções em que a cidade está dividida. Cada uma representa um valor diferente e, ao contrário de sua família, a jovem opta pela facção dos destemidos, a Audácia. Ela então se torna Tris e inicia uma jornada para afastar seus medos e descobrir quem realmente é. Durante essa jornada, acaba conhecendo o jovem Quatro, um rapaz experiente que tem o dom de intrigá-la e de encantá-la ao mesmo tempo.\n','filme','top1'),(22,'Duro de Matar','ação, aventura','https://i.ibb.co/s9wznK9/durodematar.jpg','O policial de Nova York John McClane está visitando sua família no Natal. Ele participa de uma confraternização de fim de ano na sede da empresa japonesa em que a esposa trabalha. A festa é interrompida por terroristas que invadem o edifício de luxo. McClane não demora a perceber que não há ninguém para salvá-los, a não ser ele próprio.','filme','top1'),(23,'Um Contratempo','investigação, drama','https://i.ibb.co/WKhmCPz/umcontratempo.jpg','Adrian desperta em um hotel, e encontra sua amante morta coberta de dinheiro. Ele recorre a melhor advogada de defesa, e eles tentam descobrir o que realmente aconteceu na noite anterior.','filme','top1'),(24,'Crepúsculo','drama, adolescente','https://i.ibb.co/Y2q637F/crepusculo.jpg','A estudante Bella Swan conhece Edward Cullen, um belo mas misterioso adolescente. Edward é um vampiro, cuja família não bebe sangue, e Bella, longe de ficar assustada, se envolve em um romance perigoso com sua alma gêmea imortal.','filme','top1'),(25,'Resident Evil: Bem-Vindo a Raccoon City','ação, horror, terror','https://i.ibb.co/s5gnX8w/residentevil.jpg','Os últimos sobreviventes de Raccoon City lutam em uma cidade fantasma tomada por zumbis.','filme','top1'),(26,'Homem Aranha: Sem Volta Para Casa','ação, aventura','https://i.ibb.co/Qm98GXK/homiaranha.jpg','O Homem-Aranha precisa lidar com as consequências da sua verdadeira identidade ter sido descoberta.','filme','top1'),(27,'O Homem Invisível (2020)','terror, drama','https://i.ibb.co/ZJHxxzC/homeminvisivel.jpg','Depois de forjar o próprio suicídio, um cientista enlouquecido usa seu poder para se tornar invisível e aterrorizar sua ex-namorada. Quando a polícia se recusa a acreditar em sua história, ela decide resolver o assunto por conta própria.','filme','top1'),(28,'Minha Mãe é Uma Peça','comédia','https://i.ibb.co/PZr9s4X/minhamaeeumapeca.jpg','Dona Hermínia é uma mulher de meia idade, divorciada do marido, que a trocou por uma mais jovem. Hiperativa, ela não larga o pé de seus filhos Marcelina e Juliano, que já estão bem grandinhos. Um dia, após descobrir que eles a consideram uma chata, resolve sair de casa sem avisar ninguém, deixando todos, de alguma forma, preocupados com o que teria acontecido. Mal sabem eles que a mãe foi visitar a querida tia Zélia para desabafar suas tristezas do presente e recordar os bons tempos do passado.','filme','top1');
/*!40000 ALTER TABLE `movies_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-21  8:48:37
