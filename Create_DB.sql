--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '0'),
(2, 167, '10'),
(3, 13, '8');

-- --------------------------------------------------------
--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(76, 'Gosh Donoderm Hand & Nail Cream', '', '30', 10, 'product-featured-76.jpg', '<ul class=\"generatedBullets\" style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 1rem; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Category Type : Hands</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Suitable Skin Type : All Skin Type</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Texture : Cream</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Recommended Use : Wrinkles &amp; Anti Aging</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Size : 30 ml</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Type : Lotion</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Brand : GOSH</li></ul>', '<p>Gosh Donoderm Hand & Nail Cream - 30 ML<br></p>', '<ul class=\"generatedBullets\" style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: inside; color: rgb(51, 51, 51); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-transform: uppercase;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Category Type : Hands</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Suitable Skin Type : All Skin Type</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Texture : Cream</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Recommended Use : Wrinkles &amp; Anti Aging</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Size : 30 ml</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Type : Lotion</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit; text-transform: none; list-style: inherit !important;\">Brand : GOSH</li></ul>', '<p>Standard Fashionys.com Terms &amp; Conditions<br></p>', '<p>Standard Fashionys.com Return Policy</p>', 7, 0, 1, 40),
(77, 'Laptop Backpack', '', '100', 10, 'product-featured-77.jpg', '<div><font color=\"#0a0a0a\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\">Distinct design and pockets galore The striking, modern look of the Skedaddle Laptop Backpack exudes confidence with multi-functional pockets and protects your laptop.<br></font></div>', 'Baggallini Skedaddle Laptop Backpack specifically for women.', '<table>\r\n<tbody><tr>\r\n<td>Brand: </td>\r\n<td>Baggallini</td>\r\n</tr>\r\n<tr>\r\n<td>Features: </td>\r\n<td>Pockets: 3 interior slip, 3 interior zip, 4 exterior</td>\r\n</tr>\r\n<tr>\r\n<td>Target Group: </td>\r\n<td>Women</td>\r\n</tr>\r\n<tr>\r\n<td>Country of Origin: </td>\r\n<td>U.S.A</td>\r\n</tr>\r\n</tbody></table>', 'This product is directly shipped from U.S.A. and it includes import duty in the price.', '<p>Standard Return Policy</p>', 2, 1, 1, 60),
(78, 'Blouse for Women', '110', '50', 10, 'product-featured-78.jpg', '<p>Stripes pattern with small metal beads on strap</p><p>Pair this top with your favorite pants for that casual classy look</p><p>Size on model: S</p>', '<p>This sleeveless blouse is made of 55% Viscose, 43% Polyamide, 2% Spandex<br></p>', '<p><table></p><p><tr></p><p><td>Brand: </td></p><p><td>Guess</td></p><p></tr></p><p><tr></p><p><td>Occasion: </td></p><p><td>Casual Dress</td></p><p></tr></p><p><tr></p><p><td>Material: </td></p><p><td>Mixed Materials</td></p><p></tr></p><p><tr></p><p><td>Sleeve Length: </td></p><p><td>Sleeveless</td></p><p></tr></p><p></table></p>', '<p>Standard Terms & Conditions<br></p>', '<p>Standard Return Policy</p>', 3, 0, 1, 33),
(79, 'Glamorous Shirt Dress For Women', '100', '85', 10, 'product-featured-79.jpg', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Show off your style in Glamorous’ Shirt dress for women. Crafted with soft and rich Polyester material, this dress will offer you great comfort and flair. Flaunt in glamour by pairing it with a matching footwear to experience a sophisticated take on every day wear by making a unique style statement wherever you go.</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif; font-size: 14px;\">Show off your style in Glamorous’ Shirt dress for women. Crafted with soft and rich Polyester material, this dress will offer you great comfort and flair. Flaunt in glamour by pairing it with a matching footwear to experience a sophisticated take on every day wear by making a unique style statement wherever you go.</span><br></p>', '<p>N/A</p>', '<p>N/A</p>', '<p>N/A</p>', 6, 1, 1, 32),
(80, 'Jeans for Women - Denim', '', '249', 10, 'product-featured-80.jpg', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Looking for a way to diversify your attire for the day then go ahead and wear these jeans from the house of Guess. Made of cotton, these jeans will let your skin breathe, keeping you comfortable all day long. Team them with a white colored top to complete your casual look.</span><br></p>', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Looking for a way to diversify your attire for the day then go ahead and wear these jeans from the house of Guess. Made of cotton, these jeans will let your skin breathe, keeping you comfortable all day long. Team them with a white colored top to complete your casual look.</span><br></p>', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Looking for a way to diversify your attire for the day then go ahead and wear these jeans from the house of Guess. Made of cotton, these jeans will let your skin breathe, keeping you comfortable all day long. Team them with a white colored top to complete your casual look.</span><br></p>', '<p>Standard Terms & Conditions    </p>', '<p>Standard Return Policy</p>', 2, 1, 1, 35),
(81, 'Black Wool Beanie & Bobble Hat For Unisex', '10', '1', 9, 'product-featured-81.jpg', '<p>These Soft Knit Cap is a warm and comfortable choice.&nbsp;</p><p>Soft material will make you feel so comfortable and will make you look so special in the crowd .</p><p>This Men\'s Soft Lined Thick Knit Cap Warm Winter beanies Hat with Fully lined it warmth and comfort, very soft.</p>', '<p>These Soft Knit Cap is a warm and comfortable choice.&nbsp;</p><p>Soft material will make you feel so comfortable and will make you look so special in the crowd .</p><p>This Men\'s Soft Lined Thick Knit Cap Warm Winter beanies Hat with Fully lined it warmth and comfort, very soft.</p>', '<p>These Soft Knit Cap is a warm and comfortable choice.&nbsp;</p><p>Soft material will make you feel so comfortable and will make you look so special in the crowd .</p><p>This Men\'s Soft Lined Thick Knit Cap Warm Winter beanies Hat with Fully lined it warmth and comfort, very soft.</p>', '<p>Fashionys.com Standard Terms &amp; Conditions</p>', '<p>Fashionys.com Standard Return Policy<br></p>', 9, 1, 1, 1);

-- --------------------------------------------------------
CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Men Accessories', 1),
(2, 'Men\'s Shoes', 1),
(3, 'Beauty Products', 2),
(4, 'Accessories', 2),
(6, 'Shoes', 2),
(7, 'Clothing', 2),
(8, 'Bottoms', 1),
(9, 'T-shirts & Shirts', 1),
(10, 'Clothing', 3),
(11, 'Shoes', 3),
(12, 'Accessories', 3);

-- --------------------------------------------------------


--
-- Table structure for table `tbl_user`
-- 

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Vaibhav Wagaskar', 'cartosat4@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Super Admin', 'Active'),
(13, 'Anurag Kurmi', 'anuragakp456@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-13.jpg', 'Admin', 'Active'),
(2, 'Bhavesh T', 'bhavesh@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Admin', 'Active'),
(3, 'Sakshi D', 'sakshi@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Admin', 'Active'),
(4, 'Amruta G', 'amruta@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Admin', 'Active'),
(5, 'Aashish K', 'aashish@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Admin', 'Active'),
(6, 'Hritik Z', 'hritik@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Admin', 'Active'),
(7, 'Sunil B', 'sunil@gmail.com', '', 'f91e15dbec69fc40f81f0876e7009648', 'user-1.jpg', 'Admin', 'Active');


--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--


INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(4, 'Vaibhav W', '', 'cartosat4@gmail.com', '4748359256', 99, 'Hadapsar', 'Pune', 'Maharashtra', '411028', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'f91e15dbec69fc40f81f0876e7009648', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(5, 'Anurag Kurmi', '', 'anuragakp456@gmail.com', '49857243857', 228, 'address', 'dubai', 'Dubai', '0000', 'Anurag Kurmi', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', 'Anurag Kurmi', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', 'f91e15dbec69fc40f81f0876e7009648', '92dd269f6494db9e8e8ab28c528bbe80', '2018-04-23 10:06:51', '1524506811', 1),
(6, 'Hritik', '', 'hritik@gmail.com', '7392359256', 99, 'Hadapsar', 'Pune', 'Maharashtra', '411028', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'f91e15dbec69fc40f81f0876e7009648', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(7, 'Amruta', '', 'amruta@gmail.com', '9975359256', 99, 'Hadapsar', 'Pune', 'Maharashtra', '411028', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'f91e15dbec69fc40f81f0876e7009648', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(8, 'Sakshi', '', 'sakshi@gmail.com', '9422359256', 99, 'Hadapsar', 'Pune', 'Maharashtra', '411028', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'f91e15dbec69fc40f81f0876e7009648', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(9, 'Aashish', '', 'aashish@gmail.com', '9845359256', 99, 'Hadapsar', 'Pune', 'Maharashtra', '411028', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'f91e15dbec69fc40f81f0876e7009648', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1);