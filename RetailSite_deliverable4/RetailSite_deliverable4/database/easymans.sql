-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 10:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easymans`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(11, 13, 5, 1),
(18, 1253, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 2, 2),
(22, 13, 6, 1),
(23, 14, 35, 5),
(24, 15, 35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`) VALUES
(14, 'How can I place an order on your website?', '<div>You can place an order on our website by adding the desired products to your cart and checking out using our secure payment system.</div>', '2023-05-03 01:06:05'),
(15, 'Can I track my order?', '<div>Yes, you can track your order using the tracking number provided to you via email or on our website.</div>', '2023-05-03 01:06:48'),
(16, 'What types of tech products do you sell?', '<div>We sell a wide range of tech products including computers, laptops, tablets, smartphones and more. Please visit our website to explore our product offerings.</div>', '2023-05-03 01:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', 2),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', 2),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', 1),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', 1),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', 1),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 graphics card lets you play huge games in great resolutions&nbsp;<br />\r\n<br />\r\n- Latest generation Core&trade; i5 processor can handle demanding media software&nbsp;<br />\r\n<br />\r\n- Superfast SSD storage lets you load programs in no time&nbsp;<br />\r\n<br />\r\nThe Acer&nbsp;<strong>Aspire&nbsp;GX-781 Gaming PC&nbsp;</strong>is part of our Gaming range, which offers the most powerful PCs available today. It has outstanding graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 749.99, 'acer-aspire-gx-781-gaming-pc.jpg', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', 2),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', 1),
(27, 1, 'Dell XPS 15 9560', '<p>The world&rsquo;s smallest 15.6-inch performance laptop packs powerhouse performance and a stunning InfinityEdge display &mdash; all in our most powerful XPS laptop. Featuring the latest Intel&reg; processors.</p>\r\n\r\n<h2>Operating system</h2>\r\n\r\n<p><strong>Available with Windows 10 Home&nbsp;</strong>- Get the best combination of Windows features you know and new improvements you&#39;ll love.</p>\r\n\r\n<h2>Innovation that inspires.</h2>\r\n\r\n<p>When you&rsquo;re at the forefront of ingenuity, you get noticed. That&rsquo;s why it&rsquo;s no surprise the XPS 15 was honored. The winning streak continues.</p>\r\n\r\n<h2>Meet the smallest 15.6-inch laptop on the planet.</h2>\r\n\r\n<p><strong>The world&rsquo;s only 15.6-inch InfinityEdge display*:</strong>&nbsp;The virtually borderless display maximizes screen space by accommodating a 15.6-inch display inside a laptop closer to the size of a 14-inch, thanks to a bezel measuring just 5.7mm.<br />\r\n&nbsp;<br />\r\n<strong>Operating System: Windows 10 Pro.</strong><br />\r\n<br />\r\n<strong>One-of-a-kind design:</strong>&nbsp;Measuring in at a slim 11-17mm and starting at just 4 pounds (1.8 kg) with a solid state drive, the XPS 15 is one of the world&rsquo;s lightest 15-inch performance-class laptop.</p>\r\n\r\n<h2>A stunning view, wherever you go.</h2>\r\n\r\n<p><strong>Dazzling detail:</strong>&nbsp;With the UltraSharp 4K Ultra HD display (3840 x 2160), you can see each detail of every pixel without needing to zoom in. And with 6 million more pixels than Full HD and 3 million more than the MacBook Pro, you can edit images with pinpoint accuracy without worrying about blurriness or jagged lines.<br />\r\n<br />\r\n<strong>Industry-leading color:</strong>&nbsp;The XPS 15 is the only laptop with 100% Adobe RGB color, covering a wider color gamut and producing shades of color outside conventional panels so you can see more of what you see in real life. And with over 1 billion colors, images appear smoother and color gradients are amazingly lifelike with more depth and dimension. Included is Dell PremierColor software, which automatically remaps content not already in Adobe RGB format for onscreen colors that appear amazingly accurate and true to life.<br />\r\n<br />\r\n<strong>Easy collaboration:</strong>&nbsp;See your screen from nearly every angle with an IGZO IPS panel, providing a wide viewing angle of up to 170&deg;.&nbsp;<br />\r\n<br />\r\n<strong>Brighten your day:</strong>&nbsp;With 350 nit brightness, it&rsquo;s brighter than a typical laptop.<br />\r\n<br />\r\n<strong>Touch-friendly:</strong>&nbsp;Tap, swipe and pinch your way around the screen. The optional touch display lets you interact naturally with your technology.</p>\r\n', 'dell-xps-15-9560', 1599, 'dell-xps-15-9560.jpg', 9),
(32, 1, 'Microsoft Surface Laptop 5 i7 - 13.5', 'Unlock speed and style with Surface Laptop 5\r\nRefined and Individual\r\nWith this stylish and incredibly light laptop that has a great keyboard and exceptional typing comfort, get work done.', 'microsoft-surface-laptop-5-i7-13-5', 1000, 'microsoft-surface-laptop-5-i7-13-5.jpg', 0),
(33, 1, 'Apple Macbook Pro - 13\" 16GB/1TB', 'MacBook Pro\r\nPro anywhere.\r\nThe 13-inch MacBook Pro is now more competent than ever thanks to the new M2 chip. The same small form factor supports a battery life of up to 20 hours1 and an active cooling system to promote improved performance. It\'s our most portable professional laptop and comes equipped with a stunning Retina display, a FaceTime HD camera, and studio-quality mics.', 'apple-macbook-pro-13-16gb-1tb', 3000, 'apple-macbook-pro-13-16gb-1tb.jpg', 0),
(34, 4, 'Apple iPhone 14 Pro Max - 1TB HK', 'iPhone 14 Pro & 14 Pro Max\r\nA magical new way to interact with iPhone. Groundbreaking safety features designed to save lives. An innovative 48MP camera for mind-blowing detail. All powered by the ultimate smartphone chip.\r\nDesigned for durability.\r\nWith Ceramic Shield, tougher than any smartphone glass. Water resistance. Surgical-grade stainless steel. 6.1? and 6.7? display sizes. All in four Pro colors.\r\n\r\nAlways-On display.\r\nAlways at the ready.\r\nNow your Lock Screen is always glanceable, so you don’t even have to tap it to stay in the know.\r\n\r\nWhen iPhone is turned face down or in your pocket, it goes dark to save battery life.\r\n\r\nYour photo.\r\nYour font.\r\nYour widgets.\r\nYour iPhone.\r\niOS 16 lets you customize your Lock Screen in fun new ways. Layer a photo to make it pop. Track your Activity rings. And see live updates from your favorite apps.\r\n\r\nPeace of mind when you’re off the grid.\r\nIf you don’t have cell service or Wi?Fi, iPhone lets you text emergency services over satellite.\r\n\r\nCrash Detection calls for help when you can’t.\r\niPhone 14 Pro can detect a severe car crash, then call 911 and notify your emergency contacts.\r\n\r\nThe Pro camera system gets massively more Pro.\r\nIntroducing the all-new 48MP Main camera with an advanced quad-pixel sensor.\r\n\r\nThe picture of versatility.\r\nThe New Pro Camera system adds a 2x optical-quality Telephoto to its zoom range, putting tons of framing flexibility in your pocket. Up your fame game.', 'apple-iphone-14-pro-max-1tb-hk', 1500, 'apple-iphone-14-pro-max-1tb-hk.jpg', 0),
(35, 4, 'Samsung Galaxy Fold 4', 'Galaxy Z Fold4\r\nCheck out these fresh angles\r\nPowerful. Productive\r\nBig, immersive display\r\nOur toughest foldable yet\r\nNightography camera\r\nUnfold your world\r\nFORM FACTOR\r\nStands out. Stands up. Unfolds\r\nDoes a lot in one hand with its 6.2-inch Cover Screen.1 In both hands, the 7.6-inch Main Screen makes it your ultimate do-more device.2 And when you need to go hands-free, simply set it down, find a good angle and leave it there while you get more done.\r\n\r\nSIZE & WEIGHT\r\nA new spin on slim\r\nIt\'s basically two phones in one — with nearly the weight of a less-flexible phone. Slimmed down everywhere but the screen, minimized bezels and lightweight materials make Galaxy Z Fold4 even more pocket-friendly.\r\n\r\nCOLORS\r\nFinishes with finesse\r\nThe elegant combination of a unique form factor with naturally classic hues turns heads with every unfold. Select from Graygreen, Phantom Black or Beige.', 'samsung-galaxy-fold-4', 1000, 'samsung-galaxy-fold-4.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `created_at`) VALUES
(7, 5, 'Very good website', '2023-04-10 20:12:54'),
(14, 1, 'not nice', '2023-04-18 20:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, '123', '2023-09-19'),
(10, 9, '123', '2018-05-10'),
(11, 2, '2131', '2022-01-01'),
(13, 2, '123', '2023-02-08'),
(14, 2, '123', '2023-04-08'),
(15, 2, '123', '2023-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Abdurrehman', 'Haroon', '', '', 'thanos1.jpg', 1, '2023-05-01'),
(2, 'hello@bluh.com', '$2y$10$vzNs/4gdAr/SfErC8CKZzOkSMecgMozFYU65f2I8DD1KpuJyRUtXy', 0, 'hello', 'bluh', '', '', '', 1, '2023-04-21'),
(4, 'hworld@gmail.com', '$2y$10$LJeFB1oP5TrhYObFV4euEu8sm/dDBvbQP2TBCOoLAvon8Fvx61S4K', 0, 'hello', 'world', '', '', '', 0, '2023-05-02'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '031056382828', 'male2.png', 1, '2023-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
