-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2019 at 04:25 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.3.9-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(30) NOT NULL,
  `genre` enum('fantasy','sci-fi','western','romance','thriller','mystery') NOT NULL,
  `coverPhoto` varchar(200) DEFAULT NULL,
  `description` varchar(2000) NOT NULL,
  `pageNumber` int(11) DEFAULT NULL,
  `ageRestriction` enum('child','teen','adult') DEFAULT NULL,
  `rentalDate` datetime DEFAULT NULL,
  `addedByUserId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `rentedByUserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `coverPhoto`, `description`, `pageNumber`, `ageRestriction`, `rentalDate`, `addedByUserId`, `createdAt`, `updatedAt`, `rentedByUserId`) VALUES
(0, 'The Water Dancer', 'Ta-Nehisi Coates', 'fantasy', 'https://prodimage.images-bn.com/pimages/9780399590597_p0_v5_s550x406.jpg', 'Young Hiram Walker was born into bondage. When his mother was sold away, Hiram was robbed of all memory of her—but was gifted with a mysterious power. Years later, when Hiram almost drowns in a river, that same power saves his life. This brush with death births an urgency in Hiram and a daring scheme: to escape from the only home he’s ever known.\r\n\r\nSo begins an unexpected journey that takes Hiram from the corrupt grandeur of Virginia’s proud plantations to desperate guerrilla cells in the wilderness, from the coffin of the Deep South to dangerously idealistic movements in the North. Even as he’s enlisted in the underground war between slavers and the enslaved, Hiram’s resolve to rescue the family he left behind endures.\r\n\r\nThis is the dramatic story of an atrocity inflicted on generations of women, men, and children—the violent and capricious separation of families—and the war they waged to simply make lives with the people they loved. Written by one of today’s most exciting thinkers and writers, The Water Dancer is a propulsive, transcendent work that restores the humanity of those from whom everything was stolen.', 121, 'adult', '2019-09-27 18:51:48', 1, '2019-09-27 18:17:48', '2019-09-27 18:17:48', 0),
(1, 'The Testaments', 'Margaret Atwood', 'fantasy', 'https://prodimage.images-bn.com/pimages/9780385545594_p0_v6_s550x406.jpg', 'When the van door slammed on Offred\'s future at the end of The Handmaid\'s Tale, readers had no way of telling what lay ahead for her—freedom, prison or death.\r\n\r\nWith The Testaments, the wait is over.\r\n\r\nMargaret Atwood\'s sequel picks up the story fifteen years after Offred stepped into the unknown, with the explosive testaments of three female narrators from Gilead.\r\n\r\n\"Dear Readers: Everything you\'ve ever asked me about Gilead and its inner workings is the inspiration for this book. Well, almost everything! The other inspiration is the world we\'ve been living in.\" —Margaret Atwood', 354, NULL, NULL, 2, '2019-09-27 17:26:37', '2019-09-27 17:26:37', NULL),
(2, 'Land of Wolves', 'Craig Johnson', 'western', 'https://prodimage.images-bn.com/pimages/9780525686958_p0_v1_s550x406.jpg', 'Attempting to recover from his harrowing experiences in Mexico, in Land of Wolves Wyoming Sheriff Walt Longmire is neck deep in the investigation of what could or could not be the suicidal hanging of a shepherd. With unsettling connections to a Basque family with a reputation for removing the legs of Absaroka County sheriffs, matters become even more complicated with the appearance of an oversize wolf in the Big Horn Mountains to which Walt finds himself feeling more and more empathetic.', NULL, 'teen', NULL, 2, '2019-09-27 19:21:47', '2019-09-27 19:21:47', NULL),
(3, 'Shane', ' Jack Schaefer', 'western', 'https://prodimage.images-bn.com/pimages/9780544239470_p0_v2_s550x406.jpg', 'I had lain in my bed thinking of our visitor out in the bunk in the barn. It scarce seemed possible that he was the same man I had first seen, stern and chilling in his dark solitude, riding up our road. Something in father, something not of words or of actions but of the essential substance of the human spirit, had reached out and spoken to him and he had replied to it and had unlocked a part of himself to us. He was far off and unapproachable at times even when he was right there with you.\r\nThe Starrett family’s life forever changes when a man named Shane rides out of the great glowing West and up to their farm in 1889. Young Bob Starrett is entranced by this stoic stranger who brings a new energy to his family. Shane stays on as a farmhand, but his past remains a mystery. Many folks in their small Wyoming valley are suspicious of Shane, and make it known that he is not welcome. But dangerous as Shane may seem, he is a staunch friend to the Starretts—and when a powerful neighboring rancher tries to drive them out of their homestead, Shane becomes entangled in the deadly feud.\r\nThis classic Western, originally published in 1949, is a profoundly moving story of the influence of a singular character on one boy’s life.', NULL, NULL, NULL, 4, '2019-09-27 21:51:06', '2019-09-27 21:51:06', NULL),
(4, 'Wrapped Up in You', 'Jill Shalvis', 'romance', 'https://prodimage.images-bn.com/pimages/9780062897763_p0_v6_s550x406.jpg', 'After a lifetime on the move, Ivy Snow is an expert in all things temporary—schools, friends, and way too many Mr. Wrongs. Now that she owns a successful taco truck in San Francisco and an apartment to call home, Ivy’s reinvented life is on solid ground. And she’s guarded against anything that can rock it. Like the realities of a past she’s worked hard to cover up. And especially Kel O’Donnell. Too hot not to set off alarms, he screams temporary. If only his whispers weren’t so delightfully naughty and irresistible.\r\n\r\nKel, an Idaho sheriff and ranch owner, is on vacay, but Ivy’s a spicy reason to give his short-term plans a second thought. Best of all, she’s a tonic for his untrusting heart, burned once and still in repair. But when Ivy’s past intrudes on a perfect romance, Kel fears that everything she’s told him has been a perfect lie. Now, if only Ivy’s willing to share, Kel will fight for a true love story.', 577, NULL, '2019-09-27 19:59:48', 2, '2019-09-27 19:33:48', '2019-09-27 19:33:48', 4),
(5, 'Flour in the Attic', 'Winnie Archer', 'mystery', 'https://prodimage.images-bn.com/pimages/9781496724397_p0_v1_s550x406.jpg', 'Just as Ivy’s brother Billy is about to get engaged to his beloved, a tragedy interrupts the happy moment. The body of longtime Santa Sofia resident Marisol Ruiz washes up on the beach—and it’s even more heartbreaking since Marisol’s father also recently died. But Marisol was a strong competitive swimmer. It seems unlikely there’s even a grain of truth to the theory that she accidentally drowned.\r\n \r\nAs Ivy gets to work helping her mentor, Olaya Solis, with the catering for Marisol’s funeral, she also teams up with her partners in detection—because if they want to prevent someone from getting away with murder, there’s no time for loafing . . .', NULL, 'child', '2019-09-28 08:37:17', 3, '2019-09-27 22:46:55', '2019-09-27 22:46:55', 4),
(6, 'Blue Moon', 'Lee Child', 'thriller', 'https://prodimage.images-bn.com/pimages/9780593156544_p0_v1_s550x406.jpg', 'Reacher is on a Greyhound bus, minding his own business, with no particular place to go, and all the time in the world to get there. Then he steps off the bus to help an old man who is obviously just a victim waiting to happen. But you know what they say about good deeds. Now Reacher wants to make it right.\r\n \r\nAn elderly couple have made a few well-meaning mistakes, and now they owe big money to some very bad people. One brazen move leads to another, and suddenly Reacher finds himself a wanted man in the middle of a brutal turf war between rival Ukrainian and Albanian gangs.\r\n \r\nReacher has to stay one step ahead of the loan sharks, the thugs, and the assassins. He teams up with a fed-up waitress who knows a little more than she’s letting on, and sets out to take down the powerful and make the greedy pay. It’s a long shot. The odds are against him. But Reacher believes in a certain kind of justice . . . the kind that comes along once in a blue moon.', 842, NULL, '2019-09-28 08:31:20', 5, '2019-09-20 19:22:47', '2019-09-20 19:22:47', 2),
(7, 'The Girl Who Lived Twice', 'David Lagercrantz', 'thriller', 'https://prodimage.images-bn.com/pimages/9780451494344_p0_v1_s550x406.jpg', 'Lisbeth Salander—the fierce, unstoppable girl with the dragon tattoo—has disappeared. She\'s sold her apartment in Stockholm. She\'s gone silent electronically. She\'s told no one where she is. And no one is aware that at long last she\'s got her primal enemy, her twin sister, Camilla, squarely in her sights.\r\n\r\nMikael Blomkvist is trying to reach Lisbeth. He needs her help unraveling the identity of a man who lived and died on the streets in Stockholm—a man who does not exist in any official records and whose garbled last words hinted at possible damaging knowledge of people in the highest echelons of government and industry. In his pocket was a crumpled piece of paper with Blomkvist\'s phone number on it.\r\n\r\nOnce again, Salander and Blomkvist will come to each other\'s aid, moving in tandem toward the truths they each seek. In the end, it will be Blomkvist—in a moment of unimaginable self-sacrifice—who will make it possible for Lisbeth to face the most important battle of her life, and, finally, to put her past to rest.', NULL, NULL, NULL, 3, '2019-09-27 20:45:30', '2019-09-27 20:45:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `age` int(7) NOT NULL,
  `fullName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephoneNr` varchar(15) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `age`, `fullName`, `email`, `telephoneNr`, `createdAt`, `updatedAt`) VALUES
(0, 'king123', '123456', 45, 'Pop Adrian', 'popking@gmail.com', '0040770159872', '2019-09-27 13:42:39', '2019-09-27 13:42:39'),
(1, 'musiclover', '123456', 15, 'Smith Thomas', 'thomasss@yahoo.com', '0040742569981', '2019-09-27 13:55:35', '2019-09-27 13:55:35'),
(2, 'fishman', '123456', 35, 'Wagner Izabella', 'wagner.izabella@gmail.com', '0040764985219', '2019-09-27 14:15:29', '2019-09-27 14:15:29'),
(3, 'reader', '123456', 13, 'Mezo Diana', 'puppyx@yahoo.com', '0040772669811', '2019-09-27 14:36:28', '2019-09-27 14:36:28'),
(4, 'appleloop', '123456', 8, 'Olah Imola', 'appleimola@gmail.com', '0040764985219', '2019-09-27 15:10:24', '2019-09-27 15:10:24'),
(5, 'lazyuser', '123456', 11, NULL, NULL, NULL, '2019-09-27 15:19:40', '2019-09-27 15:19:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedByUserId` (`addedByUserId`),
  ADD KEY `rentedByUserId` (`rentedByUserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`addedByUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`rentedByUserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
