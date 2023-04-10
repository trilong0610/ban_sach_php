-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 03:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `quantity_sold` int(11) DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `publishing_house` varchar(191) DEFAULT NULL,
  `number_of_pages` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT 0,
  `price` bigint(20) DEFAULT NULL,
  `cover_price` bigint(20) DEFAULT NULL,
  `book_image` varchar(191) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `description`, `publish_date`, `quantity_sold`, `author_id`, `company_id`, `category_id`, `publishing_house`, `number_of_pages`, `quality`, `price`, `cover_price`, `book_image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'You Can Win - Bí Quyết Của Người Chiến Thắng (Tái Bản)', '<p style=\"text-align: justify;\"><span style=\"color: #ff6600; font-size: medium;\"><strong>You Can Win - Bí Quyết Của Người Chiến Thắng</strong></span><br /><strong></strong></p>  <p style=\"text-align: justify;\">Với cách đặt vấn đề dễ hiểu, thiết thực và sâu sắc, <strong>Bí quyết của người chiến thắng</strong> sẽ giúp bạn tránh rơi vào cảm giác mất phương hướng, biết xác định mục tiêu và những giá trị cần ưu tiên trong cuộc sống. <span style=\"font-size: 12px;\">Có  thể xem cuốn sách này như một quyển sổ tay liệt kê những công cụ cần  thiết để kiến tao thành công và giúp bạn tạo lập một cuộc sống tốt đẹp.  Cũng có thể xem nó như một cuốn cảm nang dạy nấu ăn, bao gồm những chỉ  dần về nguyên liệu, công thức và cách pha trộn theo tỉ lệ thích hợp để  có được thành công.</span></p>  <p style=\"text-align: justify;\">Nhưng  trên hết, đây là cuốn sách từng bước dẫn dặt bạn đi từ mơ ước, khát vọng  thành công đến khám phá năng lực của bản thân và biến ước mơ thành hiện  thực.   <span style=\"font-size: 12px;\">Bí  quyết sẽ giúp bạn xây dựng mục tiêu mới, hình thành ý niệm mới về mục  đích sống, phát triển tư tưởng mới về bản thân và tương lai.</span></p>  <p style=\"text-align: justify;\">Một  trong những mục đích của cuốn sách là giúp bạn đề ra kế hoạch hành động  cho tương lai. Nếu chưa bao giờ làm vậy, bạn hãy xác định xem:</p>  <p style=\"text-align: justify;\">- Bạn muốn đạt được điều gì?</p>  <p style=\"text-align: justify;\">- Bạn muốn đạt được mục tiêu bằng cách nào?</p>  <p style=\"text-align: justify;\">- Thời điểm bạn muốn đạt được mục tiêu là khi nào?</p>  <p style=\"text-align: justify;\">Những  nguyên tắc trình bày trong cuốn sách đều mang tính phổ quát, áp dụng cho  mọi tình huống, tổ chức hoặc quốc gia. Hy vọng cuốn sách sẽ mang lại  cho bạn nhiều điều mới mẻ v&agragrave; những khám phá thú vị.</p>', '2015-12-14', 1, 1, 1, 1, 'NXB Tổng hợp TP.HCM', 288, 1, 62000, 78000, './img/product/product-1.jpg', NULL, '2017-05-27 00:40:25', '2017-05-27 00:40:25'),
(2, 'Yoga Toàn Thư', '<p style=\"text-align: justify;\"><span style=\"color: #ff6600; font-size: medium;\"><strong>Yoga Toàn Thư</strong></span></p>  <p style=\"text-align: justify;\"><strong>Yoga Toàn Thư</strong> (The Complete Illustrated Book of Yoga) của Swami Vishnu Devananda đã dạy cho nhiều thế hệ phương Tây trải nghiệm những lợi ích lớn lao mà ngành khoa học cổ đại của Yoga hứa đem lại cho cơ thể, tâm trí, và tâm linh.Khả năng độc đáo của ông nằm trong việc giảng giải một cách rõ ràng ngay cả những khái niệm trừu tượng nhất. Swami Vishnu đề xướng một chương trình đào tạo toàn diện để đem sức mạnh của Yoga để cho:</p>  <p style=\"text-align: justify;\">-Thư giãn và giữ tâm trí trẻ trung</p>  <p style=\"text-align: justify;\">-Tăng sự khỏe mạnh thể chất và sự dẻo dai của cơ thể</p>  <p style=\"text-align: justify;\">-Giải thích nhận thức tâm linh</p>  <p style=\"text-align: justify;\">-Cải thiện khả năng tập trung</p>  <p style=\"text-align: justify;\">-Giúp cơ thể sử dụng khí oxy và chất dinh dưỡng hiệu quả hơn</p>  <p style=\"text-align: justify;\">-Ngừa bệnh và chậm lão hóa</p>  <p style=\"text-align: justify;\">Với 146 hình trắng đen, Swami Vishnu-devananda còn làm mẫu tất cả những tư thế Yoga quan trọng, truyền đạt cho người mới nhập môn lẫn người tập cao cấp những chỉ dẫn chuyên môn cao và cảm hứng thường chỉ có được nhờ sự chỉ bảo trực tiếp của một người thầy giỏi.</p>  <p style=\"text-align: justify;\">Swami Vishnu-devananda là một trong những người được thừa nhận là có uy quyền nhiều nhất về Hatha và Raja Yoga. Một đệ tử của Swami Sívananda, ông được thầy mình truyền cảm hứng để sáng lập Sivananda Yoga Vedanta Centers International, vốn đã thành lập nhiều trung tâm trên khắp nước Mỹ, Canada, và Châu Âu.</p>', '2014-06-14', 0, 1, 2, 1, 'NXB Thời Đại', 375, 4, 96000, 120000, './img/product/product-2.jpg', NULL, '2017-05-27 00:40:25', '2017-05-27 00:40:25'),
(3, 'Yêu Người Yêu Người Ta (Tái Bản 2014) - Tặng Kèm Phụ Bản Yêu Anh Hơn Người Anh Yêu', '<p style=\"text-align: justify;\"><span style=\"color: #ff6600; font-size: medium;\"><strong>Combo Yêu Người Yêu Người Ta (Tái Bản 2014) - Yêu Anh Hơn Người Anh Yêu</strong></span></p>  <p style=\"text-align: justify;\"><em>“Giá được một chén say mà ngủ suốt triệu đêm </em></p>  <p style=\"text-align: justify;\"><em>Khi tỉnh dậy anh đã chia tay với người con gái ấy.</em></p>  <p style=\"text-align: justify;\"><em>Giá được anh hẹn hò dù phải chờ lâu đến mấy</em></p>  <p style=\"text-align: justify;\"><em>Em sẽ chờ như thể một <a href=\"http://tiki.vn/tieu-thuyet-tinh-cam-lang-man/c844\">tình yêu</a></em></p>  <p style=\"text-align: justify;\"><em>”Giá em biết em yêu sai ngay từ phút đầu. Yêu lầm người đã là của người ta. Em có yêu điên cuồng say mê đến thế? Để mãi mãi trở thành kẻ thứ ba. Lặng lẽ bên anh. Lặng lẽ yêu anh chỉ có nước mắt là ngược xuôi chẳng thể lặng im nổi. Em biết em yêu anh hơn “người ta”</em>.</p>  <p style=\"text-align: justify;\">Em biết em sẵn sàng đến bên anh kể cả những khi anh nhớ người và thổn thức gọi tên người. Em cũng biết lỗi của em là đến muộn, đến sau… chỉ vậy thôi. Em biết, anh yêu người ta nhiều như nỗi đau của em. Nhưng trái tim em vẫn gào lên vô vọng: YÊU ANH HƠN NGƯỜI ANH YÊU</p>  <p style=\"text-align: justify;\"><strong>Yêu anh hơn người anh yêu</strong> là ấn phẩm phụ bản đi kèm <strong>Yêu người yêu người ta</strong> tái bản lần thứ 3. Cuốn sách nổi đình nổi đám suốt mùa hè rồi mùa thu qua.</p>  <p style=\"text-align: justify;\">Và rằng: Bộ đôi <strong>Yêu người yêu người ta - Yêu anh hơn người anh yêu</strong> cũng sẽ gây sốt trong mùa đông này bởi tất cả những dư vị riêng không thể lẫn vào đâu được của ngòi bút <strong>Gia Đoàn</strong>. Không hoa mỹ, cầu kì, <strong>Gia Đoàn</strong> chỉ đang kể câu chuyện của mình, của bạn lặng lẽ, nhẹ nhàng như chẳng có gì mà đủ khiến mắt ta rơi nước mắt.</p>', '2014-11-14', 0, 1, 3, 1, 'NXB Văn Học', 270, 7, 74000, 92000, './img/product/product-3.jpg', NULL, '2017-05-27 00:40:25', '2017-05-27 00:40:25'),
(4, 'Yêu Một Người Là Điều Giản Đơn?', '<p style=\"text-align: justify;\"><span style=\"font-size: medium; color: #ff6600;\"><strong>Yêu Một Người Là Điều Giản Đơn?</strong></span></p>  <p style=\"text-align: justify;\"><em>Rồi cũng có ngày phải kể nhau nghe</em></p>  <p style=\"text-align: justify;\"><em>những câu chuyện bình thường</em></p>  <p style=\"text-align: justify;\"><em>của những yêu thương từng bỏ mình đi mất</em></p>  <p style=\"text-align: justify;\"><em>Hóa ra cuộc đời giữa được và mất</em></p>  <p style=\"text-align: justify;\"><em>chỉ tựa như ván bài đặt cược</em></p>  <p style=\"text-align: justify;\"><em>thắng hay thua cũng đành cất riêng mình...</em></p>  <p style=\"text-align: justify;\">Ai trong chúng ta mà chưa từng có những vết thương lòng, chưa từng cô đơn, chưa từng ôm trong tim những điều tiếc nuối? Nhưng những điều đó rồi có còn quan trọng trước những đẹp tươi đang chờ đợi ngày mai?</p>  <p style=\"text-align: justify;\"><strong>Yêu một người là điều giản đơn? -</strong> là nỗi lòng, là lời thủ thỉ  tâm tình của một cô gái có <em>những nỗi-đau-tưởng-như-chẳng-thể-nào-qua-trong-đời, </em>như tất cả chúng ta.</p>  <p style=\"text-align: justify;\"><em>Đến một độ tuổi, tự khắc bạn sẽ nhận ra, buồn hay cô đơn, chỉ là khoảnh khắc của bình yên đến muộn. Nên tôi cứ cho phép mình buồn, bởi đó là sự thật.</em></p>  <p style=\"text-align: justify;\">Nếu bạn đọc cuốn sách này của Diệp Mộc Tử, bạn sẽ ngạc nhiên rằng sao nỗi buồn, nỗi cô đơn lại bình yên đến vậy. Tác giả khơi gợi những cảm xúc mà ta cất giấu lâu nay trong lòng, nhưng không mang vào đó những bi ai, mà chỉ nhẹ nhàng lấy những niềm đau đó ra đặt nhẹ nhàng trước mặt , ngắm nghía rồi để gió cuốn đi.</p>  <p style=\"text-align: justify;\"><strong>Yêu một người là điều giản đơn?</strong> - không chỉ nói về cách yêu người, mà dường như người mà ta không biết cách yêu thương nhất chính là bản thân mình. Khi ta cần yêu thương, ta cứ mải miết đi tìm một người mang đến yêu thương cho mình và lại tự mang về những tổn thương khi lầm lỡ. Ta quên mất rằng, mình \"<em>không cần ai để làm điểm tựa cho mình ngoài bản thân ra\". </em></p>  <p style=\"text-align: justify;\">Vì thế mà, chúng ta, dù đã, đang trải qua những nỗi buồn nào, cũng cứ bình yên mà sống, mà yêu thương. Vì \"<em>là lá, sống thì phải xanh\"</em>.</p>', '2016-11-14', 0, 1, 4, 1, 'NXB Văn Học', NULL, 1, 62000, 78000, './img/product/product-4.jpg', NULL, '2017-05-27 00:40:25', '2017-05-27 00:40:25'),
(5, 'Yêu Em Từ Cái Nhìn Đầu Tiên (Ấn Bản Kỷ Niệm) - Tặng Kèm 7 Bookmark Nhân Vật Và 3 Postcard', '<p style=\"text-align: justify;\"><strong><span style=\"color: #ff6600; font-size: medium;\"><a href=\"http://tiki.vn/yeu-em-tu-cai-nhin-dau-tien-an-ban-ky-niem-tang-kem-7-bookmark-nhan-vat-va-3-p118520.html\">Yêu Em Từ Cái Nhìn Đầu Tiên</a></span></strong></p>  <p style=\"text-align: justify;\">Nhắc đến<strong> Yêu em từ cái nhìn đầu tiên</strong> có lẽ không cần dùng quá nhiều lời, bởi cùng với <strong>Sam Sam đến đây ăn nào</strong>, <strong>Bên nhau trọn đời</strong>, <strong>Yêu em từ cái nhìn đầu tiên</strong> đã làm nên tên tuổi của<strong> Cố Mạn</strong> tại Việt Nam.</p>  <p style=\"text-align: justify;\"><em>Đi cùng?</em></p>  <p style=\"text-align: justify;\"><em>Hai chữ này kéo Vy Vy trở về hiện tại, lập tức hoàn hồn.Nhìn chiếc xe, lại nhìn Đại Thần, người đẹp Vy Vy lắp bắp:</em></p>  <p style=\"text-align: justify;\"><em> “Em… em…”</em></p>  <p style=\"text-align: justify;\"><em>Tiêu Nại hơi cau mày. Vy Vy trấn tĩnh nói: </em></p>  <p style=\"text-align: justify;\"><em>“… Anh đèo em?”. </em></p>  <p style=\"text-align: justify;\"><em>“Ừ, đường xa thế chẳng lẽ đi bộ?”. </em></p>  <p style=\"text-align: justify;\"><em>Đường đến nhà thi đấu bóng rổ xa thế, đi bộ đương nhiên rất đáng sợ, nhưng… nhưng  đáng sợ hơn chính là anh đèo em! Vy Vy băn khoăn. Với danh tiếng nổi như cồn của Tiêu Nại, cộng thêm chút nổi tiếng nho nhỏ của Vy Vy, đèo nhau trên con đường này, chắc chắn sẽ có ngay những lời đồn hay ho cho coi! Tuy rằng họ hình như, hình như, có vẻ như đúng là đang tiến tới những nghi ngờ hay ho đó, nhưng hiện nay, bây giờ, lúc này họ tuyệt đối trắng tinh hơn cả lông cừu.</em></p>  <p style=\"text-align: justify;\"><em>“Như thế này... như thế này... không ổn lắm. Người khác nhìn thấy sẽ hiểu nhầm”. </em></p>  <p style=\"text-align: justify;\"><em>Vy Vy cố từ chối khéo, hai tai bắt đầu đỏ dần.</em></p>  <p style=\"text-align: justify;\"><em>“Hiểu nhầm?”. </em></p>  <p style=\"text-align: justify;\"><em>Chẳng lẽ anh không hiểu? Vy Vy đành nói thẳng:</em></p>  <p style=\"text-align: justify;\"><em> “Hiểu nhầm chúng ta… ôi, là kiểu quan hệ đó…”. </em></p>  <p style=\"text-align: justify;\"><em>Tiêu Nại lặng lẽ nhìn cô, hồi lâu không nói, Vy Vy cảm thấy một nỗi căng thẳng khó hiểu… mình không nói gì sai chứ? Đúng khi Vy Vy cảm thấy mỗi lúc càng căng thẳng hơn, cuối cùng Nại Hà phá vỡ bầu không khí yên lặng: </em></p>  <p style=\"text-align: justify;\"><em>“Thế chúng ta không phải là kiểu quan hệ đó từ khi nào vậy?”. </em></p>  <p style=\"text-align: justify;\"><strong>Yêu em từ cái nhìn đầu tiên</strong> từ khi phát hành cho đến nay đã nhận được vô vàn lời khen tặng của độc giả:</p>  <p style=\"text-align: justify;\">\"Văn chương của Cố Mạn lãng mạn, dịu dàng, khiến người đọc có cảm giác như đang trôi bồng bềnh trong mơ, vừa đọc vừa vén môi cười dịu dàng… Giồng như khi đối diện với mặt nước hồ phẳng lặng, Cố Mạn sẽ rải lên đó một vài cánh hoa hồng…\"</p>  <p style=\"text-align: justify;\"><strong>(Độc giả Bluehopeatm)</strong></p>  <p style=\"text-align: justify;\">\"Thế giới của Yêu em từ cái nhìn đầu tiên là thế giới màu hồng dịu ngọt… Tuy không thực tế nhưng vẫn khiến ta phải mỉm cười, phải yêu mến.Độc giả Linh_SuriYêu em từ cái nhìn đầu tiên là một câu chuyện nhẹ nhàng ấm áp, một câu chuyện tình đẹp đến nỗi ta không dám tin nó có thực.\"</p>  <p style=\"text-align: justify;\"><strong>(Độc giả Khiconkhocnhe_1992)</strong></p>', '2014-10-14', 0, 1, 1, 3, 'NXB Văn Học', 508, 0, 95200, 119000, './img/product/product-5.jpg', NULL, '2017-05-27 00:40:25', '2017-05-27 00:40:25'),
(6, 'Cây Cam Ngọt Của Tôi', '', '0000-00-00', 1, 1, 2, 1, '', 1, 1, 75000, 0, './img/featured/feature-1.jpg', '#', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`),
  ADD KEY `books_company_id_foreign` (`company_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `books_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
