-- run mysql -u root -p < schema.sql to create Database and tables
-- SELECT * FROM info ORDER BY RAND() LIMIT 1
DROP DATABASE IF EXISTS complete_menu;

CREATE DATABASE complete_menu;

USE complete_menu;

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `single_menu_item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_per_guest` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `menu` (`id`, `main_description`, `single_menu_item`, `price_per_guest`) VALUES (1, 'Qui ratione distinctio temporibus iure minima aperiam laudantium. Labore sequi libero est maiores expedita. Ipsum omnis quibusdam ad ut doloribus nam quo. Repellat molestias qui est dolores totam sapiente. Non qui repellat esse aliquid et nihil.', 'Voluptates', 743);
INSERT INTO `menu` (`id`, `main_description`, `single_menu_item`, `price_per_guest`) VALUES (2, 'Iusto qui nemo dicta quo quis voluptatem. In est iusto doloremque quo. Facere dolore quia aut voluptate sed iure possimus voluptatum.', 'Ex', 364362934);
INSERT INTO `menu` (`id`, `main_description`, `single_menu_item`, `price_per_guest`) VALUES (3, 'Provident est quo tenetur unde. Excepturi aspernatur corporis maxime dolorem sunt quo. Laborum voluptate qui autem impedit nemo qui explicabo. Ut soluta autem id aut perspiciatis pariatur saepe.', 'Quaerat', 70252454);
INSERT INTO `menu` (`id`, `main_description`, `single_menu_item`, `price_per_guest`) VALUES (4, 'Neque consequuntur aut nesciunt. Quae perferendis velit dolore maiores in rerum sint. Eius veritatis asperiores dolore voluptate voluptas laudantium. Sunt asperiores beatae qui reprehenderit aut iste.', 'Molestias', 18437);
INSERT INTO `menu` (`id`, `main_description`, `single_menu_item`, `price_per_guest`) VALUES (5, 'Et dolorum assumenda tempora. Atque maiores delectus dolor earum dolores voluptas commodi.', 'Expedita', 1);


DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dish_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `single_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `single_menu_id` (`single_menu_id`),
  CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`single_menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `related`;

CREATE TABLE `related` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuisine` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (1, 'Torp and Sons', 'Quis', 'East Eudora', 3, 'tmp//5429725bd999d57b0c8a4db37a8bfa5a.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (2, 'Friesen, Hoppe and Trantow', 'Tempora', 'Hassanport', 4, 'tmp//2f7de7e966c2367ebdd2e33f14200c77.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (3, 'Bode-Fahey', 'Nisi', 'New Jaylenview', 6, 'tmp//668cde4d6e65891f60763f84e88372e4.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (4, 'Schiller, Romaguera and Schoen', 'Eveniet', 'Thoratown', 5, 'tmp//6426f945a22f4b97c010514c7974f6fc.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (5, 'Little-Smitham', 'Quia', 'Martaburgh', 3, 'tmp//5d283ee293e795f922d1609c830c10ad.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (6, 'Bauch-Bruen', 'Id', 'Littelview', 5, 'tmp//ba1f97c85077fe1df7eb462714c19f5c.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (7, 'Balistreri, Schultz and Wisoky', 'Aab', 'Connellystad', 8, 'tmp//914ed837b860ee59bd297a913df438f6.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (8, 'Beer, Anderson and Collier', 'Nulla', 'East Adrain', 1, 'tmp//45511ee43ef400644429b98d09dbacc7.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (9, 'Walsh-Turcotte', 'Consequunturaa', 'South Jailynview', 9, 'tmp//d5fd0104e689fef0c18df5ae70e61b0a.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (10, 'Greenfelder Group', 'Nostrumass', 'Runolfssonfort', 2, 'tmp//f00730a17a99c24cb171b6d8f756e156.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (11, 'Cassin, Weissnat and Bauch', 'Enim', 'North Joshuachester', 8, 'tmp//b08192e3ec19befaa424f03a78466057.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (12, 'Kuhlman-Torp', 'Quodalia', 'East Ceasarmouth', 2, 'tmp//60c2f365bc4a68d3fa93ebd9992389ad.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (13, 'Reichel, Vandervort and Sawayn', 'Magnam', 'Port Cassandrafort', 1, 'tmp//51405d885f5b8e079f7e68ca0f5a7d1c.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (14, 'Leffler-Hyatt', 'Etumas', 'Wittingbury', 4, 'tmp//428640fbb0b13b2199be48cf26025528.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (15, 'Thiel-Carroll', 'Repudiandae', 'Port Audreanneberg', 9, 'tmp//4d0e66bd1613c9b4908f35ce5aa8ce74.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (16, 'Balistreri, Koepp and Hayes', 'Non', 'North Wilhelmineland', 9, 'tmp//81b51239830b363fc93b118dbdc0fcdf.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (17, 'Predovic Group', 'Facere', 'Charlieport', 8, 'tmp//88480300f2c5799d5481cf27452c98be.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (18, 'Koelpin LLC', 'Quisima', 'Roselynfurt', 5, 'tmp//c99a9393352db288f70eab1c2d6c32c1.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (19, 'Cummings and Sons', 'Namjoon', 'Lake Lavern', 6, 'tmp//356b48dd049feb5cf4ed4f4a189a7807.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (20, 'Torp-Auer', 'Praesentium', 'Port Cleoton', 4, 'tmp//3c85bd95b495caad8707b7f49ad957cb.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (21, 'Marvin, Kuhic and Wiegand', 'Nisivila', 'New Adeline', 2, 'tmp//5ab1945bc42d4e860eee4043c8d0bbe7.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (22, 'O\'Reilly-Wilkinson', 'nulla', 'Juvenalview', 5, 'tmp//2bbf8263e237da4abb75ad12e362fa0e.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (23, 'Veum, Halvorson and Batz', 'nihil', 'Lylaside', 4, 'tmp//042fc8b2d711ab86dba8c0ee480544e9.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (24, 'Schimmel, Pollich and Mayer', 'officia', 'West Estastad', 6, 'tmp//9626bcbb4bbe961ab5385baa70b60128.jpg');
INSERT INTO `related` (`id`, `name`, `cuisine`, `location`, `reviews`, `image`) VALUES (25, 'Frami, Collins and Treutel', 'quidem', 'West Israel', 7, 'tmp//0203930eac47812422a556110cdc8bdb.jpg');




INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (1, 'Hic', 'Adipisci accusantium voluptatem sit voluptates.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (2, 'Numquam', 'Qui nemo tenetur quia vel sed corrupti sit.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (3, 'Provident', 'Aspernatur reiciendis voluptates voluptatem quasi.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (4, 'Rerum', 'A tenetur cupiditate qui non nihil amet fugit.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (5, 'Nesciunt', 'Aliquid aut corrupti veniam reprehenderit vel quia.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (6, 'Sed', 'Cupiditate debitis tempore nobis accusantium distinctio molestias aperiam.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (7, 'Dolor', 'Similique et id qui et qui odit perspiciatis officia.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (8, 'Est', 'Incidunt aliquid quo tempora.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (9, 'Ett', 'Quia voluptatum sed sed odio voluptatem.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (10, 'Asperiores', 'Provident tempora et molestias corporis odit.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (11, 'Sit', 'Dignissimos et assumenda quisquam blanditiis reprehenderit.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (12, 'Numquam', 'Assumenda est dolore quam.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (13, 'Neniam', 'Et reprehenderit eius repellat aut esse.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (14, 'Ea', 'Laboriosam illo accusantium qui optio.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (15, 'Aperiam', 'Autem minima et doloribus ipsam aut voluptas.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (16, 'Iure', 'Saepe unde distinctio tempora molestias sit est ad.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (17, 'Aaut', 'Aliquam eveniet nobis debitis fuga et ipsum a error.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (18, 'Et', 'Libero impedit voluptas nostrum quae dolorum.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (19, 'Quis', 'Placeat numquam consectetur pariatur recusandae.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (20, 'Animi', 'Maiores perspiciatis incidunt tenetur optio adipisci sit.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (21, 'cupiditate', 'Facilis beatae repellat ut aut aut illo eum pariatur.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (22, 'Dicta', 'Enim sed natus voluptas quae veniam ducimus officia.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (23, 'Quia', 'Dolores sint magnam commodi sit ex nesciunt.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (24, 'Consectetur', 'Nihil omnis maiores velit tempore eveniet doloribus ut maxime.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (25, 'Velit', 'Aliquid aut veritatis quod mollitia nam.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (26, 'Suscipit', 'Odio necessitatibus dicta enim voluptas adipisci aut voluptatibus itaque.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (27, 'Cum', 'Nulla earum ab hic ea.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (28, 'Consequatur', 'Sunt est ut placeat qui nulla non dolor.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (29, 'Est', 'Aut perferendis exercitationem deserunt.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (30, 'Aut', 'Molestias a sed voluptate tenetur sit voluptatem ab molestiae.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (31, 'Magni', 'Cumque maxime amet omnis qui occaecati fugiat.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (32, 'Cumque', 'Modi nihil nemo modi omnis nostrum animi sint.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (33, 'Qui', 'Excepturi dicta non neque vel debitis in.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (34, 'Dolores', 'Mollitia sint dolorem eaque consequatur aut.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (35, 'Adipisci', 'Sunt quia dicta ut debitis qui.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (36, 'Odio', 'Id dolore magni aut aut praesentium.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (37, 'Vitae', 'Non molestiae id minima et delectus nemo.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (38, 'Voluptates', 'Necessitatibus tenetur rerum id sit deserunt ad.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (39, 'Expedita', 'Beatae eos omnis neque quaerat ut modi sed vel.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (40, 'Tempora', 'Unde neque voluptatem ex laudantium est sint et.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (41, 'Eaque', 'Et rerum rerum et mollitia qui quam mollitia qui.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (42, 'Nihil', 'Porro et magnam non ullam reprehenderit.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (43, 'Eius', 'Est reprehenderit corrupti et nulla voluptatibus.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (44, 'Quia', 'Aut accusamus veritatis dolorem atque distinctio impedit ex.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (45, 'Sequi', 'Consectetur culpa exercitationem enim ut velit id asperiores.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (46, 'Aest', 'Alias non et quia.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (47, 'Eeaat', 'Magni ab sed dolores quaerat voluptate.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (48, 'In', 'Corporis est dolor est.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (49, 'Doolorem', 'Et ex voluptatem sapiente ducimus qui quisquam optio.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (50, 'Exxcepturi', 'Aut at sequi animi dolores aut.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (51, 'Tempora', 'Assumenda alias ut culpa officia fugiat.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (52, 'Expedita', 'Repudiandae dolorem ipsum qui dolorem ut blanditiis.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (53, 'Intoma', 'Placeat amet hic qui maiores sint.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (54, 'Reprehenderit', 'Officiis voluptates consectetur quia animi ut.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (55, 'Quia', 'Est sint vero sint beatae.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (56, 'Aotut', 'Animi necessitatibus eveniet autem et inventore tenetur.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (57, 'Zet', 'Laborum doloribus fugit eum dolorem laboriosam.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (58, 'Nihil', 'Consectetur labore ad in sint.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (59, 'Vitae', 'Aut et assumenda eos rerum quis similique.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (60, 'Quam', 'Laudantium labore reiciendis sit vel.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (61, 'Qarum', 'Cupiditate sapiente nam dolorem nihil.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (62, 'Sauit', 'Culpa quia et asperiores dolores odio beatae ab sit.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (63, 'Consequuntur', 'Temporibus recusandae numquam ut quia aliquid id officia.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (64, 'Jutt', 'Laudantium suscipit asperiores quis.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (65, 'Itaque', 'Aut sunt voluptatibus quia nulla sit optio.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (66, 'Rem', 'Voluptatibus sit sapiente dolore.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (67, 'Qaauia', 'Enim rerum vel pariatur minima.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (68, 'Wafiu', 'Ipsam reprehenderit et est veritatis quasi suscipit eum.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (69, 'Iligendi', 'Beatae quis nesciunt facilis sed reiciendis.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (70, 'Estoma', 'Omnis ullam suscipit aut est numquam quasi.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (71, 'Quaert', 'At maiores omnis vero eligendi aperiam eaque.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (72, 'Lait', 'Quae atque quos ea.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (73, 'But', 'Commodi voluptate ipsum illo est veniam exercitationem tempora ut.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (74, 'Omnista', 'Non qui accusantium id doloremque aut vel quaerat.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (75, 'Best', 'Dolor ea nihil minima minima ipsam aliquid.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (76, 'Eius', 'Quia nostrum tempore placeat consequatur repellendus fugit vel.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (77, 'Teet', 'Voluptas iste laudantium quo quod voluptatibus dolores.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (78, 'Eumgo', 'Id et repellat et debitis quidem repellendus.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (79, 'Illumo', 'Sint explicabo et accusantium accusantium veniam et accusantium omnis.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (80, 'Laifu', 'Architecto expedita iusto sit.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (81, 'Blanditiis', 'Placeat est sit tenetur qui.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (82, 'Seeet', 'Officiis nostrum blanditiis doloribus eligendi.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (83, 'Qaauaerat', 'Maiores voluptatem dolor quia sunt et consectetur fugiat.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (84, 'Voluptates', 'Aliquid veniam quaerat sed aliquid totam cum facilis.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (85, 'Harum', 'Assumenda ratione quas et accusamus maxime sit magni.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (86, 'Iure', 'Occaecati praesentium aliquam quos reiciendis quod.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (87, 'Velit', 'Hic aut facilis voluptatibus aut.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (88, 'Illo', 'Sapiente aperiam est ipsa facere provident incidunt officia in.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (89, 'Suscipit', 'Nulla provident deleniti sed error ea.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (90, 'Minus', 'Aut qui qui aut eius cupiditate maxime corrupti.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (91, 'Eiustuvo', 'Possimus architecto saepe deleniti voluptas cum nulla.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (92, 'Autut', 'Quasi optio mollitia natus animi quas ea fuga necessitatibus.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (93, 'Mollitia', 'Dolor voluptatum similique molestiae totam rerum aut omnis.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (94, 'Accusamus', 'Ullam sequi quasi fugit est.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (95, 'Consectetur', 'Odit quos alias qui illo.', 5);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (96, 'Omnisss', 'Debitis impedit possimus veniam deserunt soluta voluptatem officia.', 1);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (97, 'Impedit', 'Voluptas fugiat asperiores dolores.', 2);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (98, 'Quit', 'Atque a aut aut voluptate itaque corrupti.', 3);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (99, 'Rembo', 'Veniam placeat velit inventore est quidem repellendus dolore fuga.', 4);
INSERT INTO `menu_items` (`id`, `dish_name`, `dish_description`, `single_menu_id`) VALUES (100, 'Jackie', 'Hic et harum nostrum illo esse.', 5);
