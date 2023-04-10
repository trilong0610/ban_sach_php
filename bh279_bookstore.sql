
-- Database: `bh279_bookst
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_info` mediumtext COLLATE utf8mb4_unicode_ci,
  `author_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `author_info`, `author_image`) VALUES
(1, '2.1/2 Bạn Tốt', 'Tác giả: <b>2.1/2 Bạn Tốt</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(2, 'A.J.Hoge', 'Tác giả: <b>A.J.Hoge</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(3, 'Accototo', 'Tác giả: <b>Accototo</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(4, 'Adam Khoo & Gary Lee', 'Tác giả: <b>Adam Khoo & Gary Lee</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(5, 'Adam Khoo', 'Tác giả: <b>Adam Khoo</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(6, 'Agatha Christie', 'Tác giả: <b>Agatha Christie</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(7, 'Akiko Hayashi', 'Tác giả: <b>Akiko Hayashi</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(8, 'Alain de Botton', 'Tác giả: <b>Alain de Botton</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(9, 'Alan Phan ', 'Tác giả: <b>Alan Phan </b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(10, 'Alan Watts', 'Tác giả: <b>Alan Watts</b><br><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),

-- -------------------------------------------------------
-- Table structure for table `books`
CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `publish_date` date DEFAULT NULL,
  `suggest` int(11) DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `publishing_house` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_pages` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT '0',
  `price` bigint(20) DEFAULT NULL,
  `cover_price` bigint(20) DEFAULT NULL,
  `book_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `description`, `publish_date`, `suggest`, `author_id`, `company_id`, `category_id`, `publishing_house`, `translator`, `number_of_pages`, `quality`, `price`, `cover_price`, `book_image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'You Can Win - Bí Quyết Của Người Chiến Thắng (Tái Bản)', '<p style="text-align: justify;"><span style="color: #ff6600; font-size: medium;"><strong>You Can Win - Bí Quyết Của Người Chiến Thắng</strong></span><br /><strong></strong></p>  <p style="text-align: justify;">Với cách đặt vấn đề dễ hiểu, thiết thực và sâu sắc, <strong>Bí quyết của người chiến thắng</strong> sẽ giúp bạn tránh rơi vào cảm giác mất phương hướng, biết xác định mục tiêu và những giá trị cần ưu tiên trong cuộc sống. <span style="font-size: 12px;">Có  thể xem cuốn sách này như một quyển sổ tay liệt kê những công cụ cần  thiết để kiến tao thành công và giúp bạn tạo lập một cuộc sống tốt đẹp.  Cũng có thể xem nó như một cuốn cảm nang dạy nấu ăn, bao gồm những chỉ  dần về nguyên liệu, công thức và cách pha trộn theo tỉ lệ thích hợp để  có được thành công.</span></p>  <p style="text-align: justify;">Nhưng  trên hết, đây là cuốn sách từng bước dẫn dặt bạn đi từ mơ ước, khát vọng  thành công đến khám phá năng lực của bản thân và biến ước mơ thành hiện  thực.   <span style="font-size: 12px;">Bí  quyết sẽ giúp bạn xây dựng mục tiêu mới, hình thành ý niệm mới về mục  đích sống, phát triển tư tưởng mới về bản thân và tương lai.</span></p>  <p style="text-align: justify;">Một  trong những mục đích của cuốn sách là giúp bạn đề ra kế hoạch hành động  cho tương lai. Nếu chưa bao giờ làm vậy, bạn hãy xác định xem:</p>  <p style="text-align: justify;">- Bạn muốn đạt được điều gì?</p>  <p style="text-align: justify;">- Bạn muốn đạt được mục tiêu bằng cách nào?</p>  <p style="text-align: justify;">- Thời điểm bạn muốn đạt được mục tiêu là khi nào?</p>  <p style="text-align: justify;">Những  nguyên tắc trình bày trong cuốn sách đều mang tính phổ quát, áp dụng cho  mọi tình huống, tổ chức hoặc quốc gia. Hy vọng cuốn sách sẽ mang lại  cho bạn nhiều điều mới mẻ v&agragrave; những khám phá thú vị.</p>', '2015-12-14', 1, 354, 1, 32, 'NXB Tổng hợp TP.HCM', 'null', 288, 1, 62000, 78000, '/storage/app/hinh-anh/anh-bia/you-can-win_1_1_1.jpg', NULL, '2017-05-27 14:40:25', '2017-05-27 14:40:25'),
(2, 'Yoga Toàn Thư', '<p style="text-align: justify;"><span style="color: #ff6600; font-size: medium;"><strong>Yoga Toàn Thư</strong></span></p>  <p style="text-align: justify;"><strong>Yoga Toàn Thư</strong> (The Complete Illustrated Book of Yoga) của Swami Vishnu Devananda đã dạy cho nhiều thế hệ phương Tây trải nghiệm những lợi ích lớn lao mà ngành khoa học cổ đại của Yoga hứa đem lại cho cơ thể, tâm trí, và tâm linh.Khả năng độc đáo của ông nằm trong việc giảng giải một cách rõ ràng ngay cả những khái niệm trừu tượng nhất. Swami Vishnu đề xướng một chương trình đào tạo toàn diện để đem sức mạnh của Yoga để cho:</p>  <p style="text-align: justify;">-Thư giãn và giữ tâm trí trẻ trung</p>  <p style="text-align: justify;">-Tăng sự khỏe mạnh thể chất và sự dẻo dai của cơ thể</p>  <p style="text-align: justify;">-Giải thích nhận thức tâm linh</p>  <p style="text-align: justify;">-Cải thiện khả năng tập trung</p>  <p style="text-align: justify;">-Giúp cơ thể sử dụng khí oxy và chất dinh dưỡng hiệu quả hơn</p>  <p style="text-align: justify;">-Ngừa bệnh và chậm lão hóa</p>  <p style="text-align: justify;">Với 146 hình trắng đen, Swami Vishnu-devananda còn làm mẫu tất cả những tư thế Yoga quan trọng, truyền đạt cho người mới nhập môn lẫn người tập cao cấp những chỉ dẫn chuyên môn cao và cảm hứng thường chỉ có được nhờ sự chỉ bảo trực tiếp của một người thầy giỏi.</p>  <p style="text-align: justify;">Swami Vishnu-devananda là một trong những người được thừa nhận là có uy quyền nhiều nhất về Hatha và Raja Yoga. Một đệ tử của Swami Sívananda, ông được thầy mình truyền cảm hứng để sáng lập Sivananda Yoga Vedanta Centers International, vốn đã thành lập nhiều trung tâm trên khắp nước Mỹ, Canada, và Châu Âu.</p>', '2014-06-14', 0, 366, 2, 7, 'NXB Thời Đại', 'null', 375, 4, 96000, 120000, '/storage/app/hinh-anh/anh-bia/img036_8.jpg', NULL, '2017-05-27 14:40:25', '2017-05-27 14:40:25'),
(3, 'Yêu Người Yêu Người Ta (Tái Bản 2014) - Tặng Kèm Phụ Bản Yêu Anh Hơn Người Anh Yêu', '<p style="text-align: justify;"><span style="color: #ff6600; font-size: medium;"><strong>Combo Yêu Người Yêu Người Ta (Tái Bản 2014) - Yêu Anh Hơn Người Anh Yêu</strong></span></p>  <p style="text-align: justify;"><em>“Giá được một chén say mà ngủ suốt triệu đêm </em></p>  <p style="text-align: justify;"><em>Khi tỉnh dậy anh đã chia tay với người con gái ấy.</em></p>  <p style="text-align: justify;"><em>Giá được anh hẹn hò dù phải chờ lâu đến mấy</em></p>  <p style="text-align: justify;"><em>Em sẽ chờ như thể một <a href="http://tiki.vn/tieu-thuyet-tinh-cam-lang-man/c844">tình yêu</a></em></p>  <p style="text-align: justify;"><em>”Giá em biết em yêu sai ngay từ phút đầu. Yêu lầm người đã là của người ta. Em có yêu điên cuồng say mê đến thế? Để mãi mãi trở thành kẻ thứ ba. Lặng lẽ bên anh. Lặng lẽ yêu anh chỉ có nước mắt là ngược xuôi chẳng thể lặng im nổi. Em biết em yêu anh hơn “người ta”</em>.</p>  <p style="text-align: justify;">Em biết em sẵn sàng đến bên anh kể cả những khi anh nhớ người và thổn thức gọi tên người. Em cũng biết lỗi của em là đến muộn, đến sau… chỉ vậy thôi. Em biết, anh yêu người ta nhiều như nỗi đau của em. Nhưng trái tim em vẫn gào lên vô vọng: YÊU ANH HƠN NGƯỜI ANH YÊU</p>  <p style="text-align: justify;"><strong>Yêu anh hơn người anh yêu</strong> là ấn phẩm phụ bản đi kèm <strong>Yêu người yêu người ta</strong> tái bản lần thứ 3. Cuốn sách nổi đình nổi đám suốt mùa hè rồi mùa thu qua.</p>  <p style="text-align: justify;">Và rằng: Bộ đôi <strong>Yêu người yêu người ta - Yêu anh hơn người anh yêu</strong> cũng sẽ gây sốt trong mùa đông này bởi tất cả những dư vị riêng không thể lẫn vào đâu được của ngòi bút <strong>Gia Đoàn</strong>. Không hoa mỹ, cầu kì, <strong>Gia Đoàn</strong> chỉ đang kể câu chuyện của mình, của bạn lặng lẽ, nhẹ nhàng như chẳng có gì mà đủ khiến mắt ta rơi nước mắt.</p>', '2014-11-14', 0, 113, 3, 31, 'NXB Văn Học', 'null', 270, 7, 74000, 92000, '/storage/app/hinh-anh/anh-bia/suc_manh_ngoi_but_01405080381.jpg', NULL, '2017-05-27 14:40:25', '2017-05-27 14:40:25'),
(4, 'Yêu Một Người Là Điều Giản Đơn?', '<p style="text-align: justify;"><span style="font-size: medium; color: #ff6600;"><strong>Yêu Một Người Là Điều Giản Đơn?</strong></span></p>  <p style="text-align: justify;"><em>Rồi cũng có ngày phải kể nhau nghe</em></p>  <p style="text-align: justify;"><em>những câu chuyện bình thường</em></p>  <p style="text-align: justify;"><em>của những yêu thương từng bỏ mình đi mất</em></p>  <p style="text-align: justify;"><em>Hóa ra cuộc đời giữa được và mất</em></p>  <p style="text-align: justify;"><em>chỉ tựa như ván bài đặt cược</em></p>  <p style="text-align: justify;"><em>thắng hay thua cũng đành cất riêng mình...</em></p>  <p style="text-align: justify;">Ai trong chúng ta mà chưa từng có những vết thương lòng, chưa từng cô đơn, chưa từng ôm trong tim những điều tiếc nuối? Nhưng những điều đó rồi có còn quan trọng trước những đẹp tươi đang chờ đợi ngày mai?</p>  <p style="text-align: justify;"><strong>Yêu một người là điều giản đơn? -</strong> là nỗi lòng, là lời thủ thỉ  tâm tình của một cô gái có <em>những nỗi-đau-tưởng-như-chẳng-thể-nào-qua-trong-đời, </em>như tất cả chúng ta.</p>  <p style="text-align: justify;"><em>Đến một độ tuổi, tự khắc bạn sẽ nhận ra, buồn hay cô đơn, chỉ là khoảnh khắc của bình yên đến muộn. Nên tôi cứ cho phép mình buồn, bởi đó là sự thật.</em></p>  <p style="text-align: justify;">Nếu bạn đọc cuốn sách này của Diệp Mộc Tử, bạn sẽ ngạc nhiên rằng sao nỗi buồn, nỗi cô đơn lại bình yên đến vậy. Tác giả khơi gợi những cảm xúc mà ta cất giấu lâu nay trong lòng, nhưng không mang vào đó những bi ai, mà chỉ nhẹ nhàng lấy những niềm đau đó ra đặt nhẹ nhàng trước mặt , ngắm nghía rồi để gió cuốn đi.</p>  <p style="text-align: justify;"><strong>Yêu một người là điều giản đơn?</strong> - không chỉ nói về cách yêu người, mà dường như người mà ta không biết cách yêu thương nhất chính là bản thân mình. Khi ta cần yêu thương, ta cứ mải miết đi tìm một người mang đến yêu thương cho mình và lại tự mang về những tổn thương khi lầm lỡ. Ta quên mất rằng, mình "<em>không cần ai để làm điểm tựa cho mình ngoài bản thân ra". </em></p>  <p style="text-align: justify;">Vì thế mà, chúng ta, dù đã, đang trải qua những nỗi buồn nào, cũng cứ bình yên mà sống, mà yêu thương. Vì "<em>là lá, sống thì phải xanh"</em>.</p>', '2016-11-14', 0, 236, 4, 6, 'NXB Văn Học', 'null', NULL, 1, 62000, 78000, '/storage/app/hinh-anh/anh-bia/cover--yeu-mot-nguoi-la-dieu-gian-don.u547.d20161101.t134821.768163.jpg', NULL, '2017-05-27 14:40:25', '2017-05-27 14:40:25'),
(5, 'Yêu Em Từ Cái Nhìn Đầu Tiên (Ấn Bản Kỷ Niệm) - Tặng Kèm 7 Bookmark Nhân Vật Và 3 Postcard', '<p style="text-align: justify;"><strong><span style="color: #ff6600; font-size: medium;"><a href="http://tiki.vn/yeu-em-tu-cai-nhin-dau-tien-an-ban-ky-niem-tang-kem-7-bookmark-nhan-vat-va-3-p118520.html">Yêu Em Từ Cái Nhìn Đầu Tiên</a></span></strong></p>  <p style="text-align: justify;">Nhắc đến<strong> Yêu em từ cái nhìn đầu tiên</strong> có lẽ không cần dùng quá nhiều lời, bởi cùng với <strong>Sam Sam đến đây ăn nào</strong>, <strong>Bên nhau trọn đời</strong>, <strong>Yêu em từ cái nhìn đầu tiên</strong> đã làm nên tên tuổi của<strong> Cố Mạn</strong> tại Việt Nam.</p>  <p style="text-align: justify;"><em>Đi cùng?</em></p>  <p style="text-align: justify;"><em>Hai chữ này kéo Vy Vy trở về hiện tại, lập tức hoàn hồn.Nhìn chiếc xe, lại nhìn Đại Thần, người đẹp Vy Vy lắp bắp:</em></p>  <p style="text-align: justify;"><em> “Em… em…”</em></p>  <p style="text-align: justify;"><em>Tiêu Nại hơi cau mày. Vy Vy trấn tĩnh nói: </em></p>  <p style="text-align: justify;"><em>“… Anh đèo em?”. </em></p>  <p style="text-align: justify;"><em>“Ừ, đường xa thế chẳng lẽ đi bộ?”. </em></p>  <p style="text-align: justify;"><em>Đường đến nhà thi đấu bóng rổ xa thế, đi bộ đương nhiên rất đáng sợ, nhưng… nhưng  đáng sợ hơn chính là anh đèo em! Vy Vy băn khoăn. Với danh tiếng nổi như cồn của Tiêu Nại, cộng thêm chút nổi tiếng nho nhỏ của Vy Vy, đèo nhau trên con đường này, chắc chắn sẽ có ngay những lời đồn hay ho cho coi! Tuy rằng họ hình như, hình như, có vẻ như đúng là đang tiến tới những nghi ngờ hay ho đó, nhưng hiện nay, bây giờ, lúc này họ tuyệt đối trắng tinh hơn cả lông cừu.</em></p>  <p style="text-align: justify;"><em>“Như thế này... như thế này... không ổn lắm. Người khác nhìn thấy sẽ hiểu nhầm”. </em></p>  <p style="text-align: justify;"><em>Vy Vy cố từ chối khéo, hai tai bắt đầu đỏ dần.</em></p>  <p style="text-align: justify;"><em>“Hiểu nhầm?”. </em></p>  <p style="text-align: justify;"><em>Chẳng lẽ anh không hiểu? Vy Vy đành nói thẳng:</em></p>  <p style="text-align: justify;"><em> “Hiểu nhầm chúng ta… ôi, là kiểu quan hệ đó…”. </em></p>  <p style="text-align: justify;"><em>Tiêu Nại lặng lẽ nhìn cô, hồi lâu không nói, Vy Vy cảm thấy một nỗi căng thẳng khó hiểu… mình không nói gì sai chứ? Đúng khi Vy Vy cảm thấy mỗi lúc càng căng thẳng hơn, cuối cùng Nại Hà phá vỡ bầu không khí yên lặng: </em></p>  <p style="text-align: justify;"><em>“Thế chúng ta không phải là kiểu quan hệ đó từ khi nào vậy?”. </em></p>  <p style="text-align: justify;"><strong>Yêu em từ cái nhìn đầu tiên</strong> từ khi phát hành cho đến nay đã nhận được vô vàn lời khen tặng của độc giả:</p>  <p style="text-align: justify;">"Văn chương của Cố Mạn lãng mạn, dịu dàng, khiến người đọc có cảm giác như đang trôi bồng bềnh trong mơ, vừa đọc vừa vén môi cười dịu dàng… Giồng như khi đối diện với mặt nước hồ phẳng lặng, Cố Mạn sẽ rải lên đó một vài cánh hoa hồng…"</p>  <p style="text-align: justify;"><strong>(Độc giả Bluehopeatm)</strong></p>  <p style="text-align: justify;">"Thế giới của Yêu em từ cái nhìn đầu tiên là thế giới màu hồng dịu ngọt… Tuy không thực tế nhưng vẫn khiến ta phải mỉm cười, phải yêu mến.Độc giả Linh_SuriYêu em từ cái nhìn đầu tiên là một câu chuyện nhẹ nhàng ấm áp, một câu chuyện tình đẹp đến nỗi ta không dám tin nó có thực."</p>  <p style="text-align: justify;"><strong>(Độc giả Khiconkhocnhe_1992)</strong></p>', '2014-10-14', 0, 55, 5, 3, 'NXB Văn Học', 'Nguyễn Trang', 508, 0, 95200, 119000, '/storage/app/hinh-anh/anh-bia/yeu-em-tu-cai-nhin-dau-tien_1_1.jpg', NULL, '2017-05-27 14:40:25', '2017-05-27 14:40:25'),
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` tinyint(4) NOT NULL,
  `order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- Dumping data for table `categories`
INSERT INTO `categories` (`id`, `category_name`, `parent_id`, `order`) VALUES
(1, 'Sách Tiếng Việt ', 0, 1),
(2, ' Sách Tiếng Anh', 0, 2),
(3, ' Sách Văn Học', 1, 1),
(4, 'Sách Thiếu Nhi ', 1, 2),
(5, 'Sách Kỹ Năng - Sống Đẹp', 1, 3),
-- Table structure for table `comments`
CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Dumping data for table `comments`
INSERT INTO `comments` (`id`, `book_id`, `user_id`, `title`, `content`, `rate`, `created_at`, `updated_at`) VALUES
(1, 144, 9, 'Một cuốn sách rất đáng đọc 0', 'Sách hay lắm :)) - comment số 0', 4, '2017-05-27 14:41:38', '2017-05-27 14:41:38'),
(2, 504, 3, 'Một cuốn sách rất đáng đọc 1', 'Sách hay lắm :)) - comment số 1', 4, '2017-05-27 14:41:38', '2017-05-27 14:41:38'),
(3, 371, 9, 'Một cuốn sách rất đáng đọc 2', 'Sách hay lắm :)) - comment số 2', 3, '2017-05-27 14:41:39', '2017-05-27 14:41:39'),
(4, 506, 5, 'Một cuốn sách rất đáng đọc 3', 'Sách hay lắm :)) - comment số 3', 4, '2017-05-27 14:41:39', '2017-05-27 14:41:39'),
(5, 284, 3, 'Một cuốn sách rất đáng đọc 4', 'Sách hay lắm :)) - comment số 4', 5, '2017-05-27 14:41:39', '2017-05-27 14:41:39'),
(6, 792, 7, 'Một cuốn sách rất đáng đọc 5', 'Sách hay lắm :)) - comment số 5', 4, '2017-05-27 14:41:39', '2017-05-27 14:41:39'),
(7, 797, 9, 'Một cuốn sách rất đáng đọc 6', 'Sách hay lắm :)) - comment số 6', 4, '2017-05-27 14:41:39', '2017-05-27 14:41:39'),
-- Table structure for table `companies`
CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_info` text COLLATE utf8mb4_unicode_ci,
  `company_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- Dumping data for table `companies`
--
INSERT INTO `companies` (`id`, `company_name`, `company_info`, `company_image`) VALUES
(1, 'First News - Trí Việt', 'Công ty phát hành sách: <b>First News - Trí Việt</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', '/storage/app/company-image/fn.jpg'),
(2, 'Công ty Văn hóa Hương Trang', 'Công ty phát hành sách: <b>Công ty Văn hóa Hương Trang</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(3, 'Skybooks', 'Công ty phát hành sách: <b>Skybooks</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(4, 'Người Trẻ Việt', 'Công ty phát hành sách: <b>Người Trẻ Việt</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(5, 'Quảng Văn', 'Công ty phát hành sách: <b>Quảng Văn</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(6, 'NXB Trẻ', 'Công ty phát hành sách: <b>NXB Trẻ</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', '/storage/app/company-image/tre.png'),
(7, 'Limbooks', 'Công ty phát hành sách: <b>Limbooks</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(8, 'Đinh Tị', 'Công ty phát hành sách: <b>Đinh Tị</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
(9, 'Alphabooks', 'Công ty phát hành sách: <b>Alphabooks</b> <h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', NULL),
-- Table structure for table `migrations`
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `migrations`
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_05_164701_add_colums_into_user_table', 1),
(4, '2017_03_06_105226_create_categories_table', 1),
(5, '2017_03_08_193853_create_authors_table', 1),
(6, '2017_03_08_193908_create_companies_table', 1),
(7, '2017_03_09_141230_create_slides_table', 1),
-- Table structure for table `orders`

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Đang xử lý đơn hàng',
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneReceiver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameReceiver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fee` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `orders`
--
INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `order_status`, `shipping_address`, `phoneReceiver`, `nameReceiver`, `shipping_fee`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Đang xử lý đơn hàng', 'Nhà số 1 Văn Tiến Dũng, HN City ^_^ ', '090008010210', 'Tên người nhận 1', 20000, '2017-05-27 14:40:47', '2017-05-27 14:40:47'),
(2, 3, 2, 'Đang xử lý đơn hàng', 'Nhà số 2 Văn Tiến Dũng, HN City ^_^ ', '09000256103', 'Tên người nhận 2', 0, '2017-05-27 14:40:47', '2017-05-27 14:40:47'),
(3, 1, 3, 'Đang xử lý đơn hàng', 'Nhà số 3 Văn Tiến Dũng, HN City ^_^ ', '0900030121', 'Tên người nhận 3', 0, '2017-05-27 14:40:47', '2017-05-27 14:40:47'),
(4, 3, 4, 'Đang xử lý đơn hàng', 'Nhà số 4 Văn Tiến Dũng, HN City ^_^ ', '09000910869', 'Tên người nhận 4', 0, '2017-05-27 14:40:47', '2017-05-27 14:40:47'),
(5, 1, 5, 'Đang xử lý đơn hàng', 'Nhà số 5 Văn Tiến Dũng, HN City ^_^ ', '0900079435', 'Tên người nhận 5', 0, '2017-05-27 14:40:47', '2017-05-27 14:40:47'),
(6, 4, 6, 'Đang xử lý đơn hàng', 'Nhà số 6 Văn Tiến Dũng, HN City ^_^ ', '09000201042', 'Tên người nhận 6', 20000, '2017-05-27 14:40:48', '2017-05-27 14:40:48'),
(7, 3, 7, 'Đang xử lý đơn hàng', 'Nhà số 7 Văn Tiến Dũng, HN City ^_^ ', '0900012588', 'Tên người nhận 7', 0, '2017-05-27 14:40:48', '2017-05-27 14:40:48'),
(8, 4, 8, 'Đang xử lý đơn hàng', 'Nhà số 8 Văn Tiến Dũng, HN City ^_^ ', '0900045881', 'Tên người nhận 8', 0, '2017-05-27 14:40:48', '2017-05-27 14:40:48'),
(9, 3, 9, 'Đang xử lý đơn hàng', 'Nhà số 9 Văn Tiến Dũng, HN City ^_^ ', '0900081868', 'Tên người nhận 9', 20000, '2017-05-27 14:40:48', '2017-05-27 14:40:48'),
-- Table structure for table `order_details`
--
CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `quality` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Dumping data for table `order_details`
-

INSERT INTO `order_details` (`id`, `order_id`, `book_id`, `price`, `quality`) VALUES
(1, 74, 187, 100000, 3),
(2, 42, 111, 100000, 4),
(3, 59, 122, 20000, 4),
(4, 59, 113, 30000, 2),
(5, 27, 80, 70000, 8),
(6, 97, 114, 160000, 2),
(7, 53, 11, 50000, 2),
(8, 31, 64, 100000, 1),
(9, 13, 66, 70000, 5),
(10, 36, 112, 140000, 7),
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table structure for table `payments`
CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
---- Dumping data for table `payments`
--INSERT INTO `payments` (`id`, `payment_status`, `payment_type`, `amount`, `created_at`, `updated_at`, `remember_token`) VALUES
--(1, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:28', '2017-05-27 14:40:28', '$2y$10$zlshbyASsJlXHpYyFqXrFOB1LkuXMtHKN.wLvpeTA/v7sSN87ldNi'),
--(2, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:29', '2017-05-27 14:40:29', '$2y$10$E4FV3ol8xrbkzKGdCCarHOln9agsiceMNgp5BU7M7Hj5gApdP1PJa'),
--(3, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:29', '2017-05-27 14:40:29', '$2y$10$Z27G8klcmDP8OCKYwukB2uOexP9hDXukP/XXlyAKghtqRGJEjRWSS'),
--(4, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:29', '2017-05-27 14:40:29', '$2y$10$msNqvm2H87jgBHP/sdLTAemDTk/jtfoK.7fjFsAbHR5tupWprKxWO'),
--(5, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:29', '2017-05-27 14:40:29', '$2y$10$nkjWyVa6TS4gyimM0wPrJOwt9ovJYAECshXX0f1fE9drEZHdzObsW'),
--(6, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:29', '2017-05-27 14:40:29', '$2y$10$Y1jr7U.8AJ.q1cMiK.3XVO3Ceak0k0QP8iB7xFnSZ3vWL1mphneIq'),
--(7, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:30', '2017-05-27 14:40:30', '$2y$10$Tukf0kU8vloFRdujAeEUEu4YTLEJzHY1GRchk3VOv5X41ra9rdMFC'),
--(8, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:30', '2017-05-27 14:40:30', '$2y$10$p7TTgrUjTbhJUgxxWyv.POHLm5dRE211fQ6H49bbpPPXz0ntjQiJS'),
--(9, 'Chưa thanh toán', 'Thanh toán bằng thẻ ATM', 10000, '2017-05-27 14:40:30', '2017-05-27 14:40:30', '$2y$10$LTG4bwayrN4jARHhcAsufuXjm8OSYHXTf3fq059mzpW2N6Nwp73B2'),

--
-- Table structure for table `saves`
--

CREATE TABLE `saves` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saves`
--

INSERT INTO `saves` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 9, 10, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
(2, 11, 51, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
(3, 15, 76, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
(4, 2, 76, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
(5, 7, 114, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
(6, 5, 70, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),

-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slide_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `order` smallint(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

--INSERT INTO `slides` (`id`, `slide_image`, `link`, `order`, `status`, `created_at`, `updated_at`) VALUES
--(1, '/storage/app/slide-image/1.png', '#', 1, 1, '2017-05-27 14:44:38', '2017-05-27 14:44:38'),
--(2, '/storage/app/slide-image/2.png', '#', 1, 1, '2017-05-27 14:44:38', '2017-05-27 14:44:38'),
--(3, '/storage/app/slide-image/3.png', '#', 1, 1, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
--(4, '/storage/app/slide-image/4.png', '#', 1, 1, '2017-05-27 14:44:39', '2017-05-27 14:44:39'),
--(5, '/storage/app/slide-image/5.png', '#', 1, 1, '2017-05-27 14:44:39', '2017-05-27 14:44:39');
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT '0' COMMENT '0:customer, 1:mod, 2:admin',
  `block` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true:block',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true:delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `level`, `block`, `deleted`) VALUES
(1, 'Adminstrator', 'buihai2603@gmail.com', '$2y$10$SytVHqMLRdinmFpysFvRieo0XHVIGhk22QrpYIZ6OjPZSQ1BoDrOW', NULL, '2017-05-27 14:40:19', '2017-05-27 14:40:19', 1664872279, 'Từ liêm Hà nội', 2, 0, 0),
(2, 'Mod', 'mod@gmail.com', '$2y$10$mUoQD1VUX0BbeMvm/xf8..vBbkvH.YEisQ8F/3HKaiiB2fDaaLC4S', NULL, '2017-05-27 14:40:19', '2017-05-27 14:40:19', 1664872279, 'Từ liêm Hà nội', 1, 0, 0),
(3, 'Người dùng 3', 'member3@gmail.com', '$2y$10$xqWIMVoyjL0M1B/qteuzs.FdL9EpR5JHfn.wr7R2jiEjHeZ5aWGTa', NULL, '2017-05-27 14:40:19', '2017-05-27 14:40:19', 1664872279, 'Địa chỉ nhà số 3 Văn Tiến Dũng, HN', 0, 0, 0),
(4, 'Người dùng 4', 'member4@gmail.com', '$2y$10$d2.cUqVwQQosVdoW7PXZJeHnoh/bpgahH22nvTgTseOVpvIHpupP2', NULL, '2017-05-27 14:40:19', '2017-05-27 14:40:19', 1664872279, 'Địa chỉ nhà số 4 Văn Tiến Dũng, HN', 0, 0, 0),
(5, 'Người dùng 5', 'member5@gmail.com', '$2y$10$jtwlreqPRy.wqU/djhLTdOiTazH4O78SDJVWgGFjUDYjF4t3ZuASi', NULL, '2017-05-27 14:40:20', '2017-05-27 14:40:20', 1664872279, 'Địa chỉ nhà số 5 Văn Tiến Dũng, HN', 0, 0, 0),
(6, 'Người dùng 6', 'member6@gmail.com', '$2y$10$3XxdRNym.ONxh.2KZKB0Aua4jnBFeAqKMt6kyMixAx4o00GMXktvK', NULL, '2017-05-27 14:40:20', '2017-05-27 14:40:20', 1664872279, 'Địa chỉ nhà số 6 Văn Tiến Dũng, HN', 0, 0, 0),
(7, 'Người dùng 7', 'member7@gmail.com', '$2y$10$gHAEjru9ya8y3RqgRSeMSucKxvPboSvk2ZVYlXY5.QGDtcL33A5Y.', NULL, '2017-05-27 14:40:20', '2017-05-27 14:40:20', 1664872279, 'Địa chỉ nhà số 7 Văn Tiến Dũng, HN', 0, 0, 0),

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`),
  ADD KEY `books_company_id_foreign` (`company_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_category_name_index` (`category_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_book_id_foreign` (`book_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_book_id_foreign` (`book_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saves_user_id_foreign` (`user_id`),
  ADD KEY `saves_book_id_foreign` (`book_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2001;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `saves`
--
ALTER TABLE `saves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `saves`
--
ALTER TABLE `saves`
  ADD CONSTRAINT `saves_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `saves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
