-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2022 at 08:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Table Tennis'),
(2, 'Golf'),
(3, 'Baseball'),
(4, 'Tennis'),
(7, 'Badminton'),
(8, 'Hockey'),
(9, 'Football'),
(10, 'Cricket');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Daily Sports.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p><strong>Admin</strong>&nbsp; MD. AL-AMIN</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Authors</strong>&nbsp; Al-amin,Anis,Siam,Monir,faysal</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(2, 'Privacy Policy', '<p><span>A&nbsp;</span><strong>privacy policy</strong><span>&nbsp;is a statement or legal document (in&nbsp;</span><a title=\"Privacy law\" href=\"https://en.wikipedia.org/wiki/Privacy_law\">privacy law</a><span>) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client\'s data.</span><span>Personal information can be anything that can be used to identify an individual, not limited to the person\'s name, address, date of birth, marital status, contact information, ID issue, and&nbsp;</span><a title=\"Expiration date\" href=\"https://en.wikipedia.org/wiki/Expiration_date\">expiry date</a><span>, financial records, credit information, medical history, where one travels, and intentions to acquire goods and services.</span><span>&nbsp;In the case of a business, it is often a statement that declares a party\'s policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.</span><span>Privacy policies typically represent a broader, more generalized treatment, as opposed to&nbsp;</span><a title=\"Data mining\" href=\"https://en.wikipedia.org/wiki/Data_mining\">data</a><span>&nbsp;use statements, which tend to be more detailed and specific.</span></p>'),
(3, 'Terms Of Use', '<p><strong>Terms of service</strong><span>&nbsp;(also known as&nbsp;</span><strong>terms of use</strong><span>&nbsp;and&nbsp;</span><strong>terms and conditions</strong><span>, commonly abbreviated as&nbsp;</span><strong>TOS</strong><span>&nbsp;or&nbsp;</span><strong>ToS</strong><span>,&nbsp;</span><strong>ToU</strong><span>&nbsp;or&nbsp;</span><strong>T&amp;C</strong><span>) are the&nbsp;</span><a class=\"mw-redirect\" title=\"Legal agreement\" href=\"https://en.wikipedia.org/wiki/Legal_agreement\">legal agreements</a><span>&nbsp;between a&nbsp;</span><a title=\"Service provider\" href=\"https://en.wikipedia.org/wiki/Service_provider\">service provider</a><span>&nbsp;and a person who wants to use that service. The person must agree to abide by the terms of service in order to use the offered service.</span><sup id=\"cite_ref-AOLd_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Terms_of_service#cite_note-AOLd-1\">[1]</a></sup><span>&nbsp;Terms of service can also be merely a&nbsp;</span><a title=\"Disclaimer\" href=\"https://en.wikipedia.org/wiki/Disclaimer\">disclaimer</a><span>, especially regarding the use of websites. Vague language and lengthy sentences used in the terms of use have brought concerns on customer privacy and raised public awareness in many ways.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(1, 9, 'FIFA warns Tunisia it faces possible ouster from World Cup 2022', '<p>Football&rsquo;s world governing body FIFA has warned the Tunisian Football Federation (TFF) that their team&rsquo;s participation at World Cup 2022 could be under threat if there is found to be government interference within the organisation.</p>\r\n<p>Having qualified for their sixth World Cup, the North African country is in Group D along with reigning world champions France, Australia and Denmark, whom they face in their November 22 opener.</p>', 'upload/536852fcea.jpg', 'Ahlil', 'fif', '2022-10-31 18:44:39', 0),
(5, 1, 'Medvedev Sinks Shapo, Clinches Vienna Crown', '<p>Medvedev now leads the 23-year-old Shapovalov 4-2 in their ATP Head2Head series, while he has improved to 45-15 on the season. Earlier this year, he reached the final at the&nbsp;<a href=\"https://www.atptour.com/en/tournaments/australian-open/580/overview\">Australian Open</a>&nbsp;before he won the title in Los Cabos.</p>\r\n<p>The 26-year-old looked back to his very best during a dominant week in Austria. He did not drop a set or lose serve en route to the championship match, securing his spot at the&nbsp;<a href=\"https://www.atptour.com/en/tournaments/nitto-atp-finals/605/overview\">Nitto ATP Finals</a>&nbsp;&ndash; to be held in Turin from 13-20 November &ndash; along the way.</p>\r\n<p>In front of a packed crowd in the championship match, Medvedev produced moments of magic in the third set as he blunted the attack of Shapovalov with a range of stunning passing shots. The top seed hit 24 winners and broke serve five times, sealing the title on his sixth match point.</p>', 'upload/20cc577eea.jpg', 'derfdr', 'sfgds', '2022-10-31 18:50:19', 0),
(6, 10, 'Australia vs Ireland Cricket Score, T20 World Cup 2022 Highlights: AUS defeat IRE by 42 runs', '<p><span>Australia vs Ireland T20 World Cup 2022 Highlights:</span>&nbsp;An important victory for the Aussies at the Gabba. They bowled really well with the new ball. If not for Lorcan Tucker&rsquo;s brilliant innings of 71 runs, this would have looked a lot worse for the Irish. Mitchell Starc picked up two important wickets in his first over with shearing yorkers. Adam Zamapa had a brilliant outing too on his return from&nbsp;<a href=\"https://indianexpress.com/about/coronavirus/\">COVID-19</a>&nbsp;picking up two for 19 in his four.</p>\r\n<div class=\"ev-meter-content\">\r\n<p>Mathew Wade led the side in the second innings on the field as&nbsp;<a href=\"https://indianexpress.com/about/aaron-finch/\">Aaron Finch</a>&nbsp;had a hamstring injury. Earlier in the first innings, Finch played a brilliant captain&rsquo;s knock with 63 runs of 44 balls, supported by&nbsp;<a href=\"https://indianexpress.com/about/mitchell-marsh/\">Mitchell Marsh</a>&nbsp;28(22) and&nbsp;<a href=\"https://indianexpress.com/about/marcus-stoinis/\">Marcus Stoinis</a>&nbsp;35(25). Barry McCarthy picked up three wickets with the ball giving away 29 runs for the Irish, chipping in with crucial wickets in crucial stages of the game. Joshua Little also picked up a couple of wickets in his four.</p>\r\n</div>', 'upload/b392d99269.jpg', 'dfgdf', 'dgdfggfd', '2022-10-31 18:49:45', 0),
(8, 7, 'Badminton: Loh Kean Yew stuns Viktor Axelsen to reach Denmark Open semi-finals', '<p>SINGAPORE - Singapore&rsquo;s top shuttler Loh Kean Yew ended world No. 1 Viktor Axelsen&rsquo;s men&rsquo;s singles record run of 39 straight wins in stunning fashion, romping to a 21-17, 21-10 win in just 30 minutes in their Denmark Open quarter-final on Friday.</p>\r\n<p>The world No. 5 told The Straits Times: &ldquo;Beating Viktor now is an achievement in itself because he is on another level. But nobody wins all the time, and he is also human, and a respectable one too.&rdquo;</p>\r\n<p>Loh will go on and meet childhood rival, Malaysia&rsquo;s third-ranked Lee Zii Jia, in their semi-final on Saturday.</p>\r\n<p>The other semi-final will be contested by Japan&rsquo;s world No. 24 Kodai Naraoka and China&rsquo;s 44th-ranked Shi Yuqi.</p>\r\n<p>Prior to Friday&rsquo;s match, Axelsen had lost just once in 43 matches in 2022, when he was defeated by India&rsquo;s Lakshya Sen in their German Open semi-final in March.</p>\r\n<p>Since then, the 28-year-old Dane had been in near-invincible form, as he surpassed Chinese legend Lin Dan&rsquo;s run of 31 consecutive wins en route to six titles, including his second World Championships and All England Open crowns. Axelsen was so dominant, he lost just seven games in his record run.</p>\r\n<div id=\"innity-in-post\">&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<p>He did withdraw from the Swiss Open and Thailand Open after one win at each event, but these are disregarded when tabulating the streaks.</p>\r\n<div id=\"sph_cdp_10\">&nbsp;</div>\r\n<p>And so, in front of his hometown crowd at the Jyske Bank Arena in Odense, Axelsen was hot favourite to progress.</p>\r\n<p>But Loh, who famously beat Axelsen in the first round of the 2021 World Championships before going all the way to become Singapore&rsquo;s first badminton world champion, had other ideas.</p>\r\n<p>Choosing to start from the half with the wind carry, which is generally accepted as the more disadvantageous side, the 25-year-old kept pace in the first game which was littered with shots that sailed long and out, such that Axelsen never led by more than a point.</p>\r\n<div>&nbsp;</div>\r\n<p>Loh then impressed with his blinding speed that helped him retrieve his opponent&rsquo;s fierce smashes, and drew gasps of appreciation even from the home fans with his brilliant net play.</p>', 'upload/fe084fc251.jpg', 'moni', 'badminton', '2022-10-31 19:07:49', 0),
(9, 8, 'Tickets & schedule for WW18', '<p><span>The 2023 IIHF Ice Hockey U18 Women&rsquo;s World Championship will be held in Ostersund, Sweden from 8 to 15 January 2023 turning the entire town into a hockey fest. Come cheer for your favourite team &ndash; the game schedule has been released and the ticket sale started!</span><br /><br /><span>Come join the hockey festival in Ostersund, and cheer for your favourite team from the stands! Tickets starts as low as SEK 80 (&euro;7.50), and for students as low as SEK 40 (&euro;3.50).&nbsp;</span><a href=\"https://secure.tickster.com/en/p8kxe93mvkn89c1/selectevent\" target=\"_blank\">Tickets can be purchased online.</a><br /><br /><span>Tickets for children and persons under 18 years of age are free, subject to availability.</span><br /><br /><span>All games will be played in the Ostersunds Arena. During the preliminary round three games are scheduled on the main rink and one on the secondary rink of the facility.</span><br /><br /><span>The top-seeded teams Canada, USA and Finland will join host Sweden in Group A of the two-tiered tournament while Czechia, Slovakia, Switzerland and Japan will compete in Group B for the two top spots to join the Group A teams in the final round.</span></p>', 'upload/253b0f7226.jpg', 'Islam', 'hockey', '2022-10-31 18:48:58', 0),
(10, 3, '2022 MLB playoffs: World Series schedule, game times, TV channel as Astros-Phillies continues Monday', '<p>Major League Baseball has reached the World Series in the 2022 playoffs. MLB\'s postseason started with 12 teams more than weeks ago, and now we\'re down to the final two: the Houston Astros and Philadelphia Phillies. The Fall Classic kicked off over the weekend, with the teams splitting the first two games at Minute Maid Park. The World Series now shifts to Philadelphia for three games, starting with Game 3 on Monday night.</p>\r\n<p>This is the largest playoff field ever for a full, 162-game season, and&nbsp;<span class=\"link\"><a href=\"https://www.cbssports.com/mlb/news/2022-mlb-playoffs-new-postseason-format-explained-and-why-there-are-no-more-game-163-tiebreakers/\" target=\"_blank\">you can read more on the new format here</a></span>. Ten teams -- the Yankees, Padres, Guardians, Dodgers, Braves, Mariners, Mets, Cardinals, Blue Jays and Rays -- were eliminated in the first three rounds. The Dodgers, Braves and Mets all won at least 100 games this year, but none of them won a single series in the postseason.</p>\r\n<p>The 2022&nbsp;<a href=\"https://www.cbssports.com/mlb/\" data-is-autolink=\"true\">MLB</a>&nbsp;postseason will stretch beyond October. Game 4 of the 2022 World Series is scheduled for Tuesday, Nov. 1, so that is a guaranteed date. Game 7 of the World Series is scheduled for Saturday, Nov. 5. It would be the latest World Series game in MLB history. Because the first week of the regular season was postponed due to the owners\' lockout, each team had three makeup games added to the end of their schedule.&nbsp;</p>', 'upload/ddf3f2abfc.jpg', 'kazi', 'mlb playoffs, game times', '2022-10-31 18:55:25', 0),
(11, 2, ' Associated Press Johnson caps $35M year, leads team to season-ending LIV win', '<p>SINGAPORE - Singapore&rsquo;s top shuttler Loh Kean Yew ended world No. 1 Viktor Axelsen&rsquo;s men&rsquo;s singles record run of 39 straight wins in stunning fashion, romping to a 21-17, 21-10 win in just 30 minutes in their Denmark Open quarter-final on Friday.</p>\r\n<p>The world No. 5 told The Straits Times: &ldquo;Beating Viktor now is an achievement in itself because he is on another level. But nobody wins all the time, and he is also human, and a respectable one too.&rdquo;</p>\r\n<p>Loh will go on and meet childhood rival, Malaysia&rsquo;s third-ranked Lee Zii Jia, in their semi-final on Saturday.</p>\r\n<p>The other semi-final will be contested by Japan&rsquo;s world No. 24 Kodai Naraoka and China&rsquo;s 44th-ranked Shi Yuqi.</p>\r\n<p>Prior to Friday&rsquo;s match, Axelsen had lost just once in 43 matches in 2022, when he was defeated by India&rsquo;s Lakshya Sen in their German Open semi-final in March.</p>\r\n<p>Since then, the 28-year-old Dane had been in near-invincible form, as he surpassed Chinese legend Lin Dan&rsquo;s run of 31 consecutive wins en route to six titles, including his second World Championships and All England Open crowns. Axelsen was so dominant, he lost just seven games in his record run.</p>\r\n<div id=\"innity-in-post\">&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<p>He did withdraw from the Swiss Open and Thailand Open after one win at each event, but these are disregarded when tabulating the streaks.</p>\r\n<div id=\"sph_cdp_10\">&nbsp;</div>\r\n<p>And so, in front of his hometown crowd at the Jyske Bank Arena in Odense, Axelsen was hot favourite to progress.</p>\r\n<p>But Loh, who famously beat Axelsen in the first round of the 2021 World Championships before going all the way to become Singapore&rsquo;s first badminton world champion, had other ideas.</p>\r\n<p>Choosing to start from the half with the wind carry, which is generally accepted as the more disadvantageous side, the 25-year-old kept pace in the first game which was littered with shots that sailed long and out, such that Axelsen never led by more than a point.</p>\r\n<div>&nbsp;</div>\r\n<p>Loh then impressed with his blinding speed that helped him retrieve his opponent&rsquo;s fierce smashes, and drew gasps of appreciation even from the home fans with his brilliant net play.</p>', 'upload/718a2b06be.jpg', 'Anis', 'press,johnson', '2022-10-31 19:00:18', 0),
(12, 4, 'ATP, ITF & Kosmos Announce Davis Cup Partnership', '<p>The ATP, International Tennis Federation (ITF) and Kosmos Tennis have today announced an unprecedented strategic alliance from 2023 supporting the Davis Cup by Rakuten. The men&rsquo;s World Cup of Tennis is the longest-running and largest annual international team event in sport with 122 years of history.</p>\r\n<p>The new partnership has been established to enable strategic collaboration on the competition&rsquo;s governance and evolution, with ATP granted two of six seats on a newly formed Davis Cup Event Committee alongside the ITF and Kosmos, long-term investors and promoters of the competition. The partnership officially brings ATP and ITF together across Davis Cup for the first time in history in a combined effort to maximise the success of the historic team competition as the men&rsquo;s World Cup of Tennis.</p>\r\n<p>The Davis Cup Finals and Qualifier ties now become an official part of the 2023 ATP Tour calendar, taking place in weeks 5, 37 and 47, with increased promotion on ATP channels. This integration will support players in planning their annual schedule when selected to play in their national Davis Cup team. The Finals will continue under its existing format, offering $15 million in player prize money in 2023.</p>', 'upload/dc37ec7dca.jpg', 'faysal', 'davis cup,kosmos', '2022-10-31 19:02:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'spirit of tennis', 'upload/slider/d3eb7b59d7.jpg'),
(2, 'surprising golf stadium', 'upload/slider/125a8747b1.jpg'),
(4, 'football, the game of wonders', 'upload/slider/1da1f91030.jpg'),
(5, 'You find that you have peace of mind and can enjoy yourself, get more sleep, rest when you know that it was a one hundred percent effort that you gave – win or lose.', 'upload/slider/9da32a29a8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'MD.AL-AMIN', 'islam', 'd00f39f34c58ae7a0e8dcd34fb8aa29f', 'kmai04016@gmail.com', '<p>MD.AL-AMIN is the admin of Daily Sports.</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Daily Sports', 'Time to know all about sports', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
