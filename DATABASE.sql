-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 11:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merch_bca`
--
CREATE DATABASE IF NOT EXISTS `merch_bca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `merch_bca`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `description`, `name`) VALUES
(1, 'A book is a set of printed sheets of paper held together between two covers. The sheets of paper are usually covered with a text, language and illustrations.', 'Book'),
(2, 'Electronics is defined as devices run by electric power or the field of studying such items. An example of electronics are radios, computers, and televisions. noun. 2. (physics) The study and use of electrical devices that operate by controlling the flow of electrons or other electrically charged particles.', 'Electronic'),
(3, 'Fashion is a form of self-expression and autonomy at a particular period and place and in a specific context, of clothing, footwear, lifestyle, accessories, makeup, hairstyle, and body posture.', 'Fashion'),
(4, 'Music is a form of art that uses sound organised in time. Music is also a form of entertainment that puts sounds together in a way that people like, find interesting or dance to. Most music includes people singing with their voices or playing musical instruments, such as the piano, guitar, drums or violin.', 'Music'),
(5, 'Gaming refers to playing electronic games, whether through consoles, computers, mobile phones or another medium altogether. Gaming is a nuanced term that suggests regular gameplay, possibly as a hobby. Although traditionally a solitary form of relaxation, online multiplayer video games have made gaming a popular group activity as well.', 'Gaming'),
(6, 'The multifaceted concept of beauty shows that perception can change depending on the individual, society and/or historical period. In addition, previous studies have attributed beauty and attractiveness to relatively stable face and body characteristics such as shape and symmetry.', 'Beauty'),
(7, 'The noun stationery can be countable or uncountable. In more general, commonly used, contexts, the plural form will also be stationery. However, in more specific contexts, the plural form can also be stationeries e.g. in reference to various types of stationeries or a collection of stationeries.', 'Stationary'),
(8, 'Substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.', 'Food'),
(9, 'In the United States, one \"standard\" drink (or one alcoholic drink equivalent) contains roughly 14 grams of pure alcohol, which is found in: 12 ounces of regular beer, which is usually about 5% alcohol. 5 ounces of wine, which is typically about 12% alcohol. 1.5 ounces of distilled spirits, which is about 40% alcohol.', 'Drink'),
(10, 'Carpentry may be defined as the process of making wooden components. It starts from a marketable form of wood and ends with a finished product. It Deals with the building work, furniture, cabinet marking, etc., joinery, i.e., preparation of joints are one of the important operations in all wood-works.\r\n', 'Carpentry'),
(11, 'Travel refers to the activity of going on a long journey. Tourism also refers to travel, but there is a specific purpose in tourism. It refers to traveling to a place for pleasure. This is the main difference between travel and tourism.', 'Tour & Travel'),
(12, 'The definition of automotive is moved by a self-contained motor or engine or something that has to do with automobiles. A car is an example of something that is automotive. Moving by itself; self-propelling or self-propelled.', 'Automotive');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(600) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `product_numb` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `image`, `name`, `product_numb`, `stock`) VALUES
(1, 'Book', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//104/MTA-8427299/penerbit_haru_i_saw_the_same_dream_again_-_sumino_yoru_full02_kk1x5vhg.jpg', 'I Saw The Same Dream Again', 100, 25),
(2, 'Book', 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/5/17/d0604f82-94e3-4194-987e-07638e69929a.jpg', 'The Shadow and Bone Trilogy Boxed Set', 100, 13),
(3, 'Electronic', 'https://cf.shopee.co.id/file/8af30358455c5d022151aedb46990c44', 'TV LED Smart Android', 101, 15),
(4, 'Electronic', 'https://s2.bukalapak.com/bukalapak-kontenz-production/content_attachments/73037/original/Notale_Robot_Vacuum_Cleaner.jpg', 'Vacuum Cleaner Robot', 101, 8),
(5, 'Fashion', 'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/10/21/fe2fbad7-9e65-45a9-8f17-011983325f15.jpg', 'Cascade Wallet - Sling Pouch', 103, 50),
(6, 'Fashion', 'https://cf.shopee.co.id/file/0dbb7b1fef342592d685343decd60ec6', 'Daster Wanita Kekinian', 103, 82),
(7, 'Music', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-4500737/yamaha_yamaha_fx310_gitar_akustik_elektrik__full02_ohznlugy.jpg', 'Gitar Yamaha Akustik', 104, 34),
(8, 'Music', 'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/10/17/3bbe60e0-0521-45c5-a370-0a82e7b92954.jpg', 'Innovo Mic Microphone', 104, 23),
(9, 'Gaming', 'https://thermaltake.azureedge.net/pub/media/catalog/product/cache/6bf0ed99c663954fafc930039201ed07/x/f/xfit_black-red01.jpg', 'Gaming Chair', 105, 120),
(10, 'Gaming', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-8351452/oem_gaming-keyboard-mechanical-keyboard-104-key-rgb-led-backlit-for-pc-laptop_full01.jpg', 'Keyboard Mechanical RGB', 105, 144),
(11, 'Beauty', 'https://cf.shopee.co.id/file/9bc5ddd456c71ef46bf2ec49ddb6676e', 'Lipstick Maybeline Red', 106, 203),
(12, 'Beauty', 'https://image.femaledaily.com/dyn/640/images/prod-pics/4b7196dc07ae0adbaff5a135c9c33686.jpg', 'Lip Glow Serum Salsa', 106, 143),
(13, 'Stationary', 'https://images.tokopedia.net/img/cache/700/product-1/2019/11/25/256232692/256232692_f30be4fe-f789-4cce-a68d-f7c872b7d5d1_2048_2048.jpg', 'Pulpen Gel Kenko', 107, 1455),
(14, 'Stationary', 'https://images.tokopedia.net/img/cache/500-square/product-1/2020/8/5/77392862/77392862_1fd8544b-0dd2-4afc-94e6-94b25c772968_700_700', 'Penggaris Joyko 30cm', 107, 134),
(15, 'Food', 'https://cf.shopee.co.id/file/b10329e3e988906be111c3df71920606', 'Baso Aci Goreng', 108, 445),
(16, 'Food', 'https://cf.shopee.co.id/file/9daa0425402124a6b047f8a5a4ad4b02', 'Chitato Sapi Panggang 68gr', 108, 1234),
(17, 'Drink', 'https://imgsrv2.voi.id/U2wtUJTb-Tl3VoukbZsloL1ror9KXD6Ga65W4sndONk/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy82NDMxNS8yMDIxMDcwNTEzMjMtbW9iaWxlLmpwZw.jpg', 'Bear Brand Milk', 109, 155),
(18, 'Drink', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//97/MTA-7288153/equil_equil_sparkling_mineral_water_-380_ml-_full02_fwdrkogj.jpg', 'Equil Sparkling Mineral Water', 109, 522),
(19, 'Carpentry', 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/9/18/4259161f-f22b-4531-81c9-8e258a5a7b0b.jpg', 'Angle Gerinda/Mesin Gerinda Tangan', 110, 148),
(20, 'Carpentry', 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/5/24/628f8ca5-5e78-4938-9ba2-22667dab20f4.jpg?ect=4g', 'Mesin Bor/Impact Drill Listrik Orion', 110, 58),
(21, 'Tour & Travel', 'https://cf.shopee.co.id/file/3bc845ded1fb15dcbfc49c92d96fd4fa', 'Promo Tiket Universal Studio Singapore', 111, 1455),
(22, 'Tour & Travel', 'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/10/16/733ea15e-2b21-49e3-b91e-2a4d160dce3b.jpg', 'Voucher Langganan Shuttle Cititrans Travel Surabaya/Malang', 111, 568),
(23, 'Automotive', 'https://s1.bukalapak.com/img/19549112102/large/data.jpeg', 'KIT Auto Glass Cleaner Pump 500ml', 112, 677),
(24, 'Automotive', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//88/MTA-6385100/v-kool_v-kool_kaca_film_mobil_for_toyota_fortuner_full02_r7lg6z96.jpg', 'Kaca Film V-KOOL Totoya Fortuner', 112, 145);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(75) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `full_name`, `password`) VALUES
(1, 'felix@gmail.com', 'Felix Setiawan', '$2a$10$FjHCBJYCwpDVRu3v4mfSRuqjgED2RY1WYDm/sK0b5dcwYUQqnOkdm'),
(2, 'admin@gmail.com', 'Administrator', '$2a$10$GEgQF3CroUDqoAzb11teN.BVZOi9YhzQGtnHGuszqeiUCdieRN5na'),
(3, 'ravelino@gmail.com', 'Ravelino Sebastian Santoso', '$2a$10$1lBDe9A66uY6gmOdLq0vEe.UO7c1mRW7jcM33L517050w3JQhYVTy'),
(4, 'varrel@gmail.com', 'Varrel Marcellius', '$2a$10$TS/6nDwCsW6uCoCQmBkS4OOYnliOvlb.M6392PzIKAg6d/c27TCoi'),
(5, 'johanes@gmail.com', 'Johanes Kristiadi', '$2a$10$z8lAMqVY2MRp1sxQtYMPeeEEmtE/bHURFciHXsOQh/3DvgqxFwGK6'),
(6, 'vincentius@gmail.com', 'Vincentius Alexander', '$2a$10$siqkoSpfsKwmZIjRfK1KA.e3z4lu1n3NMEZlFHJgCk.1seHkb4kkK'),
(7, 'philip@gmail.com', 'Philip Alexander', '$2a$10$Otjo0oT10n3HrUTRNrAGFuIiocPbbvwRlZ5NnZfOuOiVAzvn1fkxK'),
(8, 'made@gmail.com', 'Made Adi Adriyana', '$2a$10$vpSt9/wJCDKJU69YRJiQwOeCMYW/eRrCEOsIpyaEwYmFsddfb8acy'),
(9, 'raehan@gmail.com', 'Raehan Afrizal Wicaksono', '$2a$10$LsF2fmr8VNCAqOu3zTqp0OUM55AjuuCuaqWejUB1ZGSQf.y6Blg3u'),
(10, 'ilyas@gmail.com', 'Ilyas Mahfud', '$2a$10$u4w0XJWlYJvOgWqYBPB.pOsdGFCpH1h6Bfy/OEBtuyASewOY3ex.W'),
(11, 'afiyah@gmail.com', 'Afiyah Salsabila Arief', '$2a$10$yJtMbxRm7BFHQNNIiZO9COnr9.E7dnsswLrg5yvYCr8SnSaOIgD5K'),
(12, 'amira@gmail.com', 'Amira Salsabila', '$2a$10$6N9n2qHx.Pe3VqQlOh.DhurVLT5C.lti2xiWPeMswOLnTwyxHi31W'),
(13, 'ahmad@gmail.com', 'Ahmad Fahlepie', '$2a$10$elJa/YkBw6p/GQUzPsV2qOd71y0gDh0tGnqVra7K.1znXzv9CKiiS'),
(14, 'filbert@gmail.com', 'Filbert Amadea Shan Noel', '$2a$10$mDSP.4xmak7lNs5UXtp4.uIN.9yzCYHNj3okpKHfa/M35R2h4n3bS'),
(15, 'baihaqi@gmail.com', 'Baihaqi Luhur Pangestika', '$2a$10$FzJaapnWrDVLVB8Id/vxd.tGJJn4Ximc1S/RbVitSYUFBQvcKxEEC'),
(16, 'tommy@gmail.com', 'Tommy', '$2a$10$5ihcmkkSsae8BVH7hA.6.O5rDDS.IckHk4p9wvSpoUP6waDS4j4De'),
(17, 'gerry@gmail.com', 'Gerry Guinardi', '$2a$10$sKRqrR2k4rpv5dwGYlTR..KkbxqC1Eoty2k/96/wa4cOvhMKTIoX.'),
(18, 'rifqi@gmail.com', 'Rifqi Muhammad Aziz', '$2a$10$/NZ079MIDgjQDSVXHkz3H.CMnjKNGCTbrPBtwFbs9irWzrn1uA93e'),
(19, 'farrel@gmail.com', 'Farrel Istihsan Aditya', '$2a$10$EC7MqcasHvtE5eCpIchMYuasIFV2RVD3psFZFffkoPctUCas0SF1m'),
(20, 'cyntia@gmail.com', 'Cintya Claudia', '$2a$10$G4Gz/k9IWjiygGWtt6VB7eSVqjylBVX3EC.L1jyR..DUW06oZw40.'),
(21, 'tri@gmail.com', 'Tri Jaka Pamungkas', '$2a$10$dBdtoYpLd7aV0JKiw.yaaugHNAk/hICB9MDcRYYq0tFIcICYT7QiS'),
(22, 'henry@gmail.com', 'Henry Hartono', '$2a$10$SHrnPz8sRT4QGwxptvjS8eTpabnrckrdCR5KDrqhRhNV6/9synXhi'),
(23, 'lambok@gmail.com', 'Lambok Tulus Simamora', '$2a$10$qzLRd2cyn88q4sXT/M5C8.Xbuyzqk.S5D5MxRHdOXhghceGuYnm6u'),
(24, 'atria@gmail.com', 'Atria Dika Puspita Tobing', '$2a$10$ha6YrDZpePFFTWv0B.1T7e6p1Ycw8GHPGGWbMXDAAonyAXGSTSKV.'),
(25, 'michael@gmail.com', 'Michael Alfonso', '$2a$10$hV/ikad6AUmDdS76Xw1C2OpuhN0lSp71Zq41VP6jZXYxa1rN.1Kby'),
(26, 'firman@gmail.com', 'Firman Abdul Jabar', '$2a$10$PCvhayHsddDT6n0B4vCdr.P8DYLtMmtwUymoG98PNJuGonOleWz.e'),
(27, 'fariz@gmail.com', 'Fariz Prasetya Putra', '$2a$10$gHJbXxs1IfyuTVPvjBDHMe09mVEVntKu4n8u24575oi3WUq8qq4/a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_t8o6pivur7nn124jehx7cygw5` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
