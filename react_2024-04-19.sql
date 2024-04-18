# ************************************************************
# Sequel Ace SQL dump
# Version 20064
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.3.0)
# Database: react
# Generation Time: 2024-04-18 20:56:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table hasil_response
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hasil_response`;

CREATE TABLE `hasil_response` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angka_kurang` int NOT NULL,
  `angka_lebih` int NOT NULL,
  `profesi` enum('A','B','C','D','E') COLLATE utf8mb4_unicode_ci NOT NULL,
  `plain_json` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `hasil_response` WRITE;
/*!40000 ALTER TABLE `hasil_response` DISABLE KEYS */;

INSERT INTO `hasil_response` (`id`, `nama`, `jenis_kelamin`, `nama_jalan`, `email`, `angka_kurang`, `angka_lebih`, `profesi`, `plain_json`, `created_at`, `updated_at`)
VALUES
	(1,'Emmy Perez','2','Quai Charles-De-Gaulle','emmy.perez@example.com',8,5,'E','{\"id\": {\"name\": \"INSEE\", \"value\": \"2450526648943 67\"}, \"dob\": {\"age\": 78, \"date\": \"1945-06-18T17:08:44.515Z\"}, \"nat\": \"FR\", \"cell\": \"06-99-25-82-46\", \"name\": {\"last\": \"Perez\", \"first\": \"Emmy\", \"title\": \"Ms\"}, \"email\": \"emmy.perez@example.com\", \"login\": {\"md5\": \"d1adfb2029e3635de95dfea87e73e612\", \"salt\": \"fi2S2bDj\", \"sha1\": \"5e87b17d78225f4b4e2c0c10fd048e12f39f1666\", \"uuid\": \"5cfec5bf-312d-4bd0-b24a-d2011de6291e\", \"sha256\": \"b9a866fc64709566ce61561d50dc294a941ad0ba2fcac88f38e4f4785ccbec09\", \"password\": \"court\", \"username\": \"purplesnake216\"}, \"phone\": \"05-83-15-19-75\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/7.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/7.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/7.jpg\"}, \"location\": {\"city\": \"Perpignan\", \"state\": \"Vendée\", \"street\": {\"name\": \"Quai Charles-De-Gaulle\", \"number\": 7746}, \"country\": \"France\", \"postcode\": 27239, \"timezone\": {\"offset\": \"+9:00\", \"description\": \"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}, \"coordinates\": {\"latitude\": \"-16.7587\", \"longitude\": \"157.5821\"}}, \"registered\": {\"age\": 19, \"date\": \"2004-06-15T14:59:43.368Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(2,'Patrick Cruz','1','School Lane','patrick.cruz@example.com',12,4,'B','{\"id\": {\"name\": \"NINO\", \"value\": \"ZK 74 61 19 R\"}, \"dob\": {\"age\": 51, \"date\": \"1972-10-09T22:02:46.766Z\"}, \"nat\": \"GB\", \"cell\": \"07370 327988\", \"name\": {\"last\": \"Cruz\", \"first\": \"Patrick\", \"title\": \"Mr\"}, \"email\": \"patrick.cruz@example.com\", \"login\": {\"md5\": \"800b87b585d13273e76453bb421e5a19\", \"salt\": \"eceqvuUU\", \"sha1\": \"a530f8f6458d5820490268eae8b523b370fc3b59\", \"uuid\": \"ff49d379-3997-4ef7-972b-2e5b0e610145\", \"sha256\": \"c130f5d3361468cd7361be03095eb2470590c14ed958d4d489b98ba197c53125\", \"password\": \"buckeye\", \"username\": \"smallfish476\"}, \"phone\": \"015394 08511\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/30.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/30.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/30.jpg\"}, \"location\": {\"city\": \"Belfast\", \"state\": \"Warwickshire\", \"street\": {\"name\": \"School Lane\", \"number\": 3199}, \"country\": \"United Kingdom\", \"postcode\": \"E51 5GS\", \"timezone\": {\"offset\": \"+9:30\", \"description\": \"Adelaide, Darwin\"}, \"coordinates\": {\"latitude\": \"37.8526\", \"longitude\": \"7.1035\"}}, \"registered\": {\"age\": 5, \"date\": \"2018-09-25T23:31:58.706Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(3,'Enzo Picard','1','Rue de la Gare','enzo.picard@example.com',17,4,'B','{\"id\": {\"name\": \"INSEE\", \"value\": \"1860521596646 03\"}, \"dob\": {\"age\": 37, \"date\": \"1986-06-19T14:32:30.757Z\"}, \"nat\": \"FR\", \"cell\": \"06-59-48-37-10\", \"name\": {\"last\": \"Picard\", \"first\": \"Enzo\", \"title\": \"Mr\"}, \"email\": \"enzo.picard@example.com\", \"login\": {\"md5\": \"1e82184f5f5a5a792c07ffc6876ad138\", \"salt\": \"QWoLD5Ls\", \"sha1\": \"5eee5ffff1eca64813a4de2e310998de791e7f61\", \"uuid\": \"c2c467d4-1eb9-4631-a1a7-e665c65048fe\", \"sha256\": \"584f6f52106627182aa88f3f0998542795fd92c800581fab10c6cf1ec8ca6353\", \"password\": \"craig\", \"username\": \"tinyfish453\"}, \"phone\": \"03-53-31-16-01\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/68.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/68.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/68.jpg\"}, \"location\": {\"city\": \"Saint-Pierre\", \"state\": \"Savoie\", \"street\": {\"name\": \"Rue de la Gare\", \"number\": 2880}, \"country\": \"France\", \"postcode\": 45324, \"timezone\": {\"offset\": \"0:00\", \"description\": \"Western Europe Time, London, Lisbon, Casablanca\"}, \"coordinates\": {\"latitude\": \"-30.1600\", \"longitude\": \"88.3775\"}}, \"registered\": {\"age\": 17, \"date\": \"2007-01-05T21:01:35.385Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(4,'Lea French','2','Dufferin St','lea.french@example.com',15,2,'A','{\"id\": {\"name\": \"SIN\", \"value\": \"512226101\"}, \"dob\": {\"age\": 56, \"date\": \"1967-10-06T07:23:10.700Z\"}, \"nat\": \"CA\", \"cell\": \"X21 W13-1265\", \"name\": {\"last\": \"French\", \"first\": \"Lea\", \"title\": \"Mrs\"}, \"email\": \"lea.french@example.com\", \"login\": {\"md5\": \"50f54d60cc30bba4a4fdcbebc2a1a1c4\", \"salt\": \"nwdccSPa\", \"sha1\": \"6bddd64298ce184f6630accb3447f39f44235b40\", \"uuid\": \"92ca06f2-af68-40e9-a321-cf0e82359cc2\", \"sha256\": \"f7a537827c7c1ebf9fa3e8c7d97adcf25fe870ca8154da1a79e8f56a77a4947c\", \"password\": \"limited\", \"username\": \"blackleopard999\"}, \"phone\": \"G13 D65-1712\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/57.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/57.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/57.jpg\"}, \"location\": {\"city\": \"Inverness\", \"state\": \"Northwest Territories\", \"street\": {\"name\": \"Dufferin St\", \"number\": 2288}, \"country\": \"Canada\", \"postcode\": \"F0R 6I3\", \"timezone\": {\"offset\": \"+5:30\", \"description\": \"Bombay, Calcutta, Madras, New Delhi\"}, \"coordinates\": {\"latitude\": \"-13.3905\", \"longitude\": \"-25.1726\"}}, \"registered\": {\"age\": 14, \"date\": \"2009-12-17T22:37:01.929Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(5,'Esma Özberk','2','Vatan Cd','esma.ozberk@example.com',14,5,'E','{\"id\": {\"name\": \"\", \"value\": null}, \"dob\": {\"age\": 57, \"date\": \"1966-11-07T11:53:29.763Z\"}, \"nat\": \"TR\", \"cell\": \"(829)-180-7504\", \"name\": {\"last\": \"Özberk\", \"first\": \"Esma\", \"title\": \"Miss\"}, \"email\": \"esma.ozberk@example.com\", \"login\": {\"md5\": \"201b48100b081ac0943535c976d0569c\", \"salt\": \"TLP2YSMp\", \"sha1\": \"c52d4a95eb5a089bf4dfc99fc082c5920e30eb0e\", \"uuid\": \"0a74e1a0-b8df-4597-9500-a3cc760334a1\", \"sha256\": \"a0294d64be2e87a46c6051648470fd8a9ef9c3e64fb1e2d5f34f1c8c21468b1b\", \"password\": \"usnavy\", \"username\": \"purplesnake924\"}, \"phone\": \"(222)-853-6527\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/94.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/94.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/94.jpg\"}, \"location\": {\"city\": \"Konya\", \"state\": \"Gümüşhane\", \"street\": {\"name\": \"Vatan Cd\", \"number\": 3359}, \"country\": \"Turkey\", \"postcode\": 59335, \"timezone\": {\"offset\": \"+3:30\", \"description\": \"Tehran\"}, \"coordinates\": {\"latitude\": \"-20.9841\", \"longitude\": \"44.0638\"}}, \"registered\": {\"age\": 10, \"date\": \"2013-10-04T08:18:42.718Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(6,'Mille Muri','2','Brobekkveien','mille.muri@example.com',13,6,'B','{\"id\": {\"name\": \"FN\", \"value\": \"10129426247\"}, \"dob\": {\"age\": 29, \"date\": \"1994-12-10T19:59:43.821Z\"}, \"nat\": \"NO\", \"cell\": \"91818792\", \"name\": {\"last\": \"Muri\", \"first\": \"Mille\", \"title\": \"Miss\"}, \"email\": \"mille.muri@example.com\", \"login\": {\"md5\": \"dccab8be5398551c8a252f2a26e5897b\", \"salt\": \"JRQ2ntd5\", \"sha1\": \"12022e422c18bf1570b73daf66759fe5f36cf59e\", \"uuid\": \"d6ecd99b-8de1-40e1-a3e5-4c154bfde76a\", \"sha256\": \"d66af04834e7753eff197e40dce1d9bf6ee8516aa6254bbfec6d14dd4c46c092\", \"password\": \"body\", \"username\": \"bluefrog963\"}, \"phone\": \"88637924\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/26.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/26.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/26.jpg\"}, \"location\": {\"city\": \"Soknedal\", \"state\": \"Rogaland\", \"street\": {\"name\": \"Brobekkveien\", \"number\": 1951}, \"country\": \"Norway\", \"postcode\": \"7531\", \"timezone\": {\"offset\": \"+4:30\", \"description\": \"Kabul\"}, \"coordinates\": {\"latitude\": \"14.5506\", \"longitude\": \"92.1531\"}}, \"registered\": {\"age\": 5, \"date\": \"2018-10-05T08:19:27.661Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(7,'Louis Campbell','1','Oak St','louis.campbell@example.com',18,1,'C','{\"id\": {\"name\": \"SIN\", \"value\": \"010858413\"}, \"dob\": {\"age\": 33, \"date\": \"1990-05-20T10:10:31.245Z\"}, \"nat\": \"CA\", \"cell\": \"Z06 L60-4029\", \"name\": {\"last\": \"Campbell\", \"first\": \"Louis\", \"title\": \"Mr\"}, \"email\": \"louis.campbell@example.com\", \"login\": {\"md5\": \"4c31991120741e6cde80120d24eb8cbf\", \"salt\": \"vQMm5wjp\", \"sha1\": \"9f3f552794dbb422ff109e2395da02c270f9ec8a\", \"uuid\": \"d93a8128-294a-4154-b16e-b2357bdd4108\", \"sha256\": \"759407ab7fec83722ad23f2695350815ac6d0b1db9ea3f447edccb9b9c3d73d3\", \"password\": \"clovis\", \"username\": \"greenmeercat584\"}, \"phone\": \"J36 R80-8438\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/35.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/35.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/35.jpg\"}, \"location\": {\"city\": \"Souris\", \"state\": \"Ontario\", \"street\": {\"name\": \"Oak St\", \"number\": 3688}, \"country\": \"Canada\", \"postcode\": \"J4H 5P5\", \"timezone\": {\"offset\": \"+7:00\", \"description\": \"Bangkok, Hanoi, Jakarta\"}, \"coordinates\": {\"latitude\": \"-50.3392\", \"longitude\": \"-79.0292\"}}, \"registered\": {\"age\": 18, \"date\": \"2006-03-17T10:54:01.326Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(8,'Fernando Rhodes','1','Denny Street','fernando.rhodes@example.com',17,1,'A','{\"id\": {\"name\": \"PPS\", \"value\": \"9198685T\"}, \"dob\": {\"age\": 34, \"date\": \"1990-03-29T14:25:58.999Z\"}, \"nat\": \"IE\", \"cell\": \"081-332-5619\", \"name\": {\"last\": \"Rhodes\", \"first\": \"Fernando\", \"title\": \"Mr\"}, \"email\": \"fernando.rhodes@example.com\", \"login\": {\"md5\": \"03dbbbc9b83740064372b867bfbd2fa9\", \"salt\": \"igem4Xs1\", \"sha1\": \"3e87b852a58b51e9cd6ba688480423a9ef66bed2\", \"uuid\": \"f6b7a21f-b674-4c74-add6-bc397e944e46\", \"sha256\": \"118252b85b479a8daa664f24288e23a48b4f55c945a9dc67476b39496c8e446a\", \"password\": \"patriots\", \"username\": \"lazydog475\"}, \"phone\": \"011-157-4000\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/80.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/80.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/80.jpg\"}, \"location\": {\"city\": \"Athenry\", \"state\": \"Cavan\", \"street\": {\"name\": \"Denny Street\", \"number\": 1793}, \"country\": \"Ireland\", \"postcode\": 60275, \"timezone\": {\"offset\": \"0:00\", \"description\": \"Western Europe Time, London, Lisbon, Casablanca\"}, \"coordinates\": {\"latitude\": \"-58.2257\", \"longitude\": \"-46.6670\"}}, \"registered\": {\"age\": 16, \"date\": \"2007-07-28T12:25:53.227Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(9,'Sebastian Thomsen','1','Porsevej','sebastian.thomsen@example.com',11,4,'E','{\"id\": {\"name\": \"CPR\", \"value\": \"1904101-3725\"}, \"dob\": {\"age\": 22, \"date\": \"2001-04-19T11:10:57.154Z\"}, \"nat\": \"DK\", \"cell\": \"60233313\", \"name\": {\"last\": \"Thomsen\", \"first\": \"Sebastian\", \"title\": \"Mr\"}, \"email\": \"sebastian.thomsen@example.com\", \"login\": {\"md5\": \"d0e2ff9142818924cc29260777a2a945\", \"salt\": \"zZ8C5IBR\", \"sha1\": \"3405ca38173dbc8c6fdd5e9feffaecee05da477b\", \"uuid\": \"a986532a-028e-47d5-b104-28eaa7b2ba48\", \"sha256\": \"c538cc05ec9335667b8ad3a9da93de0529b8d893670ff0e51d7548b60cac0b9f\", \"password\": \"ferrari1\", \"username\": \"orangezebra819\"}, \"phone\": \"61157563\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/61.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/61.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/61.jpg\"}, \"location\": {\"city\": \"Samsø\", \"state\": \"Midtjylland\", \"street\": {\"name\": \"Porsevej\", \"number\": 5165}, \"country\": \"Denmark\", \"postcode\": 20798, \"timezone\": {\"offset\": \"+3:00\", \"description\": \"Baghdad, Riyadh, Moscow, St. Petersburg\"}, \"coordinates\": {\"latitude\": \"42.6142\", \"longitude\": \"-94.4227\"}}, \"registered\": {\"age\": 3, \"date\": \"2021-04-14T06:38:33.823Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(10,'Mario Toro','1','Eje vial Lucio','mario.toro@example.com',11,4,'A','{\"id\": {\"name\": \"NSS\", \"value\": \"21 01 78 2652 5\"}, \"dob\": {\"age\": 59, \"date\": \"1964-07-02T10:30:49.301Z\"}, \"nat\": \"MX\", \"cell\": \"(624) 802 6558\", \"name\": {\"last\": \"Toro\", \"first\": \"Mario\", \"title\": \"Mr\"}, \"email\": \"mario.toro@example.com\", \"login\": {\"md5\": \"56d3c257335ebcb4f640d347aedab22d\", \"salt\": \"jF4jIny6\", \"sha1\": \"bfe46c933c4c2a2d7771c34e94fb1b06cc0e174d\", \"uuid\": \"676e3500-0ba0-4828-b669-4252a82c23e3\", \"sha256\": \"da7d875e63f962cad139edbc262bc1f3030d4007437eacce72d9780a3b75b7ad\", \"password\": \"chunky\", \"username\": \"brownleopard962\"}, \"phone\": \"(661) 307 5030\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/99.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/99.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/99.jpg\"}, \"location\": {\"city\": \"Nicolás R. Casillas\", \"state\": \"Hidalgo\", \"street\": {\"name\": \"Eje vial Lucio\", \"number\": 9692}, \"country\": \"Mexico\", \"postcode\": 30542, \"timezone\": {\"offset\": \"+7:00\", \"description\": \"Bangkok, Hanoi, Jakarta\"}, \"coordinates\": {\"latitude\": \"40.7059\", \"longitude\": \"-97.6377\"}}, \"registered\": {\"age\": 7, \"date\": \"2016-09-17T16:14:30.227Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(11,'Marjolijn Koetsier','2','Kruitstraat','marjolijn.koetsier@example.com',16,2,'A','{\"id\": {\"name\": \"BSN\", \"value\": \"78133510\"}, \"dob\": {\"age\": 26, \"date\": \"1997-07-12T12:20:54.471Z\"}, \"nat\": \"NL\", \"cell\": \"(06) 67811024\", \"name\": {\"last\": \"Koetsier\", \"first\": \"Marjolijn\", \"title\": \"Miss\"}, \"email\": \"marjolijn.koetsier@example.com\", \"login\": {\"md5\": \"31a9f0a9dc2d6b47911e3195fcc70203\", \"salt\": \"Qj39zfu7\", \"sha1\": \"09e2d721f84e6974d44f3d10c944e0f0b3429983\", \"uuid\": \"1514a8f0-1f6b-4eb6-bcf7-934bd08204db\", \"sha256\": \"d0d955da13b5af39fec9a53011b6eecc2de89176d64015b0943ec48a99ac4c87\", \"password\": \"hallowee\", \"username\": \"yellowcat205\"}, \"phone\": \"(0145) 451541\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/22.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/22.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/22.jpg\"}, \"location\": {\"city\": \"Ysbrechtum\", \"state\": \"Groningen\", \"street\": {\"name\": \"Kruitstraat\", \"number\": 9159}, \"country\": \"Netherlands\", \"postcode\": \"4317 YT\", \"timezone\": {\"offset\": \"-2:00\", \"description\": \"Mid-Atlantic\"}, \"coordinates\": {\"latitude\": \"-67.0494\", \"longitude\": \"125.8515\"}}, \"registered\": {\"age\": 14, \"date\": \"2010-01-03T20:41:46.824Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(12,'Quenten Van Bezooijen','1','Boekweitakker','quenten.vanbezooijen@example.com',12,6,'E','{\"id\": {\"name\": \"BSN\", \"value\": \"10904620\"}, \"dob\": {\"age\": 60, \"date\": \"1963-07-11T16:21:43.218Z\"}, \"nat\": \"NL\", \"cell\": \"(06) 11296189\", \"name\": {\"last\": \"Van Bezooijen\", \"first\": \"Quenten\", \"title\": \"Mr\"}, \"email\": \"quenten.vanbezooijen@example.com\", \"login\": {\"md5\": \"51841678078e39e14af0f892a64024f2\", \"salt\": \"DIbg8L9m\", \"sha1\": \"b46650698f45f3b997bd02513f66bff9b8869a8e\", \"uuid\": \"81433b21-230a-4b54-a95f-395f858b9add\", \"sha256\": \"fb01ec55796582318d432dce6b29004b0cc4851e43e5e49740ba0997abc44abe\", \"password\": \"diving\", \"username\": \"smallwolf586\"}, \"phone\": \"(0174) 863643\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/21.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/21.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/21.jpg\"}, \"location\": {\"city\": \"Tongeren\", \"state\": \"Flevoland\", \"street\": {\"name\": \"Boekweitakker\", \"number\": 5618}, \"country\": \"Netherlands\", \"postcode\": \"9818 YG\", \"timezone\": {\"offset\": \"-1:00\", \"description\": \"Azores, Cape Verde Islands\"}, \"coordinates\": {\"latitude\": \"59.1739\", \"longitude\": \"-81.2837\"}}, \"registered\": {\"age\": 14, \"date\": \"2009-11-29T20:41:44.277Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(13,'Enoque Araújo','1','Rua Santa Catarina ','enoque.araujo@example.com',9,5,'D','{\"id\": {\"name\": \"CPF\", \"value\": \"494.355.111-13\"}, \"dob\": {\"age\": 77, \"date\": \"1946-05-04T20:10:05.346Z\"}, \"nat\": \"BR\", \"cell\": \"(16) 5593-0313\", \"name\": {\"last\": \"Araújo\", \"first\": \"Enoque\", \"title\": \"Mr\"}, \"email\": \"enoque.araujo@example.com\", \"login\": {\"md5\": \"d1b7da0525bf44016acdaf942c1b152a\", \"salt\": \"ZSgfdKSg\", \"sha1\": \"c969b84aa90d2fcc44fa8bada0492c50f350edf0\", \"uuid\": \"3e9ce69f-433d-4849-83bd-4f2d1c917cbb\", \"sha256\": \"a5d7c58d9143fce46da5f5a07cd2df1a5f9a65b4bf5bf8308267549112ee4b1b\", \"password\": \"0123\", \"username\": \"blackduck894\"}, \"phone\": \"(47) 8226-1311\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/79.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/79.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/79.jpg\"}, \"location\": {\"city\": \"Formosa\", \"state\": \"Distrito Federal\", \"street\": {\"name\": \"Rua Santa Catarina \", \"number\": 214}, \"country\": \"Brazil\", \"postcode\": 13399, \"timezone\": {\"offset\": \"-2:00\", \"description\": \"Mid-Atlantic\"}, \"coordinates\": {\"latitude\": \"39.8790\", \"longitude\": \"45.9793\"}}, \"registered\": {\"age\": 17, \"date\": \"2007-01-31T12:22:38.750Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(14,'Chaithra Shet','2','Mirza Ismail Rd','chaithra.shet@example.com',18,3,'B','{\"id\": {\"name\": \"UIDAI\", \"value\": \"360117684600\"}, \"dob\": {\"age\": 45, \"date\": \"1979-01-02T19:58:53.287Z\"}, \"nat\": \"IN\", \"cell\": \"8919469558\", \"name\": {\"last\": \"Shet\", \"first\": \"Chaithra\", \"title\": \"Ms\"}, \"email\": \"chaithra.shet@example.com\", \"login\": {\"md5\": \"2c6038534224a6759c1a07d496d7bbcf\", \"salt\": \"uuYVoXCJ\", \"sha1\": \"59f0df79942ed614d43df6b7d9841016b89cf56c\", \"uuid\": \"a31c929b-ad34-40e2-b5fe-d4edb5be47c2\", \"sha256\": \"e3811851d92feaf805d3f92820540e5dd97045a289c67044b1ee08fc17e811b2\", \"password\": \"anfield\", \"username\": \"organicsnake905\"}, \"phone\": \"9532789984\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/12.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/12.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/12.jpg\"}, \"location\": {\"city\": \"Bidar\", \"state\": \"Odisha\", \"street\": {\"name\": \"Mirza Ismail Rd\", \"number\": 9506}, \"country\": \"India\", \"postcode\": 49090, \"timezone\": {\"offset\": \"-6:00\", \"description\": \"Central Time (US & Canada), Mexico City\"}, \"coordinates\": {\"latitude\": \"12.0368\", \"longitude\": \"-177.6528\"}}, \"registered\": {\"age\": 16, \"date\": \"2008-03-07T16:04:29.185Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(15,'Annemaria Moeskops','2','Dominee Bulensstraat','annemaria.moeskops@example.com',10,4,'A','{\"id\": {\"name\": \"BSN\", \"value\": \"21354435\"}, \"dob\": {\"age\": 35, \"date\": \"1988-07-09T10:53:05.621Z\"}, \"nat\": \"NL\", \"cell\": \"(06) 58093044\", \"name\": {\"last\": \"Moeskops\", \"first\": \"Annemaria\", \"title\": \"Ms\"}, \"email\": \"annemaria.moeskops@example.com\", \"login\": {\"md5\": \"17c7c6baf9e891fb6ce04b409d492402\", \"salt\": \"jKwbwTB2\", \"sha1\": \"14d87d3316a8df00aeeed1ae6234d9563f826944\", \"uuid\": \"ebf37d12-92d5-4aca-85aa-3e5243598c35\", \"sha256\": \"88957aba405261bf056800a322d9126933918d10a4ba5ae8ef4ce9b547ef1408\", \"password\": \"wilder\", \"username\": \"happyzebra604\"}, \"phone\": \"(0750) 384979\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/20.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/20.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/20.jpg\"}, \"location\": {\"city\": \"Leiden\", \"state\": \"Zeeland\", \"street\": {\"name\": \"Dominee Bulensstraat\", \"number\": 3475}, \"country\": \"Netherlands\", \"postcode\": \"8851 SL\", \"timezone\": {\"offset\": \"+7:00\", \"description\": \"Bangkok, Hanoi, Jakarta\"}, \"coordinates\": {\"latitude\": \"61.4538\", \"longitude\": \"-123.6924\"}}, \"registered\": {\"age\": 12, \"date\": \"2012-04-02T12:37:30.718Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(16,'Svitoslava Virskiy','2','Cherepanovskiy provulok','svitoslava.virskiy@example.com',16,8,'E','{\"id\": {\"name\": \"\", \"value\": null}, \"dob\": {\"age\": 40, \"date\": \"1984-03-18T18:25:13.415Z\"}, \"nat\": \"UA\", \"cell\": \"(067) W29-0453\", \"name\": {\"last\": \"Virskiy\", \"first\": \"Svitoslava\", \"title\": \"Ms\"}, \"email\": \"svitoslava.virskiy@example.com\", \"login\": {\"md5\": \"f7471fe1f072460f7ceeb9ce488b7a2c\", \"salt\": \"Mjy0lcUT\", \"sha1\": \"721af1332c22f449865327d31e6ad10dde154ce1\", \"uuid\": \"bae0d75d-f097-4916-94f3-516cc27a6711\", \"sha256\": \"93c614d3393c5577e7674ab0593c7280726a82822e71e4f39abb665b30dc06af\", \"password\": \"aaaaaa\", \"username\": \"brownladybug398\"}, \"phone\": \"(097) O41-0933\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/44.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/44.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/44.jpg\"}, \"location\": {\"city\": \"Mirgorod\", \"state\": \"Sumska\", \"street\": {\"name\": \"Cherepanovskiy provulok\", \"number\": 8046}, \"country\": \"Ukraine\", \"postcode\": 93933, \"timezone\": {\"offset\": \"+9:30\", \"description\": \"Adelaide, Darwin\"}, \"coordinates\": {\"latitude\": \"-26.0176\", \"longitude\": \"-43.8483\"}}, \"registered\": {\"age\": 18, \"date\": \"2006-01-26T01:57:11.408Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(17,'Kemal Hamminga','1','Francoise Le Poolestraat','kemal.hamminga@example.com',18,3,'B','{\"id\": {\"name\": \"BSN\", \"value\": \"43444951\"}, \"dob\": {\"age\": 54, \"date\": \"1969-10-02T02:30:55.947Z\"}, \"nat\": \"NL\", \"cell\": \"(06) 94856523\", \"name\": {\"last\": \"Hamminga\", \"first\": \"Kemal\", \"title\": \"Mr\"}, \"email\": \"kemal.hamminga@example.com\", \"login\": {\"md5\": \"df8701cabcc5f4090cc2a945c83f86af\", \"salt\": \"NFDRwORk\", \"sha1\": \"28db35309fb5ee6a542ca52e8309ac5143efc95e\", \"uuid\": \"0aa2614d-2e0d-41f0-bb41-e6aebe1e226c\", \"sha256\": \"0958681106a662edcc96f7f72c89f74107761f6571c37455333d9790721392b9\", \"password\": \"killjoy\", \"username\": \"sadduck264\"}, \"phone\": \"(0757) 493212\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/68.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/68.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/68.jpg\"}, \"location\": {\"city\": \"Sweikhuizen\", \"state\": \"Noord-Brabant\", \"street\": {\"name\": \"Francoise Le Poolestraat\", \"number\": 9417}, \"country\": \"Netherlands\", \"postcode\": \"1803 BB\", \"timezone\": {\"offset\": \"-8:00\", \"description\": \"Pacific Time (US & Canada)\"}, \"coordinates\": {\"latitude\": \"-81.2219\", \"longitude\": \"-156.8790\"}}, \"registered\": {\"age\": 14, \"date\": \"2009-09-20T03:59:46.863Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(18,'Dominic Slawa','1','West Ave','dominic.slawa@example.com',12,3,'A','{\"id\": {\"name\": \"SIN\", \"value\": \"123254369\"}, \"dob\": {\"age\": 71, \"date\": \"1952-12-19T02:58:39.842Z\"}, \"nat\": \"CA\", \"cell\": \"J62 R19-5389\", \"name\": {\"last\": \"Slawa\", \"first\": \"Dominic\", \"title\": \"Mr\"}, \"email\": \"dominic.slawa@example.com\", \"login\": {\"md5\": \"22f67944bfd9f879fe5e14a64826694e\", \"salt\": \"KTft6lh7\", \"sha1\": \"d925c9dc8b997f0516e2ec10de0b3989f092a369\", \"uuid\": \"13fc2872-a20c-4044-b802-0d0723fc501f\", \"sha256\": \"3d78433976de0adc0ca5738c86fd33f82933335122d57ea187606224afd7ad0f\", \"password\": \"1023\", \"username\": \"brownmeercat909\"}, \"phone\": \"Z36 U80-4845\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/23.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/23.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/23.jpg\"}, \"location\": {\"city\": \"Killarney\", \"state\": \"British Columbia\", \"street\": {\"name\": \"West Ave\", \"number\": 7250}, \"country\": \"Canada\", \"postcode\": \"Y6W 6H3\", \"timezone\": {\"offset\": \"-7:00\", \"description\": \"Mountain Time (US & Canada)\"}, \"coordinates\": {\"latitude\": \"83.9535\", \"longitude\": \"75.2944\"}}, \"registered\": {\"age\": 15, \"date\": \"2008-08-31T08:34:37.487Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(19,'Natalie Brooks','2','Photinia Ave','natalie.brooks@example.com',16,2,'D','{\"id\": {\"name\": \"TFN\", \"value\": \"664694537\"}, \"dob\": {\"age\": 35, \"date\": \"1988-11-09T00:08:10.042Z\"}, \"nat\": \"AU\", \"cell\": \"0408-121-358\", \"name\": {\"last\": \"Brooks\", \"first\": \"Natalie\", \"title\": \"Mrs\"}, \"email\": \"natalie.brooks@example.com\", \"login\": {\"md5\": \"a75362f19f011c37af477c09953b20a0\", \"salt\": \"MAw5i7MU\", \"sha1\": \"74bd3ff867bd0d1a31bcdc48c6bdc6bc12c34680\", \"uuid\": \"111d8e72-5664-4898-b65c-7220082113ec\", \"sha256\": \"578252819df758793a50b77aaf51b359cb1d23d2f1445ae4fe1baab63c943a6d\", \"password\": \"505050\", \"username\": \"silverostrich394\"}, \"phone\": \"07-6865-4556\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/68.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/68.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/68.jpg\"}, \"location\": {\"city\": \"Nowra\", \"state\": \"Victoria\", \"street\": {\"name\": \"Photinia Ave\", \"number\": 3709}, \"country\": \"Australia\", \"postcode\": 3923, \"timezone\": {\"offset\": \"+3:00\", \"description\": \"Baghdad, Riyadh, Moscow, St. Petersburg\"}, \"coordinates\": {\"latitude\": \"-21.8574\", \"longitude\": \"155.3749\"}}, \"registered\": {\"age\": 20, \"date\": \"2003-04-20T05:30:50.721Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(20,'Elliott Christophersen','1','Damliveien','elliott.christophersen@example.com',11,4,'C','{\"id\": {\"name\": \"FN\", \"value\": \"20017547306\"}, \"dob\": {\"age\": 49, \"date\": \"1975-01-20T14:14:58.814Z\"}, \"nat\": \"NO\", \"cell\": \"46537554\", \"name\": {\"last\": \"Christophersen\", \"first\": \"Elliott\", \"title\": \"Mr\"}, \"email\": \"elliott.christophersen@example.com\", \"login\": {\"md5\": \"1fde0f3b8e9f0da02dee1fd4fb928d10\", \"salt\": \"TVVqkwBB\", \"sha1\": \"c57cb9f481cab536c6a7338cfce54066cb1278c7\", \"uuid\": \"a726c4c0-28b7-4010-9638-a3ff3edac846\", \"sha256\": \"fb093b69d204e048d1dec4609b0e82d33b34f3180cdc84383991135b8bc17acf\", \"password\": \"cuan\", \"username\": \"happybutterfly876\"}, \"phone\": \"35798860\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/0.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/0.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/0.jpg\"}, \"location\": {\"city\": \"Myre\", \"state\": \"Hordaland\", \"street\": {\"name\": \"Damliveien\", \"number\": 2001}, \"country\": \"Norway\", \"postcode\": \"9147\", \"timezone\": {\"offset\": \"+8:00\", \"description\": \"Beijing, Perth, Singapore, Hong Kong\"}, \"coordinates\": {\"latitude\": \"-35.7592\", \"longitude\": \"123.6401\"}}, \"registered\": {\"age\": 2, \"date\": \"2022-03-17T14:52:41.871Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(21,'Kathrin Laurent','2','Avenue Tony-Garnier','kathrin.laurent@example.com',17,4,'D','{\"id\": {\"name\": \"AVS\", \"value\": \"756.6087.2772.34\"}, \"dob\": {\"age\": 31, \"date\": \"1992-08-19T20:32:37.152Z\"}, \"nat\": \"CH\", \"cell\": \"077 959 91 15\", \"name\": {\"last\": \"Laurent\", \"first\": \"Kathrin\", \"title\": \"Madame\"}, \"email\": \"kathrin.laurent@example.com\", \"login\": {\"md5\": \"ea4a3d9f8649e0bad2bd3bae32271fc5\", \"salt\": \"eYfRDGtY\", \"sha1\": \"d894fc1b6b1364d7dacb45ad55bfadd80e6a056c\", \"uuid\": \"88ab616d-f7e8-47b5-8fcf-f9a229c9a5a1\", \"sha256\": \"ba6a5b2d7e0a7b67f73cbbf21d63b60313d223508e8b3608edec96d583c99f7f\", \"password\": \"pics\", \"username\": \"bluewolf921\"}, \"phone\": \"078 791 33 20\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/14.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/14.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/14.jpg\"}, \"location\": {\"city\": \"Strengelbach\", \"state\": \"Zürich\", \"street\": {\"name\": \"Avenue Tony-Garnier\", \"number\": 5164}, \"country\": \"Switzerland\", \"postcode\": 8500, \"timezone\": {\"offset\": \"+5:00\", \"description\": \"Ekaterinburg, Islamabad, Karachi, Tashkent\"}, \"coordinates\": {\"latitude\": \"56.9011\", \"longitude\": \"164.5323\"}}, \"registered\": {\"age\": 4, \"date\": \"2019-04-29T20:09:36.236Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(22,'Emanuel Dierkes','1','Schlossstraße','emanuel.dierkes@example.com',13,4,'D','{\"id\": {\"name\": \"SVNR\", \"value\": \"60 130875 D 440\"}, \"dob\": {\"age\": 48, \"date\": \"1975-08-13T18:10:56.612Z\"}, \"nat\": \"DE\", \"cell\": \"0170-5313976\", \"name\": {\"last\": \"Dierkes\", \"first\": \"Emanuel\", \"title\": \"Mr\"}, \"email\": \"emanuel.dierkes@example.com\", \"login\": {\"md5\": \"78bd36835db574c855e7c55bc054f7ae\", \"salt\": \"N83zSfXE\", \"sha1\": \"16a3bf4137847a075dd6edda8fe0554c31416174\", \"uuid\": \"56155b48-90ae-4df9-8632-8e2836e338f5\", \"sha256\": \"5e746ad1b0396f2d6b9fcca29ce6a16bf634ebe179f3d4e70d4e9af50fd3270c\", \"password\": \"hippie\", \"username\": \"brownmeercat483\"}, \"phone\": \"0734-7884258\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/37.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/37.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/37.jpg\"}, \"location\": {\"city\": \"Sulz am Neckar\", \"state\": \"Baden-Württemberg\", \"street\": {\"name\": \"Schlossstraße\", \"number\": 2875}, \"country\": \"Germany\", \"postcode\": 69778, \"timezone\": {\"offset\": \"+3:30\", \"description\": \"Tehran\"}, \"coordinates\": {\"latitude\": \"-52.9348\", \"longitude\": \"-39.4948\"}}, \"registered\": {\"age\": 12, \"date\": \"2011-07-25T15:26:30.727Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(23,'Aleksa Stepanović','2','Javorova','aleksa.stepanovic@example.com',15,2,'D','{\"id\": {\"name\": \"SID\", \"value\": \"372028292\"}, \"dob\": {\"age\": 45, \"date\": \"1978-07-29T12:25:15.408Z\"}, \"nat\": \"RS\", \"cell\": \"060-7860-478\", \"name\": {\"last\": \"Stepanović\", \"first\": \"Aleksa\", \"title\": \"Miss\"}, \"email\": \"aleksa.stepanovic@example.com\", \"login\": {\"md5\": \"c8aedfa753331949194d36723d4ecdcf\", \"salt\": \"3H4joRHs\", \"sha1\": \"25399f1451b1161e4dd1caa9e08a820fe1eebf21\", \"uuid\": \"a160b805-046d-4049-88d3-201bc3a848bf\", \"sha256\": \"a0366f462d43de209ca48a369d4763fe6c3f6d5316dc58449816f2ba083b01c8\", \"password\": \"blaine\", \"username\": \"heavytiger971\"}, \"phone\": \"027-6073-032\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/33.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/33.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/33.jpg\"}, \"location\": {\"city\": \"Vlasotince\", \"state\": \"Nišava\", \"street\": {\"name\": \"Javorova\", \"number\": 9022}, \"country\": \"Serbia\", \"postcode\": 85802, \"timezone\": {\"offset\": \"0:00\", \"description\": \"Western Europe Time, London, Lisbon, Casablanca\"}, \"coordinates\": {\"latitude\": \"39.3309\", \"longitude\": \"179.3719\"}}, \"registered\": {\"age\": 16, \"date\": \"2008-02-18T18:43:24.503Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(24,'Pavati Moolya','2','S.A Rd','pavati.moolya@example.com',17,1,'E','{\"id\": {\"name\": \"UIDAI\", \"value\": \"072125484216\"}, \"dob\": {\"age\": 70, \"date\": \"1953-07-22T12:13:38.032Z\"}, \"nat\": \"IN\", \"cell\": \"9895178617\", \"name\": {\"last\": \"Moolya\", \"first\": \"Pavati\", \"title\": \"Ms\"}, \"email\": \"pavati.moolya@example.com\", \"login\": {\"md5\": \"298f14e8414ba59bedf2fe7190f44e6d\", \"salt\": \"1QXlUnaj\", \"sha1\": \"5de513e467333911d3b2d42f2299e2012d851d26\", \"uuid\": \"25eff52b-2ef6-415f-af21-e63788137280\", \"sha256\": \"685a4f48f9330c80b817375fab6fc70a80b8682d20871b2aacbc643acd77a378\", \"password\": \"zorro1\", \"username\": \"greenkoala343\"}, \"phone\": \"7733674022\", \"gender\": \"female\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/women/69.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/women/69.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/women/69.jpg\"}, \"location\": {\"city\": \"Amaravati\", \"state\": \"Chandigarh\", \"street\": {\"name\": \"S.A Rd\", \"number\": 7396}, \"country\": \"India\", \"postcode\": 19507, \"timezone\": {\"offset\": \"+7:00\", \"description\": \"Bangkok, Hanoi, Jakarta\"}, \"coordinates\": {\"latitude\": \"20.6508\", \"longitude\": \"-41.8431\"}}, \"registered\": {\"age\": 14, \"date\": \"2009-05-26T04:18:38.202Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20'),
	(25,'Jorge León','1','Calle de La Luna','jorge.leon@example.com',15,2,'D','{\"id\": {\"name\": \"DNI\", \"value\": \"31855463-I\"}, \"dob\": {\"age\": 31, \"date\": \"1993-03-09T06:49:43.422Z\"}, \"nat\": \"ES\", \"cell\": \"605-257-494\", \"name\": {\"last\": \"León\", \"first\": \"Jorge\", \"title\": \"Mr\"}, \"email\": \"jorge.leon@example.com\", \"login\": {\"md5\": \"5571a01a0411f92784665398701d91d2\", \"salt\": \"AMLLT8KC\", \"sha1\": \"1bab0b9b7ee48b423487cabc14c4847d6dccd4a7\", \"uuid\": \"9781962a-acd2-4213-bbd2-45921762ceba\", \"sha256\": \"b7fa963bd7cf734b5dcd2af04b82e5a0d73e8259c3be241922f63e1bd251d5c3\", \"password\": \"dogs\", \"username\": \"happykoala839\"}, \"phone\": \"916-125-833\", \"gender\": \"male\", \"picture\": {\"large\": \"https://randomuser.me/api/portraits/men/66.jpg\", \"medium\": \"https://randomuser.me/api/portraits/med/men/66.jpg\", \"thumbnail\": \"https://randomuser.me/api/portraits/thumb/men/66.jpg\"}, \"location\": {\"city\": \"Bilbao\", \"state\": \"Castilla y León\", \"street\": {\"name\": \"Calle de La Luna\", \"number\": 2207}, \"country\": \"Spain\", \"postcode\": 43150, \"timezone\": {\"offset\": \"+3:00\", \"description\": \"Baghdad, Riyadh, Moscow, St. Petersburg\"}, \"coordinates\": {\"latitude\": \"-67.3691\", \"longitude\": \"-16.6149\"}}, \"registered\": {\"age\": 3, \"date\": \"2021-04-02T17:13:55.147Z\"}}','2024-04-18 11:52:20','2024-04-18 11:52:20');

/*!40000 ALTER TABLE `hasil_response` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jenis_kelamin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jenis_kelamin`;

CREATE TABLE `jenis_kelamin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `jenis_kelamin` WRITE;
/*!40000 ALTER TABLE `jenis_kelamin` DISABLE KEYS */;

INSERT INTO `jenis_kelamin` (`id`, `kode`, `jenis_kelamin`, `created_at`, `updated_at`)
VALUES
	(1,'1','laki-laki',NULL,NULL),
	(2,'2','perempuan',NULL,NULL);

/*!40000 ALTER TABLE `jenis_kelamin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(5,'2024_04_18_095852_create_hasil_responses_table',2),
	(6,'2024_04_18_102246_create_jenis_kelamins_table',3),
	(7,'2024_04_18_102350_create_profesis_table',3),
	(11,'2024_04_18_125234_create_barangs_table',4),
	(12,'2024_04_18_125633_create_kategori_barangs_table',4),
	(13,'2024_04_18_125721_create_satuan_barangs_table',4);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tabel_barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tabel_barang`;

CREATE TABLE `tabel_barang` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd_satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user_insert` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tabel_barang` WRITE;
/*!40000 ALTER TABLE `tabel_barang` DISABLE KEYS */;

INSERT INTO `tabel_barang` (`id`, `kode`, `kd_kategori`, `nama`, `jumlah`, `kd_satuan`, `id_user_insert`, `created_at`, `updated_at`)
VALUES
	(1,'212332','kts','tes','21','m','221','2024-04-18 13:36:23','2024-04-18 13:36:23'),
	(2,'sdawad','bds','tes','21','m','2','2024-04-18 13:47:45','2024-04-18 13:47:45'),
	(3,'662127','bds','tes','2','m','2','2024-04-18 14:01:07','2024-04-18 14:01:07');

/*!40000 ALTER TABLE `tabel_barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tabel_kategori_barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tabel_kategori_barang`;

CREATE TABLE `tabel_kategori_barang` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tabel_kategori_barang` WRITE;
/*!40000 ALTER TABLE `tabel_kategori_barang` DISABLE KEYS */;

INSERT INTO `tabel_kategori_barang` (`id`, `kode`, `nama`, `created_at`, `updated_at`)
VALUES
	(1,'kts','kitchen set',NULL,NULL),
	(2,'bds','bedroom set',NULL,NULL),
	(3,'fms','Family Room Set',NULL,NULL);

/*!40000 ALTER TABLE `tabel_kategori_barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tabel_profesi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tabel_profesi`;

CREATE TABLE `tabel_profesi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_profesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tabel_profesi` WRITE;
/*!40000 ALTER TABLE `tabel_profesi` DISABLE KEYS */;

INSERT INTO `tabel_profesi` (`id`, `kode`, `nama_profesi`, `created_at`, `updated_at`)
VALUES
	(1,'A','Petani',NULL,NULL),
	(2,'B','Teknisi',NULL,NULL),
	(3,'C','Guru',NULL,NULL),
	(4,'D','Nelayan',NULL,NULL),
	(5,'E','Seniman',NULL,NULL);

/*!40000 ALTER TABLE `tabel_profesi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tabel_satuan_barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tabel_satuan_barang`;

CREATE TABLE `tabel_satuan_barang` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tabel_satuan_barang` WRITE;
/*!40000 ALTER TABLE `tabel_satuan_barang` DISABLE KEYS */;

INSERT INTO `tabel_satuan_barang` (`id`, `kode`, `nama`, `created_at`, `updated_at`)
VALUES
	(1,'kg','kilogram',NULL,NULL),
	(2,'m','meter',NULL,NULL),
	(3,'lt','liter',NULL,NULL);

/*!40000 ALTER TABLE `tabel_satuan_barang` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
