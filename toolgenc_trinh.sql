-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 19, 2021 lúc 12:55 AM
-- Phiên bản máy phục vụ: 10.3.29-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `toolgenc_trinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bodies`
--

CREATE TABLE `bodies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bodies`
--

INSERT INTO `bodies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đầu', '2021-05-24 04:06:44', '2021-05-24 04:06:44'),
(2, 'Cổ', '2021-05-24 04:06:56', '2021-05-24 04:06:56'),
(3, 'Ngực', '2021-05-24 04:07:03', '2021-05-24 04:07:03'),
(4, 'Bụng', '2021-05-24 04:07:11', '2021-05-24 04:07:11'),
(5, 'Bộ sinh', '2021-05-24 04:07:19', '2021-05-24 04:07:19'),
(6, 'Da', '2021-05-24 04:07:37', '2021-05-24 04:07:37'),
(7, 'Tứ chi', '2021-05-24 04:07:45', '2021-05-24 04:07:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bodiesdetails`
--

CREATE TABLE `bodiesdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bodies` int(11) DEFAULT NULL,
  `discriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prevent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treatment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bodiesdetails`
--

INSERT INTO `bodiesdetails` (`id`, `id_bodies`, `discriptions`, `created_at`, `updated_at`, `overview`, `reason`, `symptom`, `prevent`, `treatment`) VALUES
(1, 1, 'Viêm màng não', '2021-05-24 04:17:37', '2021-05-24 08:50:09', 'Viêm màng não là một dạng nhiễm trùng ở các lớp mô quanh não bộ và tủy sống và thường do vi khuẩn HI, phế cầu, mô cầu hoặc do virut, ký sinh, nấm gây ra.', 'Bệnh viêm màng não ở người lớn nếu không được phát hiện và điều trị kịp thời có thể gây ra nhiều biến chứng nguy hiểm. Nếu phát hiện một trong những biểu hiện sau đây bạn cần đến ngay bệnh viện hoặc cơ sở y tế chuyên khoa gần nhất để làm xét nghiệm và đưa ra hướng điều trị kịp thời:\r\n-Sốt.\r\n-Đau đầu.\r\n-Cứng gáy.\r\n-Sợ ánh sáng.\r\n-Buồn nôn, nôn.\r\n-Một số dấu hiệu rối loạn chức năng não như: Lơ mơ, lú lẫn, hôn mê cấp tính trong vài giờ đến vài ngày hoặc có thể kéo dài hàng tuần. Hầu như các triệu chứng đều xuất hiện không rõ ràng, gặp ở cả nhóm người cao tuổi, nhất là khi có bệnh kèm theo (đái đường, bệnh gan, bệnh thận), bệnh nhân giảm bạch cầu trung tính, bệnh nhân suy giảm miễn dịch khác như người ghép tạng, bệnh nhân HIV/AIDS.', 'Nhận biết rối loạn tuần hoàn não cấp và mạn tính Thiểu năng tuần hoàn não có thể xảy ra cấp tính nhưng bệnh cũng có thể trở thành mạn tính kéo dài. Bệnh cấp tính thường có đau đầu. Đau đầu là triệu chứng hay gặp nhất trong thieu năng tuần hoàn não, thường chiếm tỷ lệ rất cao (khoảng 90%) và cũng là triệu chứng xuất hiện sớm nhất. Tính chất của đau đầu lan toả khắp đầu, nhức hoặc ê ẩm, nặng đầu. Kèm theo đau nhức đầu là ù tai, chóng mặt, hoa mắt, mất thăng bằng (khó ngồi, khó đứng dậy), nhất là lúc đang nằm mà thay đổi tư thế (nắm nghiêng chuyển sang nằm ngửa). Tỷ lệ bị chóng mặt chiếm tỷ lệ khá cao (khoảng 87%). Nặng hơn là có thể xây xầm mặt mày, mất ý thức, đột quy. Người bệnh có thể buồn nôn hoặc nôn, có thể liệt nửa người, nói khó.. Người bệnh cũng có thể bị chứng dị cảm như thấy tê đầu ngón tay, ngón chân hoặc tê bì tay chân hoặc có cảm giác kiến bò. Bệnh thiểu năng tuần hoàn não cấp tính ở người cao tuổi có thể chỉ thoáng qua trong vài giây, vài phút nhưng có khi cũng có thể xảy ra hàng giờ, mấy ngày liền. Thiểu năng tuần hoàn não cấp tính thường xảy ra vào giữa đêm hoặc lúc gần sáng. Bệnh thiểu năng tuần hoàn não mạn tính ở người cao tuổi thường cũng có nhức đầu ê ẩm từng đợt, nhất là thay đổi thời tiết, chóng quên (vãng ý thức), rối loạn tâm lý như hay cáu giận, buồn vui lẫn lộn, mất ngủ kéo dài hoặc rối loạn giấc ngủ (ngủ ít, ngủ không ngon giấc, đang ngủ lại bị tỉnh giấc không thể nào ngủ lại được nữa...). Trong một thời gian nhất định có thể xuất hiện cơn cấp tính tuỳ thuộc vào việc phòng bệnh và điều trị của người bệnh có tích cực và hiệu quả hay không. Thieu năng tuần hoàn não gây nên hiện tượng thiếu máu não và cũng có thể gây nên phù não. Điều đáng lo ngại nhất của thiểu năng tuần hoàn não là gây nên các biến chứng nặng nề như nhũn não hoặc xuất huyết não gây liệt nửa người hoặc tử vong đột ngột. APK', 'Nhận biết rối loạn tuần hoàn não cấp và mạn tính Thiểu năng tuần hoàn não có thể xảy ra cấp tính nhưng bệnh cũng có thể trở thành mạn tính kéo dài. Bệnh cấp tính thường có đau đầu. Đau đầu là triệu chứng hay gặp nhất trong thieu năng tuần hoàn não, thường chiếm tỷ lệ rất cao (khoảng 90%) và cũng là triệu chứng xuất hiện sớm nhất. Tính chất của đau đầu lan toả khắp đầu, nhức hoặc ê ẩm, nặng đầu. Kèm theo đau nhức đầu là ù tai, chóng mặt, hoa mắt, mất thăng bằng (khó ngồi, khó đứng dậy), nhất là lúc đang nằm mà thay đổi tư thế (nắm nghiêng chuyển sang nằm ngửa). Tỷ lệ bị chóng mặt chiếm tỷ lệ khá cao (khoảng 87%). Nặng hơn là có thể xây xầm mặt mày, mất ý thức, đột quy. Người bệnh có thể buồn nôn hoặc nôn, có thể liệt nửa người, nói khó.. Người bệnh cũng có thể bị chứng dị cảm như thấy tê đầu ngón tay, ngón chân hoặc tê bì tay chân hoặc có cảm giác kiến bò. Bệnh thiểu năng tuần hoàn não cấp tính ở người cao tuổi có thể chỉ thoáng qua trong vài giây, vài phút nhưng có khi cũng có thể xảy ra hàng giờ, mấy ngày liền. Thiểu năng tuần hoàn não cấp tính thường xảy ra vào giữa đêm hoặc lúc gần sáng. Bệnh thiểu năng tuần hoàn não mạn tính ở người cao tuổi thường cũng có nhức đầu ê ẩm từng đợt, nhất là thay đổi thời tiết, chóng quên (vãng ý thức), rối loạn tâm lý như hay cáu giận, buồn vui lẫn lộn, mất ngủ kéo dài hoặc rối loạn giấc ngủ (ngủ ít, ngủ không ngon giấc, đang ngủ lại bị tỉnh giấc không thể nào ngủ lại được nữa...). Trong một thời gian nhất định có thể xuất hiện cơn cấp tính tuỳ thuộc vào việc phòng bệnh và điều trị của người bệnh có tích cực và hiệu quả hay không. Thieu năng tuần hoàn não gây nên hiện tượng thiếu máu não và cũng có thể gây nên phù não. Điều đáng lo ngại nhất của thiểu năng tuần hoàn não là gây nên các biến chứng nặng nề như nhũn não hoặc xuất huyết não gây liệt nửa người hoặc tử vong đột ngột. APK', 'Những thuốc thường dùng - Cinnarizin: Cinnarizin có tác dụng ức chế sự co các tế bào cơ trơn mạch máu bằng cách phong tỏa kênh canxi, có tính chất chọn lọc trên mô, mang lại các đặc tính kháng co mạch mà không tác động trên huyết áp và nhịp tim. Thuốc làm tăng lưu lượng máu đến các vùng và giảm tình trạng thiếu ôxy não mà không làm tăng áp lực máu và nhịp tim. Thuốc làm cải thiện tình trạng suy giảm vi tuần hoàn bằng cách gia tăng thay đổi hình dạng hồng cầu và giảm độ nhớt của máu. Cinnarizin ức chế sự kích thích hệ thống tiền đình làm giảm rung giật nhãn cầu và các rối loạn thực vật khác, vì thế, các cơn chóng mặt cấp tính có thể được ngăn chặn hoặc giảm thiểu bởi cinnarizin. Rối loạn tuần hoàn não gây ra Ihiều triệu chứng khác nhau Thuốc được chỉ định trong các trường hợp có rối loạn mê đạo bao gồm chóng mặt, choáng váng, ù tai, buồn nôn, nôn, rung giật nhãn cầu. Điều trị duy trì các triệu chứng có nguồn gốc từ tuần hoàn não như suy giảm trí nhớ, kém tập trung, nhức đầu vận mạch... Là thuốc kháng histamin nên có thể gây khó chịu vùng thượng vị, vì thế thuốc thường dùng sau bữa ăn để giảm kích ứng dạ dày. Ngoài ra, khi dùng thuốc có thể gặp một số tác dụng phụ như buồn ngủ, nhức đầu, khô miệng, tăng cân... Thuốc làm tăng tác dụng của các thuốc an thần, thuốc kháng histamin khác. - Cerebrolysin: Là một hợp chất chứa các peptid và acid amin được sản xuất từ protein tinh khiết ở não lợn bằng công nghệ sinh học. Là thuốc thuộc nhóm dinh dưỡng tế bào thần kinh, tác động lên não theo nhiều cơ chế khác nhau như: tăng cường chuyển hóa của các tế bào thần kinh, do đó ngăn chặn hiện tượng nhiễm acid lactic trong thiếu ôxy não hoặc thiếu máu não. Điều chỉnh sự dẫn truyền synap thần kinh, từ đó cải thiện hành vi và khả năng học tập. Piracetam: Có tác động trực tiếp lên não và hệ thống dẫn truyền thần kinh trung tâm làm tăng cường khả năng học tập, trí nhớ, sự tập trung và chức năng nhận thức. Thuốc bảo vệ não chống lại sır thiếu hut ôyv máu não alucose não nên duy trì tổng hơn năng'),
(2, 2, 'Thoát vị đĩa đệm', '2021-05-24 05:08:58', '2021-05-24 08:58:38', 'Thoát vị đĩa đệm là hệ quả do đĩa đệm bị nứt, rách hoặc do tác động từ các sang chấn bên ngoài. Thoát vị đĩa đệm có thể xảy ra ở bất cứ khu vực nào trên cột sống. Trong đó, thoát vị đĩa đệm cột sống thắt lưng và  thoát vị đĩa đệm cổ thường xảy ra phổ biến nhất.', 'Đối tượng dễ bị thoát vị đĩa đệm:\r\n\r\nNgười cao tuổi.\r\n\r\nNgười thường xuyên làm các công việc nặng nhọc.\r\n\r\nNgười thường xuyên đứng hoặc ngồi quá lâu như nhân viên văn phòng, thợ may, tài xế, nhân viên bán hàng…\r\n\r\nNgười có thói quen sinh hoạt không khoa học như kê gối quá cao khi ngủ, ngồi học tập, làm việc không đúng tư thế…\r\n\r\nNhững người làm nghề đòi hỏi phải thay đổi tư thế một cách liên tục như diễn viên múa, vận động viên thể thao…\r\n\r\nNgười mắc các bệnh lý bẩm sinh về cột sống như trượt cột sống, gai cột sống, vẹo cột sống...', 'Khi bị thoát vị đĩa đệm, người bệnh sẽ xuất hiện các triệu chứng sau:\r\n\r\nXuất hiện những cơn đau đột ngột ở vùng thắt lưng, vùng cổ, vùng vai gáy và chân tay. Tần suất các cơn đau có thể kéo dài âm ỉ trong vòng vài ngày, vài tuần hoặc vài tháng. Đặc biệt, mức độ đau giảm khi nghỉ ngơi và tăng dần lên khi vận động.\r\n\r\nTay chân bị tê bì, bị rối loạn cảm giác, luôn có cảm giác như có kiến bò ở trong xương.\r\n\r\nCơ bị yếu, bại liệt: Đây là triệu chứng thường gặp khi bệnh đã chuyển sang giai đoạn nặng. Lúc này, người bệnh sẽ rất khó khăn trong việc đi lại, hai chân bị teo và liệt và bắt buộc phải ngồi xe lăn.\r\n\r\nXuất hiện cảm giác bí tiểu hoặc són tiểu.\r\n\r\nKhi nhận thấy cơ thể có những triệu chứng này, bệnh nhân cần đến các cơ sở y tế để thăm khám và điều trị kịp thời. Điều này là vô cùng quan trọng và cần thiết để ngăn chặn bệnh tiến triển nặng hơn.', 'Một biến chứng thường gặp của thoát vị đĩa đệm chính là gây ra hội chứng đuôi ngựa. Lúc này, người bệnh sẽ bị rối loạn cảm giác ở vùng đáy chậu, vùng chân trở xuống. Sau đó, bệnh nhân sẽ bị liệt động tác ở ngón chân, bàn chân và cẳng chân.', 'Để điều trị thoát vị đĩa đệm, bạn có thể lựa chọn các phương pháp điều trị như:\r\n\r\nĐiều trị nội khoa với thuốc:\r\n\r\nThuốc giảm đau không chứa corticoid, hay còn có tên gọi là NSAID. Điển hình như Paracetamol, Meloxicam, Diclofenac...\r\n\r\nNhóm thuốc giãn cơ.\r\n\r\nThuốc corticoid (Bao gồm cả đường tiêm và uống).\r\n\r\nThuốc chống động kinh.\r\n\r\nĐiều trị không sử dụng thuốc:\r\n\r\nChâm cứu, massage, bấm huyệt, tập các bài tập yoga…\r\n\r\nKéo giãn cột sống.\r\n\r\nThực hiện các bài tập vật lý trị liệu.'),
(3, 1, 'Suy nhược thần kinh', '2021-05-24 05:23:14', '2021-05-24 05:23:14', 'Suy nhược thần kinh còn được biết đến là kiệt quệ thần kinh. Đây là tình trạng rối loạn chức năng của vỏ não và một số trung khu dưới vỏ do tế bào não phải làm việc quá căng thẳng, dẫn tới tình trạng quá tải và suy nhược, ảnh hưởng nghiêm trọng tới quá trình hồi phục và tái tạo toàn bộ các cơ quan trong cơ thể.\r\n\r\nChứng suy nhược thần kinh là tâm bệnh, nhưng nếu không được can thiệp sớm sẽ để lại hậu quả nghiêm trọng cả về thể chất lẫn tinh thần.', 'Nguyên nhân phổ biến nhất dẫn tới suy nhược thần kinh bắt nguồn từ những yếu tố gây chấn thương tâm thần tác động tới người bệnh. Những yếu tố này có thể ít hay nhiều, tuy nhiên chúng thường xảy ra liền kề nhau hoặc kết hợp với nhau, về lâu dài có thể trở thành tâm bệnh khó chữa.\r\n\r\nSự căng thẳng quá mức dẫn tới rối loạn các hoạt động thần kinh và gây ra suy nhược thần kinh. Chứng bệnh này hầu hết được phát sinh do các yếu tố bên ngoài tác động vào, cũng có thể đến từ sự mệt mỏi quá mức của cơ thể hoặc quá căng thẳng về tâm thần. Bệnh sẽ xuất hiện dần sau một khoảng thời gian sang chấn tâm lý và ngày một biểu hiện rõ rệt khi có các nhân tố thúc đẩy. Những nhân tố này bao gồm thần kinh yếu, cuộc sống quá mệt mỏi, lao động trí óc căng thẳng, môi trường sống và làm việc có nhiều nhân tố kích thích, tiếng ồn, mắc các bệnh viêm nhiễm mạn tính như viêm loét dạ dày, viêm xoang, viêm túi mật, người nghiện rượu nặng, thiếu dinh dưỡng, mất ngủ lâu ngày hoặc kiệt sức.', 'Bạn có thể dựa vào những triệu chứng được liệt kê dưới đây để xác định xem liệu mình có bị suy nhược thần kinh hay không. Các dấu hiệu và triệu chứng thường thấy của suy nhược thần kinh, bao gồm:', 'Suy nhược thần kinh thường bắt nguồn từ lối sống không lành mạnh, bao gồm sống cùng với sự căng thẳng và áp lực quá độ mà không thể giải tỏa, thường xuyên sử dụng các chất kích thích hoặc gây nghiện như rượu, cà phê, thuốc lá; thường xuyên nổi nóng, cãi cọ hoặc xô xát với những người xung quanh; chế độ ăn uống nhiều chất béo, thường sử dụng đồ ăn nhanh; chế độ nghỉ ngơi không điều độ.\r\n\r\nLời khuyên tốt nhất cho bạn và mọi người để đẩy lùi suy nhược thần kinh đó là thay đổi thói quen sống hàng ngày. Bạn nên lên kế hoạch cho mình tuân theo một lối sống tích cực và lành mạnh hơn, giúp những cảm xúc căng thẳng, stress của bản thân được giải tỏa. Lối sống lành mạnh tức là:', 'Cuộc sống xã hội hiện đại có nhiều căng thẳng stress dẫn đến tình trạng suy nhược thần kinh rất phổ biến hiện nay. Để cải thiện được hiện tượng này, chúng ta cần phải bảo vệ cơ thể tránh khỏi những căng thẳng lo âu trong cuộc sống, đồng thời bổ sung đầy đủ những dưỡng chất cần thiết để có một bộ não thật khỏe mạnh.'),
(4, 1, 'Bệnh động kinh', '2021-05-24 05:25:50', '2021-05-24 05:25:50', 'Động kinh là rối loạn của hệ thống thần kinh trung ương (thần kinh) trong đó hoạt động của não bị thay đổi, gây giật hoặc thời gian hành vi và cảm giác bất thường và đôi khi bị mất ý thức trong thời gian. short time.', 'Không rõ nguyên nhân ở một nửa số người mắc bệnh. Trong nửa còn lại, bệnh có thể xảy ra do một số nguyên nhân bao gồm:\r\n\r\nẢnh hưởng di truyền: Một số loại động kinh của di truyền. Các nhà nghiên cứu đã liên kết một số loại động kinh với các gen cụ thể, nhưng trong hầu hết các trường hợp gen chỉ là một phần của nguyên nhân gây động kinh. Một số gen có thể khiến một người nhạy cảm hơn với các điều kiện môi trường gây ra động kinh.\r\n\r\nChấn thương sọ não:  do tai nạn xe hơi hoặc chấn thương khác tác động đến não có thể gây ra động kinh.\r\n\r\nCác bệnh về não gây tổn thương não, như khối u não hoặc đột quỵ, có thể gây ra chứng động kinh. Đột quỵ là nguyên nhân chính gây động kinh ở người lớn trên 35 tuổi.\r\n\r\nBệnh truyền nhiễm: viêm màng não, AIDS và viêm não virus, có thể gây ra bệnh động kinh.\r\n\r\nChấn thương trước khi sinh: trước khi sinh, em bé rất nhạy cảm với tổn thương não có thể được gây ra bởi các yếu tố khác nhau, chẳng hạn như nhiễm trùng ở mẹ, dinh dưỡng kém hoặc thiếu oxy. Tổn thương não này có thể gây ra chứng động kinh hoặc bại não ở trẻ em.\r\n\r\nRối loạn phát triển: chứng tự kỉ', 'Các triệu chứng co giật có thể thay đổi rất nhiều. Một số người bị động kinh chỉ đơn giản là nhìn chằm chằm trong vài giây trong cơn động kinh, trong khi những người khác liên tục co thắt tay hoặc chân. Có một cơn động kinh không có nghĩa là bạn bị động kinh. Ít nhất hai cơn động kinh chưa được chứng minh là cần thiết để chẩn đoán bệnh động kinh.', 'Giảm thiểu chấn thương đến não bằng cách thắt dây an toàn khi lái xe và đội mũ bảo hiểm khi đi xe đạp, đi xe máy hoặc làm các hoạt động khác có nguy cơ cao bị chấn thương đầu.\r\n\r\nTrẻ em khi bị sốt cao trên 38,5 độ C cần dùng các thuốc hạ sốt tránh co giật do sốt. Trẻ có tiền sử co giật do sốt cao cần thận trọng tránh để tái phát nhiều lần.\r\n\r\nThay đổi lối sống: hạn chế uống rượu và tránh thuốc lá, ăn một chế độ ăn uống lành mạnh và tập thể dục thường xuyên.', 'Hầu hết những người bị động kinh có thể ngừng co giật bằng cách dùng thuốc chống co giật, còn được gọi là thuốc chống động kinh. Những người khác có thể giảm tần suất và cường độ co giật của họ bằng cách sử dụng kết hợp các loại thuốc.'),
(5, 1, 'Sa sút trí tuệ do mạch máu não', '2021-05-24 05:27:44', '2021-05-24 05:27:44', 'Sa sút trí tuệ mạch máu là một thuật ngữ chung mô tả sự suy giảm chức năng nhận thức gây ra bởi các vấn đề của mạch máu nuôi não.\r\n\r\nTrong một số trường hợp, một mạch máu có thể hoàn toàn bị chặn, gây ra một cơn đột quỵ. Không phải tất cả đột quỵ sẽ gây sa sút trí tuệ mạch máu. Nó phụ thuộc vào mức độ nghiêm trọng của đột quỵ, nơi xảy ra đột quỵ và một phần của não của bị ảnh hưởng. Sa sút trí tuệ mạch máu cũng có thể xảy ra khi mạch máu trong não hẹp, giảm số lượng lưu lượng máu đến những phần của não.\r\n\r\nTỷ lệ sa sút trí tuệ mạch máu là 1- 4 phần trăm ở những người trên độ tuổi 65. Bởi vì phương pháp điều trị ít có sẵn cho bệnh mất trí nhớ mạch máu, cho nên phòng chống là rất quan trọng.', NULL, 'Triệu chứng mất trí nhớ do mạch máu có thể khác nhau, tùy thuộc vào phần của bộ não của bị ảnh hưởng. Những người bị sa sút trí tuệ mạch máu có thể trải nghiệm:\r\n\r\nLẫn lộn.\r\n\r\nVấn đề với bộ nhớ.\r\n\r\nDáng đi không vững.\r\n\r\nTần số tiết niệu tăng, cấp bách hoặc không kiểm soát.\r\n\r\nKhó ngủ đêm.\r\n\r\nTrầm cảm.\r\n\r\nSuy giảm khả năng tổ chức - suy nghĩ hay hành động.\r\n\r\nKhó lập kế hoạch trước.\r\n\r\nVấn đề trình bày - chi tiết tuần tự.\r\n\r\nMất trí nhớ.\r\n\r\nTập trung chú ý kém.\r\n\r\nTriệu chứng sa sút trí tuệ mạch máu thường bắt đầu đột ngột và có thể xấu đi từng bước, sau một loạt các cơn đột quỵ hoặc thiếu máu não tạm thời. Nhưng một số hình thức của sa sút trí tuệ mạch máu phát triển dần dần và có thể dễ dàng bị nhầm lẫn với bệnh Alzheimer.\r\n\r\nThêm vào sự nhầm lẫn, bệnh Alzheimer và sa sút trí tuệ mạch máu thường xảy ra với nhau. Trong thực tế, một số nhà khoa học tin rằng cả hai rối loạn xảy ra với nhau phổ biến hơn hơn đơn độc.', 'Sa sút trí tuệ mạch máu thường gây ra bởi hoặc là:\r\n\r\nTắc nghẽn các mạch máu trong não. Tắc nghẽn hoàn toàn động mạch trong não thường gây ra đột quỵ (nhồi máu), nhưng một số bị tắc không tạo ra triệu chứng đột quỵ. Những \"nhồi máu não thầm lặng\" tăng nguy cơ sa sút trí tuệ mạch máu. Nguy cơ gia tăng với số lượng nhồi máu trải nghiệm qua thời gian. Một loạt các sa sút trí tuệ mạch máu được gọi là nhồi máu mất trí nhớ. Bệnh tim và nhịp tim bất thường, chẳng hạn như rung nhĩ, có thể làm tăng nguy cơ đột quỵ.\r\n\r\nThu hẹp các mạch máu trong não. Sa sút trí tuệ mạch máu cũng có thể xảy ra mà không có sự tắc nghẽn hoàn toàn động mạch. Các phần của não có thể được cung cấp oxy và dinh dưỡng không đủ do giảm lưu lượng máu từ động mạch bị thu hẹp bởi bệnh mạch máu.\r\n\r\nSa sút trí tuệ mạch máu cũng có thể được gây ra bởi:\r\n\r\nHuyết áp thấp nhiều.\r\n\r\nThiệt hại não do xuất huyết não.\r\n\r\nMạch máu thiệt hại từ các rối loạn như lupus ban đỏ hoặc viêm động mạch thái dương.', 'Không có cách chữa cho bệnh mất trí nhớ mạch máu và không có thuốc đã được chấp thuận của Cục Quản lý Thuốc và Thực phẩm Mỹ để điều trị nó. Tuy nhiên, thuốc được thiết kế để điều trị các triệu chứng của bệnh Alzheimer cũng dùng để giúp mọi người sa sút trí tuệ mạch máu.\r\n\r\nCác bác sĩ có thể kê một hoặc cả hai loại thuốc sau đây:\r\n\r\nChất ức chế cholinesterase - như Donepezil (Aricept), galantamine (Razadyne) và rivastigmine (Exelon) - là thuốc cho bệnh Alzheimer tác dụng bằng cách tăng mức độ của một chất hoá học tham gia vào bộ nhớ. Các tác dụng phụ có thể bao gồm buồn nôn, nôn, chuột rút cơ và tiêu chảy.\r\n\r\nMemantine (Namenda) cũng đã được dùng để cung cấp lợi ích khiêm tốn ở những người đã sa sút trí tuệ mạch máu. Memantine hoạt động bằng cách điều chỉnh chất hoá học liên quan đến việc xử lý lưu trữ, thông tin và tìm kiếm. Các tác dụng phụ có thể bao gồm đau đầu, táo bón và chóng mặt.\r\n\r\nNgoài ra, nếu đối phó với các yếu tố nguy cơ có thể đã góp phần sa sút trí tuệ mạch máu, có thể làm chậm sự tiến triển của bệnh mất trí nhớ. Điều đó có nghĩa là kiểm soát huyết áp, mức cholesterol và bệnh tiểu đường, cũng như bỏ hút thuốc. Các bác sĩ cũng có thể kê toa thuốc để giúp bạn kiểm soát các điều kiện này, cùng với aspirin hoặc tập hợp một thuốc chống tiểu cầu, chẳng hạn như ticlopidine (Ticlid) và clopidogrel (Plavix), để giúp giữ cho động mạch thông suốt. Không loại nào trong số những biện pháp này, có thể khôi phục lại bị mất chức năng nhận thức.'),
(6, 1, 'Rối loạn tiền đình', '2021-05-24 05:29:58', '2021-05-24 05:29:58', 'Tiền đình là bộ phận thuộc hệ thần kinh nằm ở phía sau ốc tai hai bên. Tiền đình có vai trò cân bằng cơ thể, duy trì trạng thái thăng bằng ở các tư thế, trong hoạt động, phối hợp các bộ phận cử động như mắt, tay, chân, thân mình...', 'Viêm dây thần kinh tiền đình: Do virus Zona, thủy đậu, quai bị (chiếm khoảng 5% các trường hợp), gây liệt dây thần kinh tiền đình dẫn đến chóng mặt xuất hiện đột ngột, kéo dài nhiều giờ đến vài tháng nhưng không rối loạn thính lực (khác với hội chứng Meniere).', 'Dấu hiệu của bệnh rối loạn tiền đình phụ thuộc vào mức độ nghiêm trọng của bệnh. Mỗi người sẽ gặp phải những triệu chứng khác nhau.', NULL, 'Rối loạn tiền đình là tình trạng quá trình truyền dẫn và tiếp nhận thông tin của tiền đình bị rối loạn hoặc tắc nghẽn do dây thần kinh số 8 hoặc động mạch nuôi dưỡng não bị tổn thương hay các tổn thương khác ở khu vực tai trong và não. Bệnh có thể để lại biến chứng nguy hiểm và gây đột quỵ. Vì thế khi có dấu hiệu của bệnh rối loạn tiền đình, người bệnh nên đến các trung tâm y tế để thăm khám và điều trị.\r\n\r\nBệnh viện Đa khoa Quốc tế Vinmec là địa chỉ thăm khám, điều trị và phòng ngừa các bệnh lý. Khi thực hiện quy trình thăm khám tại Vinmec, Quý khách hàng sẽ được đón tiếp và sử dụng cơ sở vật chất, hệ thống máy móc hiện đại đi kèm với các dịch vụ y tế hoàn hảo dưới sự chỉ dẫn, tư vấn của các bác sĩ giỏi, được đào tạo bài bản ở cả trong và ngoài nước.'),
(7, 7, 'Bệnh liệt tứ chi', '2021-05-24 06:43:49', '2021-05-24 06:43:49', 'Liệt tứ chi là bệnh do tổn thương tủy sống gây ra. Khi tủy sống bị tổn thương, sẽ mất khả năng cảm giác và vận động. Liệt tứ chi bao gồm liệt cánh tay, bàn tay, thân, chân và các cơ quan vùng chậu.\r\n\r\nCó rất nhiều vấn đề có thể xảy ra sau chấn thương tủy sống như huyết áp thấp, nhịp tim chậm. Có thể bị khó thở hoặc không thể tự thở. Bệnh này có thể gây ra lở loét da, co cứng cơ hoặc xuất hiện máu đông đe dọa tính mạng.\r\n\r\nĐôi khi, bệnh cũng khiến cơ thể không thể phản ứng chính xác với các vấn đề về bàng quang hoặc ruột (tình trạng tăng phản xạ tự phát), làm cho huyết áp tăng rất cao. Nếu không được điều trị nhanh chóng, có thể bị đột quỵ hoặc thậm chí tử vong. Nếu bị liệt tứ chi và không điều trị, sẽ không thể để tự chăm sóc cho bản thân.\r\nLiệt tứ chi là tình trạng sức khỏe rất phổ biến và có thể ảnh hưởng đến bệnh nhân ở mọi lứa tuổi. Có thể kiểm soát bệnh này bằng cách giảm thiểu các yếu tố nguy cơ.\r\nCó nhiều yếu tố làm tăng nguy cơ mắc phải bệnh này, chẳng hạn như:\r\n- Nam giới: chấn thương tủy sống ảnh hưởng đến đàn ông nhiều hơn phụ nữ;\r\n- Trên 65 tuổi: hầu hết các chấn thương ở người lớn tuổi đều do họ bị té ngã;\r\n- Bệnh xương khớp: một chấn thương tương đối nhỏ có thể gây ra chấn thương tủy sống nếu  mắc bệnh khác về xương khớp, như viêm khớp hay loãng xương.', 'Nguyên nhân chính gây ra liệt tứ chi là do chấn thương tủy sống, nhưng một số tình trạng khác như bại não và đột qụy , liệt cứng tứ chi, liệt tứ chi cột sống cũng có thể gây ra bệnh này. Ngoài ra, tai nạn xe hơi, tai nạn lao động cũng là những nguyên nhân có thể gây ra liệt tứ chi.', 'Triệu chứng bệnh có thể phụ thuộc vào vị trí và mức độ nghiêm trọng của chấn thương tủy sống. Các triệu chứng phổ biến của liệt tứ chi bao gồm:\r\n- Mất kiểm soát các hoạt động của ruột và bàng quang;\r\n- Khó tiêu;\r\n- Khó thở;\r\n- Tê và giảm cảm giác;\r\n- Yếu cơ, đặc biệt là ở cánh tay và chân;\r\n- Không có khả năng cử động và cảm giác ở khu vực bị tổn thương.', 'Kiểm soát và phòng chống liệt tứ chi nếu áp dụng các biện pháp sau:\r\n- Lái xe an toàn. Tai nạn xe là một trong những nguyên nhân phổ biến nhất của chấn thương tủy sống. Đeo dây an toàn mỗi khi lái xe hoặc ngồi trong xe ô tô;\r\n- Cẩn thận để không bị té;\r\n- Hãy thận trọng khi chơi thể thao;\r\n- Không lái xe sau khi uống rượu\r\n- Dùng thuốc theo chỉ dẫn.\r\n- Đảm bảo an toàn lao động, an toàn khi tham gia giao thông.\r\n- Khám chẩn đoán sớm các bệnh lý có thể gây biến chứng tổn thương tuỷ sống.\r\n- Truyền thông, giáo dục bệnh nhân hiểu biết hơn về hậu quả nặng nề do tổn thương tuỷ sống, biết cách sơ cứu đúng hạn chế tổn thương thứ phát.', 'Khi chấn thương người bệnh sẽ được chuyển đến trung tâm phục hồi chức năng để chữa liệt tứ chi và chăm sóc cho người bệnh liệt tứ chí một cách hiệu quả:\r\nPhục hồi chức năng càng sớm càng tốt, ngay giai đoạn sớm và tiến hành liên tục về sau\r\nTìm và giải quyết nguyên nhân gây liệt\r\nPhòng, chữa trị kịp thời bội nhiễm và loét bằng các phương pháp:\r\n- Đặt người bệnh ở tư thế thuận tiện, ít bị tỳ đè nhất, thường xuyên trăn trở, thay đổi tư thế người bệnh, vệ sinh săn sóc da khô sạch ... để chống loét do tỳ đè\r\n- Tập thở, tập ho, vỗ rung lồng ngực... để chống ứ đọng đờm dãi gây nhiễm trùng đường hô hấp\r\n - Chăm sóc, điều chỉnh chế độ dinh dưỡng tốt và phù hợp theo từng giai đoạn tiến triển của bệnh\r\n- Đặt sond tiểu ngắt quãng 6h/lần; bơm rửa bàng quang thường xuyên để chống nhiễm trùng tiết niệu và đề phòng căng phồng bàng quang\r\n- Chiếu tia hồng ngoại, tử ngoại để phòng chữa viêm nhiễm lở loét cũng như phục hồi chức năng chi thể và giảm đau đớn cho người bệnh\r\nXoa bóp ngày 1 - 2 lần; tập cử động, tập vận động thụ động và chủ động các chi thể bị liệt để duy trì tầm vận động khớp điện xung; điện phân thuốc; châm cứu; thuỷ châm vitamin nhóm B; điện từ trường\r\nĐề phòng huyết khối\r\nHướng dẫn người nhà và người bệnh tự tập luyện và cách chăm sóc người bệnh liệt tuỷ để chủ động đảm bảo duy trì phục hồi chức năng thường xuyên và lâu dài khi không có thầy thuốc, đặc biệt là sau khi ra viện trở về nhà. Cần thường xuyên theo dõi, kết hợp phục hồi chức năng và y học cổ truyền như xoa bóp, châm cứu, thuỷ châm.'),
(8, 7, 'Bệnh Tê bì tay chân', '2021-05-24 06:52:26', '2021-05-24 06:55:15', 'Tê bì chân tay là gì?\r\nTay chân bình thường sẽ dựa vào cảm giác để điều chỉnh những hoạt động như rút tay chân lại khi chạm phải vật nóng, điều chỉnh khi địa hình thay đổi. Nếu bạn bị tê tay chân thì sẽ gây giảm cảm giác và thậm chí năng hơn có thể gây mất cảm giác hoàn toàn.\r\nTình trạng này có thể khởi phát rất nhẹ nhàng như tê rần ở các đầu ngón tay, có cảm giác như bị châm chích ở đầu ngón tay hoặc bị giảm cảm giác. Những triệu chứng này có thể ngày càng nặng hơn, lan dần lên phía bàn tay, cổ tay, cẳng tay, cánh tay… và có thể đi đến tình trạng mất hết cảm giác. Tê bì chân tay khi mang thai, tê bì chân tay ở người già là tình trạng rất phổ biến trong cộng đồng.\r\nTình trạng có thể là tạm thời hoặc là triệu chứng của bệnh lý khác.', 'Theo kết quả nghiên cứu từ Viện Rối loạn thần kinh và đột quỵ Quốc gia (NINDS), tê bì chân tay kèm theo đau nhức xương khớp xuất hiện do nhiều nguyên nhân khác nhau.\r\nTrong đó,  hơn 75% trường hợp tê tay chân là do bệnh lý nguy hiểm sau:\r\n- Thoái hóa cột sống: Thoái hóa cột sống khiến sụn khớp, đốt sống bị bào mòn, cọ xát với rễ thần kinh gây đau nhức, tê bì vùng cổ lan xuống tay hoặc đau từ thắt lưng xuống chân. Hiện tượng tê tay chân do thoái hóa thường xảy ra về đêm hoặc khi thay đổi thời tiết.\r\n- Thoát vị đĩa đệm: Thoát vị đĩa đệm là nguyên nhân gây tê tay chân phổ biến. Đây là ệnh lý thường gặp ở đĩa đệm cột sống cổ và thắt lưng. Khi đĩa đệm tràn ra khỏi bao xơ đĩa đệm sẽ chèn ép dây thần kinh cột sống gây tê bì cánh tay cùng 2 chân, hạn chế vận động cơ thể.\r\n- Thoái hóa khớp: khớp tay, khớp đầu gối hoặc khớp háng bị bào mòn, tổn thương do các yếu tố tiêu cực sẽ gây hạn chế vận động và dẫn đến tê bì cánh tay, bàn chân. \r\n- Viêm đa khớp dạng thấp: Tình trạng khớp tay, khớp chân bị viêm nhiễm, tổn thương sẽ gây tê bì tay chân. Triệu chứng này gặp nhiều sau khi nằm, ngồi quá lâu tại một vị trí và đi kèm cứng khớp.\r\n- Hẹp ống sống: Đây là dạng bệnh bẩm sinh, cột sống bị biến dạng, thu nhỏ lại khiến các rễ thần kinh chạy qua bị chèn ép và gây tê tay chân kéo dài. Bệnh để lâu sẽ gây tắc nghẽn lưu thông máu, vận động khó khăn \r\n- Đa xơ cứng: Đây là bệnh rối loạn tự miễn và tác động trực tiếp đến hệ thần kinh TW, gây tổn thương màng bọc Myelin dẫn đến tê tay chân, co thắt cơ bắp, mệt mỏi.\r\n- Viêm đa rễ thần kinh: Bệnh lý xảy ra khi hệ thần kinh ngoại biên tổn thương gây rối loạn cảm giác và hạn chế vận động.\r\n- Xơ vữa động mạch: xơ vữa động mạch gây hẹp lòng mạch, chèn ép dây thần kinh chạy qua và dẫn đến tê bì tay chân.\r\n- Nguyên nhân do chấn thương: Tai nạn, va chạm, ngã khiến dây thần kinh ngoại biên tổn thương cũng gây tê bì chân tay, hạn chế vận động.\r\n- Tê bì chân tay sinh lý, gặp trong các trường hợp:\r\n- Mạch máu và thần kinh bị chèn ép khiến máu khó lưu thông: tê bì chân tay sau sinh hoặc do ngồi, đứng, ngủ sai tư thế, duy trì một tư thế quá lâu, lao động nặng, ngồi máy tính liên tục, chạy xe nhiều giờ…\r\n- Tư thế làm việc: Bê vác vật nặng, ngồi, đứng quá lâu ở một tư thế, lười vận động và thường xuyên ngồi dưới máy lạnh sẽ gây tổn thương dây thần kinh. Từ đó gây tê tay chân.\r\n- Sinh hoạt sai tư thế: Ngủ nghiêng người, nằm gối quá cao, liên tục dùng giày cao gót,… sẽ khiến tay chân tê bì.\r\n- Ảnh hưởng thời tiết: một số người gặp trời lạnh sẽ bị rối loạn cảm giác, tê bì.\r\n- Stress, mệt mỏi: Căng thẳng, mệt mỏi kích thích các tế bào thần kinh gần bề mặt da tê ngứa và tê bì tay chân.\r\n-Tê chân tay có thể là kết quả của tác dụng phụ khi dùng một số thuốc.\r\nSớm phát hiện nguyên nhân tê bì chân tay giúp hạn chế biến chứng, nâng cao hiệu quả chữa bệnh và dự phòng tái phát.', '- Đau mỏi cổ vai gáy lan xuống nửa người kèm theo triệu chứng tê bì một bên\r\n- Tê /dị cảm mặt trong cánh tay lan xuống ngón 4/5 chẳng hạn , khi nằm lâu /để tay chân ở vị trí cố định trong 1 khoảng thời gian nào đó, râm ran như kiến bò\r\n- Tê kiểu châm chích, nóng bỏng tứ chi kiểu của bệnh lý viêm đa dây thần kinh trong tiểu đường, bệnh lý tổn thương đa rễ /nhiều rễ -dây thần kinh\r\n- Tay chân mất cảm giác: tình trạng tê kéo dài sẽ khiến tay, chân bị mất cảm giác, thường gặp nhất về đêm.\r\n- Tê buốt lan dọc cánh tay, cẳng chân: tê buốt lan đến hết cánh tay, cổ chân, cẳng chân và gây hạn chế vận động\r\n- Những bệnh lý tê đau của hội chứng ống cổ tay /dị cảm trong hội chứng hạ canxi máu tiềm ẩn\r\n- Tê yếu kiểu trung ương kèm theo thay đổi cảm giác, phản xạ và có tổn thương thần kinh sọ\r\n- Chuột rút ở tay chân: co thắt cơ đột ngột gây đau nhức âm ỉ bắp tay, bắp chân.\r\nKhi người bệnh có triệu chứng tê ở chân kèm những dấu hiệu dưới đây thì cần đi khám bác sĩ ngay lập tức:\r\n- Bị tê chân kéo dài trong thời gian dài liên tục khoảng trên 6 tuần\r\n- Tê chân đi kèm với bất kỳ triệu chứng mãn tính khác\r\n- Bị tê chân kèm thay đổi về màu sắc, hình dạng hoặc nhiệt độ của chân và bàn chân\r\n- Hay quên, dễ nhầm lẫn\r\n- Chóng mặt\r\n- Mất kiểm soát bàng bàng quang và ruột\r\n- Tê liệt xảy ra sau một chấn thương đầu\r\n- Đau đầu dữ dội\r\n- Khó thở\r\n- Co giật', 'Một số phương pháp có thể giúp ngăn ngừa bệnh tê nhức như:\r\n- Tăng cường vận động, thường xuyên tập thể dục cho cơ thể khỏe mạnh, dẻo dai\r\n- Đối với người đã bị tê nhức chân tay, có thể ngâm tay trong nước nóng có pha muối giúp lưu thông máu tốt, nắm bàn tay lại xòe mạnh thẳng bàn tay và cánh tay ra, dùng tay trái xoa bóp cho tay phải và ngược lại.\r\n- Chế độ ăn uống cân bằng, bổ sung các vitamin và chất khoáng\r\n- Tránh làm việc quá sức với những công việc nặng nhọc, làm việc nhiều giờ trước máy vi tính hay ngồi xổm quá lâu dẫn đến mạch máu khó lưu thông gây tê chân tay.\r\n- Hạn chế uống nhiều rượu bia, không hút thuốc lá, vào mùa đông có thể dùng túi chườm nóng ở tay chân để giảm đau nhức và tê bì', 'Tùy thuộc vào nguyên nhân gây bệnh mà sử dụng phương pháp điều trị cho phù hợp. Nhìn chung, tê chân tay sinh lý không cần điều trị chỉ cần áp dụng một số biện pháp hỗ trợ, phòng ngừa như tăng vận động thể dục thể thao, xoa bóp thư giãn tay chân.\r\nPhần lớn các trường hợp tê chân tay lặp lại nhiều lần, kéo dài  hoặc do bệnh lý, cần được điều trị sớm và kịp thời để tránh biến chứng xấu.\r\nĐiều trị triệu chứng:\r\n- Những loại thuốc điều trị tình trạng bị tê chân lâu ngày bao gồm:\r\n- Thuốc chống trầm cảm:  nhóm thuốc điều trị tê chân do đau cơ xơ hóa\r\n- Thuốc corticosteroid: thuốc giảm viêm, giảm tê chân do bệnh đa xơ cứng (MS). \r\n- Thuốc Gabapentin và pregabalin: thuốc góp phần ngăn chặn và giảm tê chân do đau cơ xơ hóa, đa xơ cứng, bệnh thần kinh tiểu đường. \r\nĐiều trị nguyên nhân:\r\nDo nguyên nhân sinh lý: Những cách khắc phục ngay tại nhà khi bị tê chân bao gồm:\r\n- Tránh ngồi nhiều, đứng lâu:Chú ý không cúi nhấc vật nặng hay ngồi xổm, đi dép chật, không để tay chân bị lạnh.\r\n- Nghỉ ngơi: giảm tê chân tay do dây thần kinh bị chèn ép\r\n- Chườm lạnh. Chườm lạnh vào chân và bàn chân 15 phút/ngày có thể giảm sưng, giảm tê chân do dây thần kinh bị chèn ép. \r\n- Chườm nóng. Những người bị tê chân do dây thần kinh bị chèn ép cũng có thể áp dụng chườm nhiệt. \r\n- Xoa bóp chân và bàn chân giúp cải thiện lưu lượng máu và có thể làm giảm các triệu chứng tê chân.\r\n- Tập thể dục. Những bài tập thể dục như yoga, Pilates, aerobic có thể thúc đẩy lưu lượng máu và giảm viêm, đau, giảm tê chân.\r\n- Tắm muối Epsom. Để giảm tê chân người bệnh có thể tắm nước muối Epsom chứa magie giúp tăng lưu lượng máu và lưu thông.\r\n- Ngủ đủ giấc. Những người bị tê chân có thể do thiếu ngủ cho nên cần ngủ đủ giấc.\r\n- Chế độ ăn uống lành mạnh: ăn uống đầy đủ những dưỡng chất, bổ sung các loại vitamin, khoáng chất thiết yếu nhằm tăng cường sức đề kháng và phòng ngừa viêm nhiễm như: vitamin nhóm B, vitamin C, Glucosamin,… Đặc biệt, vitamin C và protein giúp sản sinh collagen tăng cường sự đàn hồi da, sự vững chắc của thành mạch, phòng ngừa xơ vữa động mạch.\r\nDo nguyên nhân bệnh lý\r\n- Đối với tình trạng tê tay chân do bệnh lý, cần phải điều trị triệt để căn nguyên gây ra vấn đề. Ví dụ như:\r\n- Bệnh tiểu đường: cần kiểm soát tốt đường huyết bằng cách dùng thuốc, duy trì chế độ ăn uống khoa học và chế độ tập luyện hàng ngày. \r\n- Bị thiếu vitamin: bổ sung vitamin.\r\n- Nhiễm độc: điều trị nhiễm độc\r\n- Rối loạn chuyển hóa lipid máu: kiểm soát lipid máu ngưỡng an toàn\r\n- Điều trị các bệnh lý thoái hóa cột sống, viêm khớp'),
(10, 2, 'Khối u vùng đầu cổ', '2021-05-24 06:58:41', '2021-05-24 06:58:41', 'Mỗi năm, ở Hoa Kỳ, có tới gần 60.000 bệnh nhân mắc ung thư vùng đầu cổ. Khi loại trừ ung thư da và ung thư tuyến giáp, có tới >90% trường hợp ung thư vùng đầu cổ là ung thư biểu mô tế bào vảy; đa số các trường hợp còn lại là ung thư biểu mô tuyến, sarcoma và u lympho.\r\n\r\nCác vị trí ung thư hay gặp nhất tại vùng đầu cổ bao gồm\r\n\r\nThanh quản (bao gồm nắp thanh quản, thanh môn, và hạ thanh môn)\r\nKhoang miệng (lưỡi, sàn miệng, khẩu cái cứng, niêm mạc má, và ung thư chân răng)\r\nHọng miệng (gốc lưỡi, amydal, và vòm miệng mềm)\r\nCác vị trí ít phổ biến hơn bao gồm vòm họng, khoang mũi và xoang sàng, hạ họng và tuyến nước bọt.', 'Phần lớn bệnh nhân (ít nhất là 85%) mắc ung thư vùng đầu cổ có tiền sử uống rượu, hút thuốc lá, hoặc cả hai. Những người nghiện thuốc lá và uống rượu nặng, kéo dài có nguy cơ mắc ung thư tế bào vảy tăng lên tới 40 lần. Các tác nhân khác cũng bị nghi ngờ bao gồm việc sử dụng hít hoặc nhai thuốc lá, tiếp xúc với ánh sáng mặt trời, chụp Xquang vùng đầu cổ trước đó, một số bệnh nhiễm virut, dùng thiết bị nha khoa không phù hợp, nhiễm Candida mạn tính và vệ sinh răng miệng kém. \r\nNhững bệnh nhân được chiếu tia để điều trị mụn trứng cá, rậm lông vùng mặt, tuyến ức to, amydal quá phát, và viêm VA có xu hướng mắc bệnh ung thư tuyến giáp, ung thư và u lành tính tuyến nước bọt.\r\n\r\nVirus Epstein-Barr đóng vai trò trong quá trình bệnh sinh của ung thư vòm họng, và các chỉ số huyết thanh của một số protein virus Epstein-Barr có thể là chất chỉ điểm sinh học để phát hiện bệnh tái phát.\r\n\r\nMối liên quan giữa nhiễm virút HPV và ung thư biểu mô tế bào vảy vùng đầu cổ, đặc biệt là ung thư họng miệng, đã được xác định. Sự gia tăng ung thư liên quan đến HPV đã làm gia tăng tỉ lệ ung thư họng miệng, vốn được kỳ vọng sẽ giảm do hút thuốc giảm trong hai thập kỷ gần đây. Cơ chế cho sự hình thành khối u qua trung gian virut có khác với các con đường liên quan đến thuốc lá.', 'Các biểu hiện của ung thư vùng đầu cổ phụ thuộc rất nhiều vào vị trí và mức độ lan rộng của khối u. Các triệu chứng ban đầu thường gặp của ung thư vùng đầu cổ bao gồm xuất hiện khối u không triệu chứng vùng cổ, loét niêm mạc có đau, tổn thương niêm mạc có thể nhìn thấy (ví dụ bạch sản, hồng sản), khàn tiếng và khó nuốt.\r\n\r\nCác triệu chứng muộn hơn phụ thuộc vào vị trí và mức lan rộng của khối u và bao gồm đau, dị cảm, liệt thần kinh, cứng hàm, và hơi thở hôi. Đau tai là một triệu chứng thường bị bỏ qua, do đau từ khối u nguyên phát. Sút cân do ăn kém; đau khi nuốt cũng rất thường gặp.', 'Loại bỏ các yếu tố nguy cơ rất quan trọng, và tất cả các bệnh nhân nên ngừng sử dụng thuốc lá và hạn chế uống rượu. Loại bỏ các yếu tố nguy cơ cũng giúp phòng ngừa bệnh tái phát ở bệnh nhân đã điều trị ung thư. Một ung thư nguyên phát mới phát triển ở khoảng 5% bệnh nhân / năm (với nguy cơ tối đa khoảng 20%); nguy cơ thấp hơn ở những người ngừng sử dụng thuốc lá.\r\n\r\nCác vắc-xin chống HPV hiện tại nhắm tới một số chủng HPV gây ra ung thư họng miệng, do đó việc tiêm văcxin ở trẻ em như hiện nay được khuyến cáo có thể làm giảm tỷ lệ mắc các loại ung thư này.\r\n\r\nUng thư môi dưới có thể được ngăn ngừa bằng cách sử dụng kem chống nắng và ngừng thuốc lá. Bởi vì 60% ung thư vùng đầu và cổ được chẩn đoán khi đã ở giai đoạn tiến triển (giai đoạn III hoặc IV) , chiến lược tốt nhất để giảm tỷ lệ bệnh và tử vong là kiểm tra thường xuyên khoang miệng.', '* Phẫu thuật, xạ trị, hoặc cả hai\r\n*  Hóa trị\r\n- Các phương pháp điều trị chính cho ung thư đầu và cổ là phẫu thuật và xạ trị. Các phương pháp này có thể được sử dụng đơn lẻ hoặc kết hợp cùng với hoá trị. Tuy nhiên, hóa trị hầu như không bao giờ được sử dụng làm phương pháp điều trị chính trong điều trị. Nhiều khối u không kể vị trí có đáp ứng như nhau đối với phẫu thuật và xạ trị, cho phép xác định lựa chọn điều trị dựa theo các yếu tố khác như sở thích của bệnh nhân hoặc tiền sử mắc bệnh theo vị trí cụ thể.\r\n\r\n- Tuy nhiên, ở một số vị trí, có một ưu điểm vượt trội của một phương thức. Ví dụ, phẫu thuật tốt hơn đối với bệnh giai đoạn đầu liên quan đến khoang miệng vì liệu pháp xạ trị có khả năng gây ra hoại tử xương hàm dưới. Phẫu thuật nội soi đã trở nên phổ biến hơn trong một số bệnh ung thư ở đầu cổ, nó có tỷ lệ chữa khỏi tương tự phẫu thuật mở hoặc xạ trị, và biến chứng của phương pháp này ít hơn đáng kể. Phương pháp nội soi thường được sử dụng cho phẫu thuật thanh quản và thường sử dụng laser để cắt bỏ.\r\n\r\n- Khi bệnh giai đoạn tiến triển (giai đoạn III và IV) thường đòi hỏi phải điều trị đa phương thức, kết hợp một số liệu pháp: hóa trị , xạ trị và phẫu thuật. Khi khối u xâm lấn xương hoặc sụn đòi hỏi phải phẫu thuật cắt bỏ u nguyên phát và thường phải vét các hạch bạch huyết khu vực do nguy cơ lan rộng. Nếu u nguyên phát được điều trị bằng phẫu thuật, thì xạ trị sau phẫu thuật vào các hạch bạch huyết vùng cổ nếu chúng có nguy cơ cao như di căn nhiều hạch, phá vỡ vỏ bao. Xạ trị sau phẫu thuật thường được ưu thích hơn so với xạ trị trước phẫu thuật do các mô sau khi chiếu xạ thường khó lành lại hơn.\r\n\r\n\r\n**Điều trị khối u tái phát**\r\n- Xử trí khối u tái phát sau khi điều trị là phức tạp và có những biến chứng tiềm ẩn. Khi xuất hiện một khối hoặc tổn thương loét có phù nề hoặc đau ở vị trí nguyên phát sau khi điều trị gợi ý tồn tại một khối u tái phát. Những bệnh nhân này cần chụp CT (có lát cắt mỏng) hoặc chụp MRI.\r\n\r\n- Đối với tái phát tại chỗ sau khi điều trị phẫu thuật, tất cả các vết sẹo cũ và các vạt tái tạo được cắt bỏ cùng với tổ chức ung thư . Xạ trị, hóa trị, hoặc cả hai có thể được thực hiện nhưng có hiệu quả hạn chế. Bệnh nhân tái phát sau xạ trị được điều trị tốt nhất bằng phẫu thuật. Tuy nhiên, một số bệnh nhân có thể được hưởng lợi từ các phương pháp điều trị tia xạ bổ trợ, nhưng cách tiếp cận này có nguy cơ cao tác dụng phụ và nên được thực hiện một cách thận trọng.\r\n\r\n**Kiểm soát triệu chứng**\r\n- Đau là một triệu chứng thường gặp ở bệnh nhân ung thư đầu cổ và phải được giải quyết một cách thoả đáng. Phẫu thuật triệu chứng hoặc xạ trị có thể tạm thời làm giảm đau, và trong số 30 đến 50% bệnh nhân, hóa trị liệu có thể tạo ra sự cải thiện trung bình tới 3 tháng. Theo khuyến cáo của WHO, quản lý đau theo từng bước là rất quan trọng. Đau dữ dội được điều trị tốt nhất cùng với một chuyên gia về giảm đau và chăm sóc giảm nhẹ.\r\n\r\n**Tác dụng phụ của điều trị**\r\n- Tất cả các phương pháp điều trị ung thư đều có thể xảy ra những biến chứng và di chứng nhất định. Bởi vì nhiều phương pháp điều trị có tỷ lệ chữa khỏi tương đương nhau, sự lựa chọn phương thức chủ yếu là do sự khác biệt về các di chứng.\r\n\r\n- Mặc dù người ta thường nghĩ rằng phẫu thuật gây ra nhiều tác động nhất, nhiều phẫu thuật có thể được thực hiện mà không làm thay đổi đáng kể hình dạng hoặc chức năng. Các phương pháp và kỹ thuật tái tạo phức tạp bao gồm sử dụng các bộ phận giả, miếng ghép, vạt cuống vùng, vạt phức hợp tự do có thể khôi phục lại chức năng và diện mạo gần như bình thường.\r\n\r\n- Các tác dụng phụ của hóa trị bao gồm mệt mỏi, buồn nôn và nôn, viêm niêm mạc, rụng tóc, viêm dạ dày ruột, suy giảm chức năng miễn dịch và tạo máu, nhiễm trùng.'),
(11, 2, 'Ung thư thanh quản', '2021-05-24 07:06:35', '2021-05-24 07:06:35', '- 90% trường hợp ung thư thanh quản là ung thư biểu mô vảy. Hút thuốc lá, uống rượu, tình trạng kinh tế xã hội thấp, nam giới> 60 tuổi làm tăng nguy cơ mắc bệnh. Thông thường không khó chẩn đoán sớm với các khối u dây thanh quản vì tình trạng khàn giọng xuất hiện sớm. Tuy nhiên, các khối u trên dây thanh âm ( nằm phía trên dây thanh quản) và các khối u dưới dây thanh âm (nằm dưới dây thanh quản) thường biểu hiện ở giai đoạn tiến triển vì chúng có thể không có triệu chứng trong một khỏang thời gian dài hơn. Chẩn đoán dựa trên nội soi thanh quản và sinh thiết. Điều trị khối u giai đoạn sớm bằng phẫu thuật hoặc xạ trị. Các khối u giai đoạn tiến triển thường được điều trị bằng hóa trị và xạ trị. Phẫu thuật được dành cho điều trị hoặc những tổn thương có thể cứu vãn được bằng mở rộng thanh quản hoặc phá huỷ sụn. Cần thiết lập lại khả năng nói là cần thiết nếu cắt bỏ toàn bộ thanh quản.', '- Ung thư biểu mô tế bào vảy là loại ung thư phổ biến nhất của thanh quản. Ở Mỹ, phổ biến hơn gấp 4 lần ở nam giới và phổ biến hơn ở những người có tình trạng kinh tế xã hội thấp. Trên 95% bệnh nhân là người hút thuốc lá; sử dụng thuốc lá 15 năm làm tăng nguy cơ ung thư gấp 30 lần. Tỉ lệ ung thư thanh quản là khoảng 14.000 trường hợp mới mắc mỗi năm và đang giảm, đặc biệt ở nam giới, có thể là do thay đổi thói quen hút thuốc lá. Số người chết hàng năm là khoảng 3600 người.\r\n\r\n- 60% bệnh nhân chỉ biểu hiện ung thư tại chỗ; 25% có biểu hiện tại chỗ kèm theo di căn hạch vùng; và 15% có biểu hiện tiến triển, các di căn xa hoặc cả hai. Những khối u trên dây thanh âm và dưới dây thanh âm có sự di căn của hạch bạch huyết phổ biến hơn so với các ung thư ngay tại dây thanh âm do có rất ít hệ bạch huyết trực tiếp với dây thanh âm. Di căn xa xảy ra hay gặp nhất là ở phổi và gan.\r\n\r\n- Các vị trí nguyên phát hay gặp là ngay tại dây thanh âm (glottis) và thượng thanh môn. Khu vực ít phổ biến nhất là vùng dưới dây thanh âm, nơi chỉ có 1% ung thư thanh quản ban đầu xuất phát. U nhú dạng hột cơm, một biến thể hiếm gặp của ung thư biểu mô tế bào vảy, thường xuất hiện ở vùng dây thanh âm và có tỷ lệ sống sót tốt hơn so với ung thư biểu mô tế bào vảy bình thường.', '- Các triệu chứng và dấu hiệu khác nhau tùy theo vị trí tổn thương trên thanh quản. Khàn giọng là triệu chứng phổ biến xuất hiện sớm ở bệnh ung thư dây thanh âm nhưng là một triệu chứng muộn cho ung thư trên và dưới dây thanh âm. Bệnh nhân bị ung thư dưới dây thanh âm thường có biểu hiện tắc nghẽn đường thở, và khàn giọng là triệu chứng muộn. Bệnh nhân bị ung thư dưới thanh âm thường có chứng khó nuốt; các triệu chứng thông thường khác bao gồm tắc nghẽn đường thở, đau tai, sự phát triển của khối ở cổ, hoặc có giọng \"khoai tây nóng\". Những bệnh nhân có những triệu chứng này nên được nội soi thanh quản trực tiếp ngay lập tức.', '* Nguyên nhân chính gây bệnh ung thư dây thanh quản cho đến nay vẫn chưa được làm rõ, tuy nhiên các nghiên cứu cho thấy có một số yếu tố quan trọng làm tăng nguy cơ mắc bệnh. Tập trung vào cách phòng tránh các yếu tố này sẽ giúp ngăn ngừa nguy cơ ung thư thanh quản:\r\n\r\n- Hút thuốc lá: nghiện thuốc là được cho là yếu tố nguy cơ cao nhất của bệnh ung thư dây thanh quản. Các nghiên cứu cho thấy số người hút thuốc lá bị ung thư thanh quản chiếm 12%, số người không hút thuốc chỉ chiếm 12%. Tuyên truyền rộng rãi các tác hại của thuốc lá, vận động người dân bỏ thuốc để góp phần giảm nguy cơ mắc ung thư thanh quản. Những người hút thuốc lá lâu năm khi có các triệu chứng khàn tiếng kéo dài, ho, khó thở,... cần đến các cơ sở y tế thăm khám, phát hiện bệnh từ sớm thì hiệu quả điều trị càng cao.\r\n\r\n- Rượu: uống nhiều rượu là một yếu tố nguy cơ của ung thư thanh quản. Rượu là tăng đáng kể khả năng gây ung thư của thuốc lá, do đó hạn chế sự kết hợp giữa rượu và thuốc lá để giảm nguy cơ ung thư dây thanh quản.\r\n\r\n- Yếu tố nghề nghiệp cũng làm tăng nguy cơ mắc bệnh, những người phải làm việc trong môi trường ô nhiễm, độc hại đặc biệt là các nhà máy hóa chất, hầm mỏ có chrome, nikel, amiante,...có tỷ lệ mắc ung thư thanh quản cao. Người lao động cần tập trung vào cách phòng tránh như tuân thủ các quy định an toàn trong lao động, sử dụng các phương tiện bảo hộ khi làm việc, khám sức khỏe nghề nghiệp định kỳ,... để hạn chế nguy cơ mắc bệnh.\r\n\r\n- Bệnh trào ngược dạ dày thực quản: nhiều trường hợp ung thư thực quản là các bệnh nhân có tiền sử trào ngược dạ dày-thực quản. Acid dịch vị trong dạ dày khi bị trào ngược lên thực quản sẽ gây tác động mạnh lên niêm mạc thực quản khiến người bệnh dễ bị viêm thanh quản, viêm phế quản, viêm thực quản kéo dài. Để ngăn ngừa nguy cơ ung thư thanh quản sau này, khi có biểu hiện ợ chua, người bệnh cần điều chỉnh thói quen ăn uống, không nên ăn quá no, không được nằm ngay sau ăn, khi ngủ kê đầu giường cao khoảng 15cm, kiêng các chất kích thích như rượu, bia, thuốc lá, nước giải khát có gas,...\r\n\r\n- Nhiễm trùng răng miệng, nhiễm trùng tai mũi họng kéo dài, viêm thanh quản mạn tính, cơ thể suy dinh dưỡng, thiếu vitamin,...có thể dẫn đến nguy cơ ung thư thanh quản, cần tập trung vào cách phòng tránh các yếu tố trên.', '* Giai đoạn sớm (T1 và T2): Phẫu thuật hoặc xạ trị\r\n* Tiến triển trung bình (T3): Xạ trị và đôi khi hóa trị liệu\r\n* Tiến triển (T4): Phẫu thuật (thường là sau khi được xạ trị và đôi khi hóa trị liệu) hoặc đôi khi hóa trị liệu và xạ trị\r\n- Ung thư thanh môn giai đoạn sớm (xem Bảng: Đánh giá giai đoạn của ung thư đầu cổ) được điều trị bằng cắt bỏ bằng laser, xạ trị, hoặc đôi khi phẫu thuật mở cắt thanh quản. Phẫu thuật tia laser qua nội soi và xạ trị thường giữ được tiếng nói bình thường và bảo tồn chức năng sau điều trị và có tỷ lệ chữa khỏi tương tự nhau. Cho dù phẫu thuật hoặc xạ trị được sử dụng để điều trị ung thư thanh môn giai đoạn sớm thường phụ thuộc vào sự ưu tiên của cơ sở điều trị và bệnh nhân.\r\n- Đối với ung thư thanh môn tế bào vảy tiến triển, được xác định bởi sự thiếu khả năng di động của dây thanh âm hoặc lan rộng vào lưỡi, hầu hết bệnh nhân đều được điều trị bằng hóa trị liệu và xạ trị. Nếu bệnh nhân có tình trạng lan rộng ra ngoài thanh quản hoặc xâm lấn sụn, phẫu thuật cắt bỏ thanh quản đã cho kết quả tốt nhất; phẫu thuật cắt bỏ thanh quản thường là toàn bộ, nhưng việc cắt bỏ bằng laser nội soi hoặc cắt bỏ thanh quản một phần có thể được sử dụng trong các trường hợp thích hợp. Cắt bỏ toàn bộ thanh quản cũng thường được sử dụng cho các tình huống u lan rộng tại chỗ; tuy nhiên, phẫu thuật nội soi hoặc phẫu thuật mở, cắt thanh quản một phần đôi khi có thể được sử dụng trong những tình huống này.\r\n\r\n- Ung thư trên thanh âm giai đoạn sớm có thể được điều trị hiệu quả bằng xạ trị hoặc cắt bỏ thanh quản một phần. Sự cắt bỏ bằng Laser đã cho thấy thành công ở những trường hợp ung thư thượng thanh môn loại biểu mô tế bào vảy ở giai đoạn sớm và ít có những thay đổi chức năng sau phẫu thuật. Nếu ung thư giai đoạn tiến triên hơn nhưng không ảnh thực sự hưởng đến dây thanh âm, thì có thể thực hiện việc cắt bỏ thanh quản một phần ở phần trên để bảo vệ cơ vòng và cơ thắt thanh môn. Nếu dây thanh thật cũng bị ảnh hưởng, cần phải phẫu thuật cắt lọc chọn lọc thanh quản hoặc phẫu thuật cắt bỏ toàn bộ nếu phẫu thuật được lựa chọn.');
INSERT INTO `bodiesdetails` (`id`, `id_bodies`, `discriptions`, `created_at`, `updated_at`, `overview`, `reason`, `symptom`, `prevent`, `treatment`) VALUES
(12, 2, 'Ung thư vòm họng', '2021-05-24 07:11:06', '2021-05-24 07:11:06', 'Ung thư vòm họng hiếm gặp ở Hoa Kỳ nhưng phổ biến ở khu vực quanh Biển Đông. Triệu chứng thường phát hiện muộn, bao gồm chảy máu mũi một bên, tắc nghẽn mũi, mất thính giác, đau tai, sưng mặt, và tê mặt. Chẩn đoán dựa vào nội soi vòm họng và sinh thiết, với chụp CT, MRI, hoặc PET để đánh giá mức độ lan tràn Điều trị bằng xạ trị, hóa trị, và hiếm khi phẫu thuật.', 'Ung thư biểu mô không biệt hóa là khối u ác tính phổ biến nhất của vòm họng. Nó có thể xảy ra ở bất kỳ lứa tuổi nào, kể cả thanh thiếu niên và hiếm ở Bắc Mỹ. Đây là một trong những loại ung thư phổ biến nhất ở Trung Quốc, đặc biệt là những người khu vực phía nam Trung Quốc và những người gốc Đông Nam Á, bao gồm những người nhập cư Trung Quốc đến Bắc Mỹ. Tuy nhiên, trong những năm gần đây tỷ lệ những người Mỹ gốc Trung Quốc bị mắc có xu hướng giảm so với những người Mỹ không phải gốc Trung Quốc. Điều này cho thấy, gợi ý yếu tố môi trường liên quan đến nguyên nhân gây bệnh. Chế độ ăn có nitrit và cá muối cũng được cho là làm tăng nguy cơ. Vi rút Epstein-Barr là một yếu tố nguy cơ đáng kể và có khuynh hướng di truyền.\r\n\r\nCác loại ung thư vòm họng khác bao gồm ung thư biểu mô tuyến nang và ung thư biểu mô chế nhày, khối u ác tính thể hỗn hợp, ung thư biểu mô tuyến, u lymphô, sarcom xơ, ung thư xương ác tính, ung thư xương sụn ác tính và ung thư hắc tổ', 'Ung thư vòm họng thường biểu hiện với các triệu chứng di căn hạch bạch huyết vùng cổ. Một triệu chứng thường gặp khác là mất thính giác, thường là do tắc nghẽn ống mũi hoặc vòi eustachian dẫn đến tràn dịch tai giữa. Các triệu chứng khác bao gồm đau tai, chảy nước mũi có máu mủ, chảy máu mũi, liệt dây thần kinh sọ và nhiều hạch ở vùng cổ. Các dây thần kinh sọ não thường là dây thần kinh sọ số 6, số 4 và số 3 do vị trí của chúng trong xoang hang, gần với tổn thương trên lỗ rách (trước) , là con đường lan tràn phổ biến nhất cho các khối u này. Vì các mạch bạch huyết của mũi họng thông nhau qua đường giữa nên các di căn hạch cổ hai bên là phổ biến.', '- Bạn có thể kiểm soát ung thư vòm họng cũng như hỗ trợ điều trị, ngăn ngừa ung thư vòm họng tái phát nếu thực hiện các lối sống, thói quen tốt như:\r\n\r\n* Không ăn cá và thịt ướp muối, các loại thực phẩm bị mốc\r\n* Ăn nhiều hoa quả và các loại rau củ tươi.\r\n* Không hút thuốc, không uống rượu bia.\r\n* Đánh răng nhiều lần mỗi ngày.\r\n* Súc miệng bằng nước muối sau các bừa ăn\r\n* Giữ miệng ẩm bằng nước hoặc các loại kẹo không đường.\r\n* Không hút thuốc, không uống rượu bia.\r\n* Tránh ăn thức ăn và đồ uống có tính axit hoặc tính cay nồng để không gây kích ứng miệng.\r\n- Mặc dù nước ta không nằm trong khu vực có tỉ lệ mắc ung thư vòm họng phổ biến, nhưng không có nghĩa bạn được “miễn” nguy cơ mắc ung thư vòm họng. Hãy chủ động tìm hiểu nguyên nhân, cách phòng và điều trị ung thư vòm họng, thường xuyên thăm khám sức khỏe định kì và tầm soát ung thư để phát hiện và điều trị bệnh kịp thời, giúp bảo vệ sức khỏe.', '* Hóa trị kết hợp xạ trị\r\n* Phẫu thuật\r\n- Do vị trí và mức độ xâm lấn, ung thư vòm họng thường không dễ dàng có thể phẫu thuật cắt bỏ. Chúng thường được điều trị bằng hóa trị liệu, xạ trị và thường là theo sau là hóa trị bổ trợ.\r\n\r\n- Các khối u tái phát có thể được điều trị bằng một đợt tia xạ khác, thường là xạ trị áp sát; nhưng có nguy cơ hoại tử xương nền sọ do xạ trị. Có thể thay thế xạ trị bằng phẫu thuật nền sọ. Phẫu thuật cắt bỏ thường được thực hiện bằng cách tháo bỏ một phần xương hàm trên để tiếp cận, nhưng trong một số trường hợp, phẫu thuật có thể được thực hiện nội soi, mặc dù vẫn còn ít dữ liệu về phẫu thuật nội soi.'),
(13, 7, 'Bệnh Bong gân', '2021-05-24 07:14:51', '2021-05-24 07:59:43', 'Bong gân là tình trạng xảy ra khi các dây chằng bị giãn hoặc rách do chấn thương. Bong gân ở cổ chân là tình trạng thường gặp nhất. Khi bị bong gân, người bệnh cần xử trí đúng để có thể nhanh chóng bình phục và tránh những hậu quả không đáng có.', 'Nguyên nhân phổ biến nhất gây ra tình trạng này là ngã, xoắn người hoặc chấn thương khớp. Những nguyên nhân này có thể khiến khớp lệch khỏi phạm vi chuyển động bình thường, do đó dây chằng sẽ bị kéo giãn hoặc rách.\r\nNhững tình huống có thể khiến bạn bị bong gân như:\r\n- Đi hoặc chạy trên một đường gồ ghề\r\n- Uốn hoặc xoay người đột ngột\r\n- Ngã hoặc tiếp đất bằng cổ tay hoặc bàn tay\r\n- Chơi các môn thể thao thường dùng cổ tay (cầu lông, tennis, bóng rổ…)\r\n- Chấn thương từ các môn thể thao tiếp xúc (như đá bóng)', 'Bong gân được chia ra 3 cấp độ:\r\n- Cấp độ 1 - Nhẹ: Dây chằng chỉ bị giãn một ít;\r\n- Cấp độ 2 - Nặng: Dây chằng bị rách một phần;\r\n- Cấp độ 3 - Rất nặng: Dây chằng bị đứt hoàn toàn.\r\nCần nhận biết các dấu hiệu của bong gân để phân biệt với gãy xương, từ đó có cách xử trí phù hợp. Các dấu hiệu khi bị bong gân có thể là:\r\n- Đau nhói ở vùng khớp bị tổn thương: Cảm giác đau nhói ở vùng tổn thương, đặc biệt tăng lên khi cử động, di chuyển. Sau đó, khớp cứng lại và người bệnh không còn cảm thấy đau. Tuy nhiên, khoảng 1 giờ sau, vùng khớp bị tổn thương đau nhức trở lại, sưng và bầm tím do chảy máu ở bên trong và rối loạn vận mạch.\r\n- Không đi lại được, không cử động được: Nếu bong gân ở cổ chân, cổ tay, bàn chân, bàn tay, người bệnh sẽ không đi được, không cử động được.\r\nHầu hết các trường hợp bị bong gân cần phải chụp X-quang để phân biệt với tình trạng gãy xương và siêu âm kiểm tra tình trạng thương tổn của các dây chằng.', 'Một số cách có thể giúp bạn phòng ngừa bong gân như:\r\n- Tăng cường sức mạnh cơ bắp quanh khớp: Các bài tập điều hòa và ổn định thường xuyên có thể xây dựng khung xương chắc khỏe và giúp ngăn ngừa chấn thương.\r\n- Khởi động đúng cách trước khi tập thể dục: Việc “làm nóng” các cơ sẽ làm tăng phạm vi chuyển động của chúng, giúp tránh chấn thương và rách mô liên kết.\r\n- Mang giày dép phù hợp: Mang giày dép vừa chân có thể giúp bảo vệ mắt cá chân và khớp gối khỏi bị chấn thương.\r\n- Cẩn thận khi vận động: Cảnh giác với những bề mặt trơn hoặc gồ ghề, các chướng ngại vật có thể gây ra tai nạn để không bị chấn thương.\r\n- Nghỉ ngơi: Ngồi, đứng ở một vị trí quá lâu hoặc thực hiện các hành động lặp đi lặp lại có thể khiến cơ bắp căng quá mức. Mọi người có thể nghỉ ngơi thường xuyên và kéo giãn cơ để thư giãn các cơ bắp.\r\nThực tế, không phải tất cả tình trạng bong gân đều có thể phòng ngừa được, nhưng nếu biết cách chữa, tình trạng này sẽ không gây ra biến chứng nghiêm trọng nào.', 'Điều trị ban đầu cho bong gân chính là phương pháp RICE:\r\n- Nghỉ ngơi (Rest). Tránh các hoạt động gây đau, sưng hoặc khó chịu, nhưng bạn vẫn nên vận động nhẹ nhàng.\r\n- Chườm đá (Ice). Trước khi đến gặp bác sĩ, bạn cần phải chườm đá khu vực tổn thương. Sử dụng túi nước đá hoặc khăn bọc đá lạnh và chườm trong 15-20 phút mỗi lần. Lặp lại sau mỗi 2-3 giờ trong vài ngày đầu sau chấn thương.\r\n- Băng gạc (Compression). Để giúp giảm sưng, băng vùng tổn thương bằng băng thun cho đến khi hết sưng. Đừng quấn quá chặt vì có thể cản trở máu lưu thông. Bạn có thể nới lỏng băng nếu cơn đau tăng lên, tình trạng tê hoặc sưng xảy ra bên dưới khu vực được quấn.\r\n- Nâng cao. Kê cao khu vực bị thương trên mức tim, đặc biệt là vào ban đêm, để giúp giảm sưng.\r\nCác loại thuốc giảm đau không kê đơn như ibuprofen và paracetamol cũng là một cách chữa bong gân.\r\nSau hai ngày đầu, bạn hãy vận động vùng bị thương nhẹ nhàng và sẽ thấy khớp cải thiện dần dần, có thể chịu được trọng lượng hoặc di chuyển mà không bị đau. Phục hồi từ bong gân có thể mất vài ngày đến vài tháng.\r\nCác chuyên gia vật lý trị liệu có thể giúp bạn tối đa hóa sự ổn định và sức mạnh của khớp hoặc chi bị tổn thương. Bác sĩ có thể đề nghị bạn cố định khu vực bằng nẹp. Đối với một số chấn thương, chẳng hạn như rách dây chằng, bác sĩ có thể cân nhắc phẫu thuật.'),
(14, 2, 'Ung thư tế bào vảy khoang miệng', '2021-05-24 07:15:43', '2021-05-24 07:15:43', 'Mỗi năm có khoảng 30.000 ngưởi bị ung thư biểu mô tế bào vảy khoang miệng ở Mỹ. Trên 95% là do hút thuốc lá, uống rượu, hoặc cả hai. Những tổn thương sớm, tự lành lại hiếm khi có triệu chứng; do đó, phòng ngừa bệnh phải đòi hỏi phát hiện sớm bằng cách sàng lọc. Điều trị bằng phẫu thuật, xạ trị, hoặc cả hai, mặc dù phẫu thuật đóng một vai trò lớn hơn trong điều trị hầu hết ung thư khoang miệng. Tỉ lệ sống sót chung 5 năm (tất cả các vị trí và giai đoạn) là > 50%.', '- Ung thư khoang miệng thường xuất hiện ở giữa đường viền môi và đường nối của khẩu cái cứng và mềm hoặc phía sau một phần ba của lưỡi.\r\n\r\n- Tại Hoa Kỳ, 3% ung thư ở nam giới và 2% ở phụ nữ là ung thư biểu mô tế bào khoang miệng, phần lớn xảy ra sau tuổi 50. Giống như hầu hết các vị trí đầu cổ khác, ung thư biểu mô tế bào vảy là ung thư khoang miệng phổ biến nhất.\r\n\r\n- Các yếu tố nguy cơ chính cho ung thư tế bào biểu mô tế bào vẩy khoang miệng là\r\n\r\n* Hút thuốc (đặc biệt là > 2 bao/ ngày)\r\n* Sử dụng rượu\r\n- Rủi ro gia tăng đáng kể khi sử dụng rượu vượt quá 6 oz đối với rượu cất, 15 oz đối với rượu vang, hoặc 36 oz đối với bia / ngày (1oz= 29,57353 ml). Sự kết hợp của việc hút thuốc nặng và lạm dụng rượu làm tăng nguy cơ 100 lần ở phụ nữ và 38 lần ở nam giới.\r\n\r\n- Ung thư biểu mô tế bào vảy của lưỡi cũng có thể là hậu quả của bất kỳ sự kích ứng mãn tính như sâu răng, lạm dụng thuốc, nước súc miệng, nhai thuốc lá, hoặc nhai trầu không. Virut gây u nhú khoang miệng ở người (oral viral papillomavirus - HPV), thông thường bị mắc thông qua tiếp xúc bộ phận sinh dục-miệng, và là một trong các nguyên nhân gây ung thư khoang miệng; tuy nhiên, vai trò của HPV không được xác định rõ ràng trong ung thư khoang miệng như trong ung thư miệng hầu.\r\n\r\n- Khoảng 40% các tế bào ung thư biểu mô tế bào vảy trong khoang miệng bắt đầu trên sàn miệng hoặc trên bề mặt bên và mặt bụng của lưỡi. Khoảng 38% các tế bào ung thư biểu mô tế bào khoang miệng hình thành trên môi dưới; đây thường là các ung thư liên quan đến tiếp xúc ánh sáng mặt trời.', 'Các tổn thương khoang miệng lúc đầu thường là không triệu chứng, nhưng điều đáng chú ý ở đây cần thiết phải sàng lọc phát hiện sớm. Hầu hết các trường hợp, các bác sĩ nha khoa cần cẩn thận kiểm tra khoang miệng và miệng thực quản trong quá trình thăm khám thông thường và có thể làm sinh thiết bàn chải ở những vùng bất bình thường. Các tổn thương có thể xuất hiện như các vùng hồng sản hoặc bạch sản niêm mạc, tổn thương có thể sùi hoặc loét. Các tổ chức ung thư thường cứng và rắn chắc ở vùng viền ổ tổn thương. Các tổn thương gia tăng về kích thước đau, thất ngôn và nuốt khó có thể xảy ra.', 'Ung thư miệng và họng là bệnh lý mặc dù nguy hiểm nhưng có thể chữa trị dứt hoàn toàn nếu được phát hiện và điều trị trong giai đoạn đầu. Tuy nhiên, nếu phát hiện bệnh muộn, khi tình trạng ung thư đã bước sang những giai đoạn nguy hiểm thì bệnh nhân phải đối mặt với nguy cơ tử vong, chỉ có thể kéo dài cuộc sống trong vòng 5 năm. Chính vì thế, việc đề phòng và phát hiện ra những triệu chứng, dấu hiệu của căn bệnh ung thư miệng hay ung thư lưỡi và nhiệt miệng là rất quan trọng, giúp đem lại cơ hội điều trị và sự sống cho người bệnh. Một số biện pháp phòng ngừa ung thư khoang miệng bao gồm:\r\n* Từ bỏ thói quen sử dụng thuốc lá\r\n* Không nghiện rượu\r\n* Xây dựng chế độ dinh dưỡng khoa học, lành mạnh\r\n* Tránh tiếp xúc quá lâu với ánh nắng mặt trời\r\n* Vệ sinh răng miệng đúng cách\r\n* Khám sức khỏe răng miệng định kỳ', '* Phẫu thuật, xạ trị sau phẫu thuật hoặc hóa trị liệu là cất thiết\r\n- Đối với hầu hết các loại ung thư khoang miệng, phẫu thuật là sự lựa chọn đầu tiên. Xạ trị hoặc hóa trị được thêm vào sau phẫu thuật nếu bệnh tiến triển hoặc có các yếu tố nguy cơ cao.\r\n\r\n- Phẫu thuật có vét hạch chọn lọc vùng cổ được chỉ định nếu nguy cơ di căn hạch vượt quá 15 đến 20%. Mặc dù không có sự đồng thuận chắc chắn, nhưng phẫu thuật vét hạch cổ thường được thực hiện cho T2 (kích thước lớn nhất 2 đến 4 cm) và hầu hết các tổn thương T1 với độ sâu xâm lấn khoảng ≥ 4 mm.\r\n\r\n- Phục hồi chức năng thường quy là biện pháp quan trọng để làm giảm tình trạng khuyết tật vùng miệng sau mổ; bao gồm chuyển vạt tại chỗ, chuyển vạt cuống dời. Liệu pháp nói và nuốt có thể được chỉ định sau phẫu thuật\r\n\r\n- Xạ trị là phương pháp điều trị thay thế. Hóa trị không được sử dụng thường xuyên như là liệu pháp chính nhưng được khuyến cáo là liệu pháp bổ trợ cùng với xạ trị ở bệnh nhân có di căn hạch tiến triển.\r\n\r\n- Điều trị ung thư biểu mô tế bào vảy của môi là phẫu thuật cắt bỏ kết hợp tái tạo để tối đa hóa chức năng hậu phẫu. Khi những vùng rộng của môi có sự thay đổi dạng tiền ung thư, có thể phẫu thuật cắt bỏ, hoặc laser để hớt bỏ niêm mạc tổn thương phẫu thuật Mohs có thể được sử dụng. Sau đó, đề nghị sử dụng kem chống nắng phù hợp.'),
(15, 2, 'Đau cơ ở cổ', '2021-05-24 07:19:00', '2021-05-24 07:19:00', 'Đau cơ ở cổ là một căn bệnh khá phổ biến mà mọi người thường mắc phải, nó gây cho người bệnh cảm giác rất khó chịu. Trên thực tế, các cơn đau ở cổ thường bắt nguồn từ rất nhiều nguyên nhân như: tư thế ngủ không phù hợp, xoay cổ không đúng khi luyện tập thể dục thể thao… có người chỉ bị đau một bên có những người đau cả hai bên cổ, cơn đau có thể tại vùng cổ, ở vai và cũng có thể lan xuống tận cánh tay.', 'Ngày nay, mặc dù với những kỹ thuật y khoa tiên tiến thì việc xác định chính xác nguyên nhân của các cơn đau này cũng còn gặp rất nhiều khó khăn. Trong hầu hết các trường hợp, đau cơ ở cổ có thể là triệu chứng của rất nhiều nguyên nhân dưới đây:\r\n\r\n– Hoạt động quá năng động, vượt quá mức cần thiết hoặc làm sai phương pháp như các hoạt động lặp đi lặp lại nhiều lần hay nâng vật nặng quá mức.\r\n\r\n– Bị chấn thương, tổn thương hoặc gãy xương.\r\n\r\n– Tình trạng thoái hóa cột sống, thường gây ra do sự căng thẳng ở các cơ và dây chằng có chức năng nâng đỡ xương sống, hoặc do ảnh hưởng của sự lão hóa.\r\n\r\n– Viêm nhiễm các cơ vùng cổ.\r\n\r\n– Những phát triển bất thường như khối u hoặc có cảm giác đau nhức trong xương.\r\n\r\n– Các cơ không rắn chắc.\r\n\r\n– Căng hoặc co thắt ở cơ.\r\n\r\n– Tư thế ngủ không phù hợp.\r\n\r\n– Sử dụng bàn phím máy tính trong thời gian quá dài cũng có thể gây ra những tổn thương cho cổ.', 'Thông thường, những cơn đau sẽ xảy ra ở khu vực xung quanh cổ và ảnh hưởng đến vùng cơ của cổ, cơn đau có thể khu trú tại chỗ hay lan tỏa đến vai hoặc vùng xương dẹt giữa hai vai. Chúng còn có thể phát triển rộng xuống cánh tay, chân hoặc lan lên vùng đầu, gây đau nửa đầu hoặc đau cả hai bên.\r\n\r\nPhần cơ ở cổ sẽ bị căng, đau, sờ vào thấy cứng, các cơn đau buốt có thể gia tăng bất thường nếu thay đổi tư thế cổ trong trường hợp quay đầu về một bên, tình trạng này vẫn thường được dân gian gọi là chứng “vẹo cổ”.\r\n\r\nCơn đau này có thể xuất phát ở phần đáy sọ, có thể kèm theo cảm giác đau và yếu ở hai vai, tay. Trong cơn đau, người bệnh có cảm giác đau rát như bị kim châm hoặc ngứa ran ở tay và các ngón tay.', '– Thả lỏng hai vai, hạ cằm và giữ thẳng đầu để giúp cổ luôn chắc chắn, thẳng và được thoải mái.\r\n\r\n– Khi ngủ cần nằm gối thấp, tránh nằm sấp khi ngủ.\r\n\r\n– Cần tránh sự căng thẳng trong công việc và trong sinh hoạt hàng ngày.\r\n\r\n– Khi làm việc, tránh cúi đầu quá thấp hoặc nghiêng đầu sang một bên quá lâu.\r\n\r\n– Luôn thay đổi vị trí và thả lỏng các cơ, căng duỗi cơ thể thường xuyên.\r\n\r\n– Thường xuyên luyện tập thể dục, giúp các khớp xương và phần cơ ở cổ được dẻo dai và khỏe mạnh.', 'Trong phần lớn các trường hợp, các cơn đau cổ đều có thể điều trị tại nhà bằng cách sử dụng thuốc Tây, chườm nóng, chườm lạnh và nghỉ ngơi. Một số bí quyết sau đây sẽ rất hữu ích, giúp nhanh chóng điều trị cơn đau:\r\n\r\n– Chườm nóng và lạnh luân phiên cứ mỗi 2 giờ lại chườm một lần, mỗi lần trong khoảng 15 phút, chườm ở những vùng mô mềm. Biện pháp này giúp giảm sưng và tránh bị chuột rút ở các cơ.\r\n\r\n– Nhẹ nhàng đảo đầu về một bên, bắt đầu từ bên phải rồi thay đổi từ từ sang trái. Cố gắng chạm cằm vào ngực nhằm kéo phần cổ xuống thấp, duy trì tư thế trong khoảng 10 giây rồi mới đổi bên.\r\n\r\n– Khi ngồi nhìn thẳng về phía trước, cần ngồi ở tư thế thẳng, giữ cho đầu và cổ nằm ở vị trí chính giữa.\r\n\r\n– Mát-xa nhẹ nhàng vùng cổ.\r\n\r\n– Uống thuốc kháng viêm, thuốc giảm phù nề và giảm đau.\r\n\r\n– Cố gắng duy trì những hoạt động bình thường để giúp các cơ ở cổ luôn hoạt động.'),
(16, 2, 'Thoái hóa đốt sống cổ', '2021-05-24 07:25:39', '2021-05-24 07:25:39', '- Thoái hóa đốt sống cổ là một bệnh lý xương khớp tiến triển chậm thành mãn tính. Trong tài liệu bệnh học có miêu tả đây là một bệnh lý gặp ở các đốt sống cổ với đặc trưng là tình trạng hư hỏng khớp của các diện thân đốt sống, đĩa liên đốt sống, hệ thống màng và dây chằng bao xung quanh cột sống.\r\n\r\n- Trước đây, nhóm người bị thoái hóa đốt sống cổ tập trung nhiều nhất ở tuổi trung niên (khoảng 40-55 tuổi). Tuy nhiên hiện nay tỷ lệ người trẻ mắc bệnh này lại đang có xu hướng tăng lên. Điều này có thể do ảnh hưởng từ nhiều yếu tố như tính chất lao động, làm việc phải sử dụng phần đầu cổ nhiều hoặc người duy trì một tư thế đầu cổ quá lâu như lái xe, dân văn phòng, cũng có thể do thiếu dinh dưỡng trong thời gian dài…\r\n\r\n- Nhìn chung dù xuất phát từ bất cứ nguyên nhân nào thì bệnh thoái hóa đốt sống cổ cũng nên được điều trị sớm để giảm thiểu thấp nhất khả năng biến chứng nặng ảnh hưởng tới cuộc sống như: thoát vị đĩa đệm cột sống cổ, rối loạn tiền đình, chèn ép tủy sống gây teo cơ, liệt chi...', '- Thoái hóa đốt sống cổ là bệnh lý có liên quan mật thiết đến tình trạng lão hóa tự nhiên của xương khớp do tuổi tác. Tuổi tác càng cao thì tình trạng mất nước tự nhiên của sụn khớp càng lớn. Điều này khiến cho bao xơ, nhân đĩa đệm, đĩa sụn khớp bị khô, dễ bào mòn hoặc nứt rách.\r\n\r\n- Nguyên nhân thoái hóa đốt sống cổ do vận động ở tư thế sai lâu ngày: Những người làm việc trong thời gian dài ở một tư thế, ít vận động cổ, ngồi quá thấp so với bàn làm việc… như người làm văn phòng, người lái xe đường dài, thợ cắt tóc, nha sĩ… hoặc người phải cúi ngửa cổ nhiều, hay mang vác nặng vùng cổ vai gáy… thường lâu ngày sẽ gây tổn thương, đẩy nhanh tốc độ thoái hóa.\r\n\r\n- Bị thoái hóa đốt sống cổ do chế độ dinh dưỡng nghèo nàn thiếu chất: Duy trì thói quen ăn uống mất cân bằng dinh dưỡng có thể ảnh hưởng tới khả năng hấp thụ canxi, magie, vitamin… đây là những dưỡng chất quan trọng đối với sự phát triển bình thường của xương khớp.\r\n\r\n- Nguyên nhân gây ra thoái hóa đốt sống cổ do thói quen sinh hoạt không khoa học: Sử dụng gối quá cao khi ngủ, uống nhiều bia rượu, nghiện thuốc lá, dùng nhiều điện thoại, ngủ không đủ giấc, duy trì một tư thế ngủ duy nhất, chỉ nằm bên thuận, dùng gối quá cứng hoặc quá mềm… đều có thể ảnh hưởng đến sức khỏe xương khớp.\r\n\r\n- Tất cả những yếu tố gây ra thoái hóa đốt sống cổ kể trên đều có thể gây ra những thay đổi xấu trong cấu trúc cột sống cổ như: Gây mất nước đĩa đệm làm tăng cường độ ma sát giữa hai đầu đốt sống, thoát vị đĩa đệm cổ gây chèn ép vào rễ thần kinh và tủy sống, tăng sản sinh tế bào xương mới gây hình thành gai xương, dây chằng bị xơ hóa khiến có cử động cổ kém linh hoạt.', 'Thoái hóa đốt sống cổ là một bệnh lý tiến triển chậm, thường ban đầu có thể không có triệu chứng rõ ràng nên ít người phát hiện được ở giai đoạn sớm. Tuy nhiên, khi bệnh này phát triển nặng thì thường biểu hiện rất rõ qua các triệu chứng sau:\r\n\r\nĐau cổ, cảm giác vướng khi vận động, một số trường hợp bị thoái hóa đốt sống cổ có thể bị trật hay vẹo cổ sang một bên.\r\nCơn đau xuất phát từ trong cột sống với cấp độ đau nhói hoặc âm ỉ khó chịu. Cơn đau có thể lan rộng ra toàn bộ gáy, đau sau tai, đau sau đầu, đau đầu vùng chẩm, đau thái dương, trán… trường hợp thoái hóa đốt sống cổ nặng gây đau toàn bộ vùng cổ - vai - gáy - cánh tay (một hoặc hai bên). Những cơn đau này ảnh hưởng trực tiếp đến tư thế đầu cổ, có thể khiến người bệnh có tư thế giảm đau gây sái cổ/vẹo cổ.\r\nHạn chế cử động cổ: Người bệnh thoái hóa đốt sống cổ có cảm giác co cứng ở vùng cổ vai gáy. Triệu chứng này đặc biệt rõ ràng mỗi sáng sau khi ngủ dậy, những hôm thay đổi thời tiết hoặc khi ngồi làm việc lâu trước máy tính. Đặc biệt, mỗi khi ấn vào vùng co cứng này thì cảm thấy rất đau, một số trường hợp có thể sờ thấy mỏm gai xương.\r\nNếu thoái hóa đốt sống cổ ở các đốt sống cao (C1-C2-C4) thì người bệnh có thể có triệu chứng chóng mặt, hay nấc, ngáp nhiều vì đây là những đốt có ảnh hưởng trực tiếp tới khả năng nâng đỡ vùng đầu cổ và vận động cơ hoành.\r\nMột số dấu hiệu của bệnh thoái hóa đốt sống cổ giai đoạn nghiêm trọng: Hoa mắt, chóng mặt, rối loạn tuần hoàn não..', 'Có thể nói, thoái hóa đốt sống cổ là bệnh lý xảy ra do ảnh hưởng từ các thói quen sinh hoạt và làm việc hàng ngày. Chính vì vậy, bạn hoàn toàn có thể chủ động phòng ngừa căn bệnh thoái hóa đốt sống cổ bằng các biện pháp sau:\r\n\r\n - Xoa bóp vùng cổ thường xuyên và đều đặn.\r\n - Cần cân bằng giữa thời gian làm việc và nghỉ ngơi, hạn chế làm những công việc nặng nhọc, gây nhiều áp lực lên vùng cổ.\r\n - Với những người thường xuyên phải  làm những công việc phải ngồi nhiều, cần xây dựng cho mình thói quen đứng lên đi lại vận động và tập vài động tác đơn giản sau thời gian dài. Bên cạnh đó, bạn cần chọn lựa cho mình những bộ bàn ghế có chiều cao phù hợp, duy trì tư thế làm việc đúng đắn và khoa học.\r\n - Để phòng tránh thoái hóa đốt sống cổ chúng ta không gập cổ hoặc cúi đầu quá lâu, khi ngồi xe đường dài cần phải có phần tựa lưng và tựa đầu.\r\n - Thay đổi tư thế linh hoạt khi ngủ, tránh nằm sấp và sử dụng các loại gối quá cao và cứng.\r\n - Muốn phòng tránh thoái hóa đốt sống cổ có thể xảy ra, mọi người không được thực hiện các động tác như ấn cổ, vặn cổ bởi sẽ khiến cho các tứ chi dễ bị liệt, thậm chí trầm trọng hơn có thể dẫn đến tử vong.\r\n - Tăng cường chế độ ăn uống đầy đủ các dưỡng chất cần thiết cho hệ xương khớp với các nhóm thực phẩm giàu canxi, vitamin, magie…\r\n - Tập luyện các bài tập thể dục nhẹ nhàng hỗ trợ đẩy lùi thoái hóa đốt sống cổ để tăng sự linh hoạt cho các khớp.', '- Một trong những nguyên nhân phổ biến dẫn đến thoái hóa đốt sống cổ là do duy trì một tư thế làm việc quá lâu. Do vậy, để đẩy lùi được triệu chứng đau nhức do thoái hóa cột sống gây ra, người bệnh có thể thực hiện một số bài tập tại chỗ đơn giản như bài tập gập cổ, xoay cổ. Thực hiện bài tập gập cổ như sau:\r\n\r\n* Người bệnh có ngồi hoặc đứng, thân người giữ thẳng, mắt nhìn thẳng \r\n* Từ từ ngửa đầu về đằng sau, giữ từ 1-2 phút ở tư thế này\r\n* Từ từ cúi đầu về phía trước, giữ tư thế từ 1-2 phút\r\n* Lặp lại liên tục 15 đến 20 phút hoặc khi nào người bệnh thấy mỏi cổ\r\n\r\n- Ngoài bài tập, người bệnh thoái hóa đốt sống cổ có thể áp dụng một số các mẹo chữa dân gian bằng các thảo dược quen thuộc trong vườn nhà. Một số cách chữa bệnh nhân thoái hóa cột sống có thể tham khảo là: \r\n\r\n* Chữa bằng lá lốt: Người bệnh dùng khoảng 200g lá lốt rửa sạch, thái nhỏ và sao vàng với 1-2 thìa muối. Đổ hỗn hợp vào một tấm vải mỏng, chườm từ 15 đến 20 phút tại vị trí cột sống thoái hóa để giảm đau nhức. \r\n* Chữa bằng ngải cứu: Bệnh nhân bị thoái hóa đốt sống cổ nên kết hợp ngải cứu, lá lốt và cỏ xước giúp người bệnh đẩy lùi được triệu chứng đau nhức, viêm nhiễm hiệu quả. Thực hiện bài thuốc này, người bệnh chỉ cần cho thảo dược kể trên vào nồi, đun sôi và dùng uống 2 lần/ngày. \r\n* Chữa bằng xương rồng: Dùng xương rồng bẹ đập nát với muối, sau đó bỏ lên hơ nóng và đắp vào vị trí cột sống thoái hóa sẽ có công dụng giảm đau tốt. Trong quá trình thực hiện, người bệnh lưu ý nhiệt độ, không để quá nóng hoặc quá nguội.'),
(17, 3, 'Khối u trên thành ngực', '2021-05-24 08:00:28', '2021-05-24 08:00:28', '- Các khối u ở thành ngực nguyên phát chiếm 5% khối u của ngực và 1 đến 2% các khối u nguyên phát. Gần một nửa là lành tính. Các khối u lành tính phổ biến nhất ở ngực là\r\n\r\n* U xương sụn\r\n* U sụn\r\n* Loạn sản xơ sợi\r\n\r\n- Tồn tại nhiều khối u ác tính ở ngực. Hơn phân nửa là di căn từ các cơ quan xa hoặc trực tiếp xâm lấn từ các cấu trúc lân cận (vú, phổi, màng phổi, trung gian). Các khối u ác tính phổ biến nhất phát sinh từ thành ngực là sacôm; khoảng 45% bắt nguồn từ mô mềm, và 55% bắt nguồn từ mô sụn hoặc xương.\r\n\r\n- Ung thư sụn là sarcoma ở ngực chính phổ biến nhất và phát sinh từ dải xương sườn trước và ít phổ biến hơn ở xương ức, xương vai hoặc xương đòn. Các khối u xương bao gồm sác côm xương và khối u ác tính tế bào nhỏ (ví dụ, khối u Ewing, khối u Askin).\r\n\r\n- Các khối u ác tính chính ở mô mềm phổ biến nhất là các khối u xơ ( U xơ , U xơ thần kinh ác tính ) và U mô bào xơ ác tính. Các khối u khác bao gồm U nguyên bào sụn , u xương vú, u hắc tố, u lymphô, sarcom cơ vân , sarcom lympho , đa u tủy và U tương bào.', 'Bị u thành ngực đến nay vẫn chưa tìm ra nguyên nhân chính gây ra, nhưng phần lớn nguyên nhân chủ yếu là do yếu tố gen di truyền, hoặc xuất hiện do quá trình ăn uống, lối sống sinh hoạt.', 'Ung thư mô mềm tại ngực biểu hiện như một khối u tại chỗ mà không có các triệu chứng khác. Một số bệnh nhân kèm theo sốt. Bệnh nhân thường không có cơn đau cho đến khi khối u tiên triển. Ngược lại, khối u sụn và khối u xương thường gây đau đớn.', NULL, '* Phẫu thuật\r\n* Đôi khi hóa trị kết hợp, xạ trị và phẫu thuật\r\n- Hầu hết các khối u ngực được điều trị bằng phẫu thuật cắt bỏ và tái tạo. Tái thiết thường sử dụng một sự kết hợp của vạt da và các chất liệu lắp bộ phận giả. Sự hiện diện của một tràn dịch màng phổi ác tính là một chống chỉ định cho phẫu thuật cắt bỏ.\r\n\r\n- Trong trường hợp u xơ phức tạp hoặc u tương bào bị cô lập, hóa trị liệu và xạ trị nên là liệu pháp đầu tiên.\r\n\r\n- Các khối u ác tính ở tế bào nhỏ như sacôm Ewing và khối u Askin nên được điều trị bằng phương pháp đa tiếp cận, kết hợp hóa học trị liệu, xạ trị và phẫu thuật.\r\n\r\n- Trong trường hợp di căn tới thành ngực từ các khối u xa, chỉ nên sử dụng phương pháp cắt bỏ ngực giảm nhẹ khi các phương pháp không phẫu thuật được chọn không làm giảm các triệu chứng.'),
(18, 3, 'Chấn thương ngực', '2021-05-24 08:13:01', '2021-05-24 08:13:01', 'Chấn thương ngực gây ra khoảng 25% trường hợp tử vong do chấn thương ở Mỹ. Nhiều chấn thương ngực gây tử vong trong những phút đầu tiên hoặc vài giờ sau chấn thương; những chấn thương này thường xuyên có thể được điều trị ngay tại chỗ bằng các phương pháp dứt điểm hoặc tạm thời mà không cần đào tạo phẫu thuật phức tạp.', '- Chấn thương ngực có thể là kết quả của chấn thương vật tù hoặc xuyên thấu. Những chấn thương ngực quan trọng nhất bao gồm:\r\n\r\n* Rách động mạch chủ\r\n* Chấn thương tim\r\n* Chèn ép tim\r\n* Mảng sườn di động\r\n* Tràn máu màng phổi\r\n* Tràn khí màng phổi (tràn khí màng phổi do chấn thương, tràn khí màng phổi mở, và tràn khí màng phổi dưới áp lực)\r\n* Đụng dập phổi\r\n* Nhiều bệnh nhân bị đồng thời cả tràn dịch màng phổi và tràn khí màng phổi (hemopneumothorax).\r\n\r\n- Thương tích xương là phổ biến, thường liên quan đến xương sườn và xương đòn, nhưng có thể gãy xương ức và xương bả vai. Thực quản và cơ hoành cũng có thể bị tổn thương do chấn thương ngực. Do cơ hoành có thể cao ngang đường núm vú trong thì thở ra, vết thương xuyên thấu từ ngực ở ngang hoặc dưới núm vú cũng có thể gây vết thương thấu bụng (vết thương thấu ngực - bụng)', '- Các triệu chứng bao gồm đau, thường nặng hơn khi thở nếu thành ngực bị tổn thương, và đôi khi khó thở.\r\n\r\n- Những triệu chứng thực thể chung bao gồm đau ngực, bầm dập và suy hô hấp; hạ huyết áp hoặc sốc có thể xuất hiện.\r\n\r\n- Giãn tĩnh mạch cổ có thể xảy ra trong tràn khí màng phổi dưới áp lực hoặc là chèn ép tim nếu bệnh nhân có đủ thể tích tuần hoàn.\r\n\r\n- Giảm tiếng rì rào phế nang có thể là kết quả của tràn khí màng phổi hoặc tràn máu màng phổi; gõ đục trên với tràn máu màng phổi và gõ vang với tràn khí màng phổi.\r\n\r\n- Khí quản có thể bị đẩy lệch sang bên gặp trong tràn khí màng phổi dưới áp lực.\r\n\r\n- Trong mảng sườn di động, một phần của thành ngực di động ngược chiều với phần còn lại của ngực (ra bên ngoài khi thở ra và hướng vào trong khi hít vào); phần bị tổn thương thường thấy rõ.\r\n\r\n- Tràn khí dưới da gây ra lép bép khi sờ. Các triệu chứng có thể tập trung ở một khu vực nhỏ hoặc chiếm một phần lớn thành ngực và / hoặc mở rộng đến tận cổ. Thông thường, tràn khí màng phổi là nguyên nhân; khi tràn khí nhiều và rộng, nên cân nhắc đến chấn thương khí phế quản, đường thở trên. Khí ở trung thất có thể tạo ra một âm thanh lép bép đặc trưng đồng bộ với nhịp tim (dấu hiệu Hamman hoặc lạo xạo Hamman). Dấu hiệu Hamman gợi ý tràn khí trung thất và thường bị tổn thương cây khí phế quản, hoặc hiếm hơn là khi bị tổn thương thực quản.', NULL, '* Chăm sóc hỗ trợ\r\n* Điều trị các thương tích cụ thể\r\n\r\n- Các thương tích đe dọa đến mạng sống ngay lập tức cần được điều trị tại chỗ vào thời điểm chẩn đoán:\r\n\r\n* Nghi ngờ tràn khí màng phổi dưới áp lực: Giải áp bằng kim tiêm\r\n* Suy hô hấp hoặc sốc và giảm rì rào phế nang: Dấn lưu màng phổi\r\n* Sốc với nghi ngờ chèn ép tim: Chọc hút dịch màng ngoài tim\r\n* Sốc nghi do giảm thể tích: Hồi sức bù dịch\r\n\r\n- Ngay lập tức mở lồng ngực có thể được xem xét cho bệnh nhân nếu bác sĩ lâm sàng thành thạo trong phẫu thuật và bệnh nhân có một trong các dấu hiệu sau:\r\n\r\n* Vết thương thấu ngực cần hồi sức tim phổi <15 phút\r\n* Vết thương xuyên thấu không thuộc ngực cần hồi sức tim phổi <5 phút\r\n* Chấn thương đụng dập cần hồi sức tim phổi <10 phút\r\n* Huyết áp tâm thu hạ kéo dài <60 mm Hg do nghi ngờ chèn ép tim, xuất huyết, hoặc tắc tĩnh mạch do khí\r\n\r\n- Nếu không có bất kỳ tiêu chuẩn nào trong các tiêu chí này thì dẫn lưu màng phổi là chống chỉ định bởi vì thủ thuật này có những nguy cơ đáng kể (ví dụ như truyền bệnh qua đường máu, thương tích cho bác sĩ lâm sàng) và chi phí.\r\n\r\n- Điều trị cụ thể theo tổn thương. Liệu pháp hỗ trợ thường bao gồm thuốc giảm đau, thở oxy, và đôi khi thở máy.'),
(19, 7, 'Bệnh Viêm khớp', '2021-05-24 08:21:55', '2021-05-24 08:21:55', 'Viêm khớp là gì? \r\nViêm khớp là một thuật ngữ chung của tất cả các rối loạn có ảnh hưởng đến cấu trúc và hoạt động của khớp. Đây là một bệnh lý thường gặp, gây nhiều khó khăn trong sinh hoạt và lao động do đau đớn. Dấu hiệu thường gặp nhất của viêm khớp đó là hạn chế tầm vận động của khớp và đau tại khớp. Các triệu chứng khác có thể có đó là sưng, nóng, đỏ tại khớp và cứng các cơ liên quan đến khớp. Có khoảng 100 loại viêm khớp, trong đó có thể là bệnh viêm khớp đơn thuần hoặc viêm khớp có ảnh hưởng đến các cơ quan khác. Hai loại viêm khớp thường gặp nhất là: viêm xương khớp (OA) và viêm khớp dạng thấp (RA).\r\n\r\nViêm xương khớp: viêm xương khớp là loại viêm khớp phổ biến nhất. Vị trí tổn thương chủ yếu của viêm xương khớp là sụn khớp-sụn là mô bao bọc các đầu xương có vai trò làm giảm ma sát và đảm bảo các đầu xương có thể dẽ dàng trượt lên nhau khi vận động khớp. Vì vậy khi bị viêm xương khớp làm các khớp khó chuyển động, biến dạng thậm chí các xương lệch khỏi vị trí bình thường. Các khớp thường bị viêm đó là các khớp bàn tay, cột sống, đầu gối, hông. Bệnh này thường xuất hiện ở lứa tuổi trung niên, đặc biệt từ 40 tuổi trở lên. Tuy nhiên viêm xương khớp cũng có thể gặp ở người trẻ đặc biệt là sau các chấn thương tại khớp.\r\n\r\nViêm khớp dạng thấp: đây là một bệnh liên quan đến hệ thống miễn dịch của cơ thể, vị trí tổn thương đầu tiên trong viêm khớp dạng thấp là các màng hoạt dịch, sau đó làm rối loạn các thành phần khác trong khớp. Đối tượng thường mắc viêm khớp dạng thấp là phụ nữ trên 40 tuổi.', 'Nguyên nhân bệnh Viêm khớp\r\nBệnh viêm khớp bao gồm nhiều loại khác nhau, mỗi loại sẽ có nguyên nhân riêng tuy nhiên có thể chia thành hai nhóm nguyên nhân sau:\r\n- Các nguyên nhân tại khớp: thường gặp như viêm sụn, thoái hóa, bào mòn sụn khớp, nhiễm khuẩn tại khớp, chấn thương khớp..\r\n- Các nguyên nhân ngoài khớp: thường gặp do các rối loạn chuyển hóa (tăng acid uric trong bệnh gút), bất thường hệ thống miễn dịch gây tổn thương các thành phần trong khớp (bệnh viêm khớp dạng thấp) các tình trạng này làm ảnh hưởng tới hoạt động và cấu trúc của khớp từ đó gây viêm khớp.', 'Dấu hiệu của viêm khớp tùy thuộc vào vị trí khớp viêm và loại viêm khớp, các triệu chứng cảnh báo bạn có thể bị viêm khớp bao gồm:\r\n- Đau khớp, có thể đau khi vận động hoặc ngay cả khi không vận động.\r\n- Hạn chế tầm vận động của khớp, hầu hết các trường hợp hạn chế có kèm theo đau tuy nhiên cũng có thể có hạn chế đơn thuần.\r\n- Sưng và cứng khớp: thường gặp trong các bệnh lý viêm khớp cấp tính.\r\n- Viêm tại chỗ hay vùng xung quanh khớp.\r\n- Đỏ vùng da quanh khớp.\r\n- Lạo xạo khi cử động các khớp, thường gặp và buổi sáng.\r\n- Các triệu chứng ngoài khớp kèm theo có thể có như: sốt, phát ban hoặc ngứa, khó thở, gầy sút cân..các triệu chứng này cũng có thể là dấu hiệu của bệnh khác.', 'Viêm khớp không phải lúc nào cũng phòng ngừa được, tuy nhiên thực hiện các biện pháp sau sẽ giúp giảm nguy cơ và kiểm soát bệnh viêm khớp tốt hơn:\r\n- Tập thể dục: các môn thể dục khác nhau có thể được lựa chọn tùy thuộc và độ tuổi và điều kiện cụ thể.\r\n- Duy trì cân nặng trong giới hạn cho phép.\r\n- Đảm bảo an toàn trong lao động, hạn chế các chấn thương tới khớp.\r\n- Ngồi và làm việc đúng tư thế.\r\n- Khám định kỳ để phát hiện sớm và điều trị kịp thời các rối loạn chuyển hóa của cơ thể.', 'Các phương pháp điều trị viêm khớp bao gồm:\r\nĐiều trị nội khoa: áp dụng cho hầu hết các trường hợp, có thể chỉ điều trị nội khoa bằng thuốc đơn thuần hoặc kết hợp với các phương pháp phẫu thuật. Các thuốc được dùng tùy theo từng loại viêm khớp, bao gồm thuốc giảm đau chống viêm và các thuốc đặc hiệu cho từng nguyên nhân. Vì vậy việc sử dụng thuốc cần thực hiện theo chỉ định của thầy thuốc.\r\n   - Các thuốc giảm đau chống viêm thường dùng để điều trị trong bệnh viêm khớp là nhóm thuốc giảm đau chống viêm không steroid (NSAID) với các biệt dược như mobic, ibuprofen.\r\n   - Corticoid có thể sử dụng chống viêm trong một số trường hợp.\r\nĐiều trị ngoại khoa: phẫu thuật chỉ được chỉ định trong các trường hợp:\r\n   - Khớp không thể hoạt động được.\r\n   - Đau kéo dài không đáp ứng với điều trị nội khoa\r\n   - ảnh hưởng lớn đến sinh hoạt, thẩm mỹ của bệnh nhân.\r\nCác phương pháp phẫu thuật bao gồm:\r\n   - phẫu thuật tạo hình khớp để thay thế khớp.\r\n   - phẫu thuật làm cứng khớp: các đầu xương sẽ bị khóa lại với nhau cho đến khi chúng được chữa lành\r\n   - tạo hình xương: xương sẽ được phẫu thuật tái tạo để đảm bảo thực hiện chức năng của khớp.\r\nChế độ sinh hoạt hợp lý: bên cạnh các phương pháp điều trị chế độ sinh hoạt hợp lý cũng rất cần thiết cho các bệnh nhân viêm khớp. Tập luyện thể dục và ăn kiêng là hai vấn đề cần được quan tâm:\r\n   - Tập thể dục thường xuyên và nhẹ nhàng sẽ giúp khớp dẻo dai hơn. Bơi lội là một sự lựa chọn tốt cho các bệnh nhân viêm khớp do môn thể thao này sẽ giảm áp lực lên các khớp. tuy nhiên cần đảm bảo chế độ tập luyện vừa sức.\r\n   - Chế độ ăn nên giảm lượng tinh bột đặc biệt với các trường hợp béo phì. Tăng các loại thức ăn có chứa chất oxi hóa để giảm viêm. Duy trì chế độ ăn uống đầy đủ các chất dinh dưỡng để giảm tiến triển nặng thêm của viêm khớp.'),
(20, 3, 'Bệnh vành mạch', '2021-05-24 08:25:50', '2021-05-24 08:25:50', 'Bệnh mạch vành là tình trạng xuất hiện khi một hoặc nhiều nhánh của động mạch vành bị hẹp hay bị cản trở do sự hình thành những mảng bám tích tụ bên trong. Các động mạch trong cơ thể chúng ta vốn dĩ mềm mại và đàn hồi, nay trở nên hẹp và cứng hơn do sự xuất hiện có các mảng bám qua thời gian, như cholesterol và các chất khác bám trên thành mạch máu, gọi là chứng xơ vữa động mạch.', '- Trong suốt quá trình sống của chúng ta, có rất nhiều yếu tố nguy cơ đã được xác định là nguyên nhân làm tăng nguy cơ xơ vữa động mạch, gây ra bệnh mạch vành. Các nghiên cứu hiện nay cho thấy rõ có 2 loại yếu tố nguy cơ của bệnh động mạch vành như sau:\r\n\r\n1. Yếu tố nguy cơ không thể thay đổi được\r\n* Tuổi (nam trên 50 và nữ trên 55 tuổi): Tuổi càng cao thì càng có nhiều nguy cơ mắc bệnh mạch vành;\r\n* Giới tính: Thông thường thì nam là đối tượng có nguy cơ cao hơn nữ trong các bệnh lý về tim mạch. Tuy nhiên, nữ giới sau mãn kinh lại có nguy cơ bệnh động mạch vành cao hơn;\r\n* Tiền sử gia đình: Nguy cơ bệnh mạch vành sẽ cao hơn đối với người có bố mẹ, ông bà hay anh chị mắc các tai biến về tim mạch ở độ tuổi dưới 55 với nam và dưới 65 với nữ;\r\n* Các bệnh liên quan: Bệnh mạch vành dễ dàng xuất hiện ở các bệnh nhân mắc đồng thời các bệnh cao huyết áp, đái tháo đường, rối loạn mỡ máu, béo phì,...\r\n\r\n2. Yếu tố nguy cơ có thể thay đổi được\r\n* Lối sống tĩnh tại, ít vận động: Những người thường xuyên ngồi một chỗ, không luyện tập thể dục đều đặn, ít di chuyển, sẽ có nguy cơ cao hơn đối với các bệnh tim mạch và các bệnh liên quan;\r\n* Hút thuốc lá: Thói quen hút thuốc làm tăng nguy cơ không chỉ các bệnh tim mạch mà còn các bệnh nguy hiểm khác như ung thư phổi, ung thư vòm họng,...;\r\n* Nghiện rượu bia: Uống quá nhiều rượu bia cũng là nguyên nhân quan trọng gây thiếu máu cục bộ cơ tim và làm xuất hiện những cơn đau thắt ngực.', '- Triệu chứng bệnh mạch vành phổ biến nhất là đau thắt ngực hay đau vùng tim. Tình trạng này có thể được mô tả với các dấu hiệu sau\r\n\r\n* Nặng nề vùng ngực;\r\n* Cảm giác nén ép tim;\r\n* Đau ran vùng ngực;\r\n* Nóng rát;\r\n* Tê vùng ngực;\r\n* Đầy bụng;\r\n* Cảm giác tim bị bóp chặt lại;\r\n* Đau ngực âm ỉ.\r\n\r\n- Triệu chứng của bệnh mạch vành ở phụ nữ thường nhẹ hơn so với nam giới. Trong cơn đau ngực điển hình có thể kèm theo buồn nôn, đổ mồ hôi, mệt mỏi và khó thở. Các dấu hiệu khác có thể xảy ra với bệnh động mạch vành, bao gồm: Đánh trống ngực; khó thở; nhịp tim nhanh; mệt mỏi, chóng mặt; nôn và buồn nôn; đổ nhiều mồ hôi,...\r\n\r\nBệnh nhân có thể gặp các triệu chứng khác không được đề cập trên đây. Nếu bạn có bất kỳ thắc mắc nào về các triệu chứng và dấu hiệu của bệnh mạch vành, hãy tham khảo thêm ý kiến từ các bác sĩ chuyên môn tại Vinmec.', NULL, '# Phương pháp điều trị bệnh mạch vành\r\n1. Thay đổi lối sống\r\n- Việc thay đổi những thói quen không tốt và xây dựng lối sống phù hợp giúp phòng ngừa và làm chậm diễn tiến của bệnh mạch vành.\r\n\r\n* Ngưng hút thuốc lá và tránh khói thuốc;\r\n* Nói không với rượu bia;\r\n* Chế độ ăn uống hợp lý: Tránh các loại thức ăn nhanh, chế biến nhiều dầu mỡ và thực hiện chế độ ăn ít muối và ít đường với các loại “thực phẩm vàng” cho trái tim, bao gồm các loại ngũ cốc thô, rau quả xanh, trái cây, các loại đậu, các loại hạt,...;\r\n* Luyện tập thể dục đều đặn: Tuy nhiên, đặc biệt đối với các bệnh tim mạch, bệnh nhân nên trao đổi với bác sĩ để lựa chọn hình thức tập thể lực và cường độ phù hợp với tình trạng sức khỏe của bản thân;\r\n* Kiểm soát tốt các bệnh lý kèm theo: Bệnh nhân cần thường xuyên kiểm tra để phát hiện và điều trị kịp thời những bệnh lý liên quan đến bệnh mạch vành, như đái tháo đường, béo phì, thừa cân, rối loạn mỡ máu, tăng huyết áp,...\r\n* Xây dựng lối sống tích cực, thanh thản, vui vẻ, tránh tính trạng căng thẳng quá mức, thực hiện chế độ sinh hoạt hợp lý, làm việc điều độ, quản lý thời gian hiệu quả.\r\n\r\n2. Điều trị bằng thuốc\r\n\r\n- Trong trường hợp nhận thấy việc thay đổi lối sống là không đủ để điều trị bệnh mạch vành, bác sĩ sẽ chỉ định các loại thuốc phù hợp dựa trên tiên lượng bệnh nhân'),
(21, 3, 'Nhồi máu cơ tim', '2021-05-24 08:43:49', '2021-05-24 08:43:49', '- Tim là cơ quan có vai trò bơm máu đi nuôi cơ thể. Tim được nuôi dưỡng từ 2 nhánh mạch máu chính là động mạch vành phải và động mạch vành trái.\r\n\r\n- Nhồi máu cơ tim xảy ra khi đột ngột tắc hoàn toàn hoặc 1 phần 1 trong 2 nhánh mạch máu này hoặc cả 2 nhánh. Nếu 1 vùng cơ tim bị chết do thiếu máu, lúc này chức năng bơm máu của tim không còn toàn vẹn như trước gây nên các hậu quả như suy tim, sốc tim, đột tử do tim,...', '- Nguyên nhân thường gặp nhất của nhồi máu cơ tim là xơ vữa động mạch. Tình trạng này xảy ra là do mảng xơ vữa tích tụ dần theo thời gian và bám vào thành mạch máu, thành phần cấu thành bao gồm cholesterol, canxi, mảnh vỡ tế bào.\r\n\r\n- Từ khoảng 30 tuổi, trong cơ thể người bệnh bắt đầu tiến trình hình thành và phát triển mảng xơ vữa. Quá trình này diễn ra từ vài năm đến vài chục năm.\r\n\r\n- Ở những đối tượng có một số yếu tố nguy cơ như tăng huyết áp, hút thuốc lá, rối loạn lipid máu, đái tháo đường góp phần thúc đẩy tổn thương mạch máu theo thời gian. Chính những rối loạn này làm thành mạch máu dễ bị các phân tử cholesterol lắng đọng và bám vào.', '* Hồi hộp, đánh trống ngực.\r\n* Đau thắt ngực. Mức độ có thể dao động từ ít như kiểu đè nặng, cảm giác nóng rát trước ngực trái đến nhiều như đau dữ dội giống dao đâm, siết chặt. Đau có thể lan lên cổ, hàm dưới, vai trái, lưng, bụng hoặc cánh tay trái. Thời gian đau kéo dài trên 20 phút.\r\n* Khó thở.\r\n* Vã mồ hôi.\r\n* Hoa mắt, chóng mặt.\r\n* Buồn nôn, nôn.\r\n* Tụt huyết áp hoặc tăng huyết áp.\r\n* Tay chân lạnh, ẩm.\r\n* Kích thích, lo lắng, hoảng sợ.\r\n* Ngất.\r\n* Đột tử.\r\n* Ở một số khác, họ không trải qua các triệu chứng như mô tả ở trên mà chỉ cảm thấy hơi mệt hoặc chỉ cảm thấy khó chịu vùng thượng vị.', '- Người bệnh nên tìm hiểu kỹ về căn nguyên gây bệnh để có hướng phòng tránh tốt nhất cho bản thân và gia đình.\r\n\r\n* Vai trò của một chế độ ăn uống cho người bị nhồi máu cơ tim và luyện tập thể dục trong phòng ngừa bệnh tim mạch do xơ vữa động mạch đã được chứng minh hiệu quả. Thói quen ăn uống lành mạnh và tập thể dục thường xuyên sẽ làm giảm tỷ lệ mắc nhiều yếu tố nguy cơ bệnh tim mạch vành. Đối với bệnh nhân đã can thiệp thay đổi lối sống tối ưu nhưng vẫn chưa kiểm soát được các yếu tố nguy cơ, người bệnh nên tuân thủ điều trị theo chỉ định của các bác sĩ chuyên khoa.\r\n* Bỏ thuốc lá.\r\n* Giảm rượu bia.\r\n* Giảm cân, duy trì BMI dưới 23 kg/m2.\r\n\r\n- Tóm lại, nhồi máu cơ tim là căn bệnh nguy hiểm có thể dẫn đến tử vong. Nếu được chẩn đoán sớm sẽ giúp cứu sống vùng cơ tim bị thiếu máu nuôi kịp thời, đồng thời hạn chế những biến chứng nguy hiểm đến tính mạng và những biến chứng lâu dài sau này. Do đó, hãy tìm đến sự trợ giúp của bác sĩ ngay khi có những dấu hiệu bệnh lý để được điều trị nhồi máu cơ tim tối ưu nhất.', '- Phải phát hiện sớm bệnh lý động mạch vành nên khi khách hàng có những yếu tố nguy cơ về tim mạch, có những triệu chứng trên thì phải đi khám và sàng lọc tim mạch sớm nhất\r\n\r\n**Điều trị hỗ trợ**\r\n- Nếu người bệnh có giảm Oxy máu sẽ được hỗ trợ thở Oxy.\r\n\r\n- Được sử dụng các thuốc giảm đau ngực.\r\n\r\n- Được sử dụng một số thuốc kiểm soát nhịp tim, hoặc những thuốc góp phần tốt cho co bóp của tim sau này.\r\n\r\n**Điều trị chính**\r\n- Can thiệp mạch vành (PCI): Đây là một thủ thuật thực hiện bởi các bác sĩ chuyên khoa can thiệp tim mạch. Trong thủ thuật người bệnh vẫn còn tỉnh và có thể quan sát tiến trình thủ thuật trên màn hình video. Bác sĩ sẽ tiêm thuốc tê tại vị trí đùi hoặc cổ tay của người bệnh. Hệ thống ống dẫn được luồn tại đùi hoặc cổ tay theo mạch máu về hướng về tim. Dựa vào hình ảnh thu được trên màn hình chụp, các bác sĩ tìm được vị trí tắc đồng thời thực hiện đặt stent (ống thông) vào mạch máu bị tắc. Stent bung lên giúp máu lưu thông lại bình thường.\r\n\r\n- Mổ bắc cầu mạch vành (CABG): Bệnh nhân được gây mê và phẫu thuật tiến hành trong phòng mổ tại khoa Phẫu thuật tim. Những đoạn mạch máu được lấy từ những nơi khác trong cơ thể được làm cầu nối phía trước và sau nơi tắc giúp máu đi theo đoạn mạch máu ghép đến nuôi cơ tim phía dưới. Đoạn mạch máu được lấy đi chỉ là 1 phần rất nhỏ trong hệ thống mạch máu phong phú của cơ thể nên sẽ không làm ảnh hưởng đến hoạt động của những cơ quan này.'),
(22, 3, 'Viêm phế quản mảng tính', '2021-05-24 08:45:45', '2021-05-24 08:45:45', NULL, NULL, NULL, NULL, NULL),
(23, 3, 'Tắc động mạch phổi', '2021-05-24 08:46:05', '2021-05-24 08:46:05', NULL, NULL, NULL, NULL, NULL),
(24, 3, 'Cơn đâu thăt ngực', '2021-05-24 08:46:22', '2021-05-24 08:46:22', NULL, NULL, NULL, NULL, NULL),
(25, 3, 'Viêm phổi', '2021-05-24 08:46:36', '2021-05-24 08:46:36', NULL, NULL, NULL, NULL, NULL),
(26, 3, 'Viêm cơ tim', '2021-05-24 08:46:48', '2021-05-24 08:46:48', NULL, NULL, NULL, NULL, NULL),
(27, 3, 'Bệnh van tim', '2021-05-24 08:47:04', '2021-05-24 08:47:04', NULL, NULL, NULL, NULL, NULL),
(28, 3, 'Thông liên thất', '2021-05-24 08:47:55', '2021-05-24 08:47:55', NULL, NULL, NULL, NULL, NULL),
(29, 1, 'Thoát vị địa đệm', '2021-05-24 08:49:17', '2021-05-24 08:55:38', 'Thoát vị đĩa đệm là tình trạng các lớp nhân nhầy ở trong vùng đĩa đệm của cột sống bị thoát ra bên ngoài và chèn ép lên rễ thần kinh, ống sống. Từ đó gây cho người bệnh cảm giác đau đớn và khó chịu.', 'Thoát vị đĩa đệm là hệ quả do đĩa đệm bị nứt, rách hoặc do tác động từ các sang chấn bên ngoài. Thoát vị đĩa đệm có thể xảy ra ở bất cứ khu vực nào trên cột sống. Trong đó, thoát vị đĩa đệm cột sống thắt lưng và  thoát vị đĩa đệm cổ thường xảy ra phổ biến nhất.\r\nĐối tượng dễ bị thoát vị đĩa đệm:\r\n-Người cao tuổi.\r\n\r\n-Người thường xuyên làm các công việc nặng nhọc.\r\n\r\n-Người thường xuyên đứng hoặc ngồi quá lâu như nhân viên văn phòng, thợ may, tài xế, nhân viên bán hàng…\r\n\r\n-Người có thói quen sinh hoạt không khoa học như kê gối quá cao khi ngủ, ngồi học tập, làm việc không đúng tư thế…\r\n\r\n-Những người làm nghề đòi hỏi phải thay đổi tư thế một cách liên tục như diễn viên múa, vận động viên thể thao…\r\n\r\n-Người mắc các bệnh lý bẩm sinh về cột sống như trượt cột sống, gai cột sống, vẹo cột sống...', 'Gây teo cơ\r\n\r\nMột khi tình trạng bệnh lý chuyển biến nặng hơn, các cơ sẽ bị yếu dần đi và teo lại. Không chỉ vậy, thoát vị đĩa đệm còn khiến cho máu không được lưu thông đến cơ và khiến các cơ bị thiếu hụt các chất dinh dưỡng cần thiết.\r\n\r\nThoát vị đĩa đệm gây rối loạn vận động\r\n\r\nỞ mức độ nguy hiểm cao nhất, thoát vị đĩa đệm sẽ khiến cho người bệnh bị tê liệt cả hai chân và không thể đi đứng như bình thường.\r\n\r\nGây rối loạn đại tiểu tiện\r\n\r\nThoát vị đĩa đệm sẽ gây ra hiện tượng bí tiểu và khiến cho người bệnh đi tiểu không kiểm soát được. Nguyên nhân là do cơ thắt bị tê liệt và không thể giữ được nước tiểu. Điều này sẽ gây ảnh hưởng nghiêm trọng đến cuộc sống hàng ngày.\r\n\r\nThoát vị đĩa đệm gây ra hội chứng đuôi ngựa\r\n\r\nMột biến chứng thường gặp của thoát vị đĩa đệm chính là gây ra hội chứng đuôi ngựa. Lúc này, người bệnh sẽ bị rối loạn cảm giác ở vùng đáy chậu, vùng chân trở xuống. Sau đó, bệnh nhân sẽ bị liệt động tác ở ngón chân, bàn chân và cẳng chân.', 'Khi bị thoát vị đĩa đệm, người bệnh sẽ xuất hiện các triệu chứng sau:\r\n\r\nXuất hiện những cơn đau đột ngột ở vùng thắt lưng, vùng cổ, vùng vai gáy và chân tay. Tần suất các cơn đau có thể kéo dài âm ỉ trong vòng vài ngày, vài tuần hoặc vài tháng. Đặc biệt, mức độ đau giảm khi nghỉ ngơi và tăng dần lên khi vận động.\r\n\r\nTay chân bị tê bì, bị rối loạn cảm giác, luôn có cảm giác như có kiến bò ở trong xương.\r\n\r\nCơ bị yếu, bại liệt: Đây là triệu chứng thường gặp khi bệnh đã chuyển sang giai đoạn nặng. Lúc này, người bệnh sẽ rất khó khăn trong việc đi lại, hai chân bị teo và liệt và bắt buộc phải ngồi xe lăn.\r\n\r\nXuất hiện cảm giác bí tiểu hoặc són tiểu.\r\n\r\nKhi nhận thấy cơ thể có những triệu chứng này, bệnh nhân cần đến các cơ sở y tế để thăm khám và điều trị kịp thời. Điều này là vô cùng quan trọng và cần thiết để ngăn chặn bệnh tiến triển nặng hơn.', 'Để điều trị thoát vị đĩa đệm, bạn có thể lựa chọn các phương pháp điều trị như:\r\n\r\nĐiều trị nội khoa với thuốc:\r\n\r\nThuốc giảm đau không chứa corticoid, hay còn có tên gọi là NSAID. Điển hình như Paracetamol, Meloxicam, Diclofenac...\r\n\r\nNhóm thuốc giãn cơ.\r\n\r\nThuốc corticoid (Bao gồm cả đường tiêm và uống).\r\n\r\nThuốc chống động kinh.\r\n\r\nĐiều trị không sử dụng thuốc:\r\n\r\nChâm cứu, massage, bấm huyệt, tập các bài tập yoga…\r\n\r\nKéo giãn cột sống.\r\n\r\nThực hiện các bài tập vật lý trị liệu.'),
(30, 2, 'Viêm Amindan', '2021-05-24 08:49:49', '2021-05-24 08:49:49', NULL, NULL, NULL, NULL, NULL),
(31, 2, 'Gai cột sống', '2021-05-24 08:50:03', '2021-05-24 08:50:03', NULL, NULL, NULL, NULL, NULL),
(32, 2, 'Ho', '2021-05-24 08:50:15', '2021-05-24 08:50:15', NULL, NULL, NULL, NULL, NULL),
(33, 2, 'Bướu cổ', '2021-05-24 08:50:39', '2021-05-24 08:50:39', NULL, NULL, NULL, NULL, NULL),
(34, 4, 'Viêm gan B', '2021-05-24 08:53:03', '2021-05-24 08:53:03', NULL, NULL, NULL, NULL, NULL),
(35, 4, 'Viêm gan A', '2021-05-24 08:53:20', '2021-05-24 08:53:20', NULL, NULL, NULL, NULL, NULL),
(36, 4, 'Viêm Gan C', '2021-05-24 08:53:38', '2021-05-24 08:53:38', NULL, NULL, NULL, NULL, NULL),
(37, 4, 'Viêm dạ dày', '2021-05-24 08:54:05', '2021-05-24 08:54:05', NULL, NULL, NULL, NULL, NULL),
(38, 4, 'Rối loạn tiêu hóa', '2021-05-24 08:55:04', '2021-05-24 08:55:04', NULL, NULL, NULL, NULL, NULL),
(39, 4, 'Ung thu thận', '2021-05-24 08:56:03', '2021-05-24 08:56:03', NULL, NULL, NULL, NULL, NULL),
(40, 4, 'Trào ngược dạ dày', '2021-05-24 08:56:17', '2021-05-24 08:56:17', NULL, NULL, NULL, NULL, NULL),
(41, 4, 'Gan nhiễm mỡ', '2021-05-24 08:56:39', '2021-05-24 08:56:39', NULL, NULL, NULL, NULL, NULL),
(42, 4, 'Khó tiêu', '2021-05-24 08:57:01', '2021-05-24 08:57:01', NULL, NULL, NULL, NULL, NULL),
(43, 4, 'Bệnh gan do rượu', '2021-05-24 08:57:37', '2021-05-24 08:57:37', NULL, NULL, NULL, NULL, NULL),
(44, 4, 'Gan to', '2021-05-24 08:58:01', '2021-05-24 08:58:01', NULL, NULL, NULL, NULL, NULL),
(45, 4, 'Viên tụy', '2021-05-24 08:58:45', '2021-05-24 08:58:45', NULL, NULL, NULL, NULL, NULL),
(46, 5, 'Viêm bàng quang', '2021-05-24 09:00:08', '2021-05-24 09:00:08', NULL, NULL, NULL, NULL, NULL),
(47, 5, 'Viêm âm đạo', '2021-05-24 09:00:27', '2021-05-24 09:00:27', NULL, NULL, NULL, NULL, NULL),
(48, 5, 'Sùi mào gà', '2021-05-24 09:00:39', '2021-05-24 09:00:39', NULL, NULL, NULL, NULL, NULL),
(49, 5, 'Hiếm muộn', '2021-05-24 09:00:55', '2021-05-24 09:00:55', NULL, NULL, NULL, NULL, NULL),
(50, 5, 'U nang buồng trứng', '2021-05-24 09:01:11', '2021-05-24 09:01:11', NULL, NULL, NULL, NULL, NULL),
(51, 5, 'U xơ tử cung', '2021-05-24 09:01:29', '2021-05-24 09:01:29', NULL, NULL, NULL, NULL, NULL),
(52, 5, 'Xoắn tinh hoàn', '2021-05-24 09:01:45', '2021-05-24 09:01:45', NULL, NULL, NULL, NULL, NULL),
(53, 5, 'U xo tuyến tiền liệt', '2021-05-24 09:02:10', '2021-05-24 09:02:10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `bodiesdetails` (`id`, `id_bodies`, `discriptions`, `created_at`, `updated_at`, `overview`, `reason`, `symptom`, `prevent`, `treatment`) VALUES
(54, 1, 'U tuyến nước bọt', '2021-05-24 09:02:12', '2021-05-24 09:02:12', 'U tuyến nước bọt là tình trạng tăng trưởng bất thường hiếm gặp ở tuyến nước bọt. Tuyến nước bọt nằm ở phía sau khoang miệng và có nhiệm vụ tiết nước bọt giúp cơ thể tiêu hóa thức ăn. Tuyến nước bọt chính bao gồm tuyến mang tai (nằm hai bên sườn mặt), tuyến dưới hàm và tuyến dưới lưỡi. Các tuyến phụ bắt đầu từ vòm miệng và nằm dọc trong khoang miệng, xoang, mũi. Các tuyến này chỉ có thể thấy dưới kính hiển vi.', 'Các khối u tuyến nước bọt là rất hiếm, chiếm ít hơn 10 phần trăm của tất cả các khối u đầu và cổ. Không rõ nguyên nhân gây ra khối u tuyến nước bọt.\r\n\r\nCác nghiên cứu chỉ ra rằng ung thư tuyến nước bọt xảy ra khi một số tế bào trong tuyến nước bọt phát triển đột biến trong DNA của chúng. Các đột biến cho phép các tế bào phát triển và phân chia nhanh chóng. Các tế bào bị đột biến tiếp tục sống khi các tế bào khác sẽ chết. Các tế bào tích lũy tạo thành một khối u có thể xâm lấn mô gần đó. Các tế bào ung thư có thể vỡ ra và lan rộng (di căn) đến các khu vực xa của cơ thể.', 'Triệu chứng cơ năng\r\n\r\nTriệu chứng u tuyến nước bọt thường nghèo nàn, biểu hiện là một khối u vùng dưới hàm, cổ (tuyến dưới hàm), ở góc hàm hay ở mặt (tuyến mang tai), khối sưng lên ở sàn miệng (tuyến dưới lưỡi).\r\n\r\nĐặc điểm của u: xuất hiện đã lâu, tiến triển chậm, có thể không đau, nếu đau ở vùng u gợi ý là khối u ác tính. Khối u có thể tăng kích thước nhanh do viêm nhiễm, chảy máu trong u.\r\n\r\nVề vị trí của các tuyến nước bọt phụ và u tuyến có thể gặp ở nhiều nơi, mỗi khối u ở vị trí khác nhau sẽ gây ra các triệu chứng tại chỗ khác nhau. Chảy máu hoặc ngạt mũi có thể là dấu hiệu đầu tiên của khối u tuyến nước bọt phụ tại vách ngăn mũi. Trong khi các khối u ở đáy lưỡi lại gây cảm giác nuốt vướng và nghẹn. Các khối u ở vùng miệng lại có thể gây khít hàm…\r\n\r\nTriệu chứng thực thể\r\n\r\nU lành tính: biểu hiện u tròn, ranh giới rõ, mật độ chắc, di động; khi u ở sâu, viêm xơ hóa thì di động hạn chế; không có dấu hiệu thần kinh hoặc xâm lấn da.\r\n\r\nU ác tính: u cứng, chắc, ranh giới không rõ, di động hạn chế hoặc cố định khi u xâm lấn vào cơ hoặc xương hàm dưới, có thể gây liệt nhẹ môi dưới, xâm lấn da hoặc loét mặt da, có thể di căn hạch cổ hoặc di căn phổi, xương.\r\n\r\nTriệu chứng cận lâm sàng\r\n\r\nSiêu âm: là một phương pháp dễ thực hiện, có giá trị cao trong chẩn đoán; góp phần khẳng định chẩn đoán lâm sàng, xác định vị trí u ở trong nhu mô hay ngoài tuyến, u đặc hay u nang, u hay là hạch. Trong một số trường hợp, siêu âm có thể đem lại một số thông tin giúp phân biệt u lành với u ác. U lành tính thường có một độ đồng nhất, bờ rõ nét. U ác thường có mật độ âm không đồng nhất, bờ không đều và có thể hoại tử trung tâm u.\r\n\r\nChụp cắt lớp vi tính hoặc chụp cộng hưởng từ: Các phương pháp chẩn đoán hình ảnh này mang lại rất nhiều thông tin trong việc đánh giá bệnh lý u tuyến nước bọt, mật độ, kích thước u, ranh giới, độ xâm lấn của u vào tổ chức xung quanh. Chụp cộng từ có lợi còn cho hình ảnh không gian ba chiều rõ nét giữa u tuyến và mô bình thường, không làm tăng kích thước u do tia X\r\n\r\nChọc hút tế bào bằng kim nhỏ: phương pháp này góp phần chẩn đoán phân biệt viêm tuyến, khối u, các hạch lympho lân cận.', 'Hạn chế uống rượu, bia, hút thuốc lá\r\n\r\nCung cấp đầy đủ dinh dưỡng hàng ngày', 'Các biện pháp điều trị bệnh U tuyến nước bọt\r\nPhương pháp điều trị tốt nhất với các khối u tuyến nước bọt là phẫu thuật, làm xét nghiệm mô bệnh học. Việc cắt bỏ rộng đến đâu là do các tuýp mô học và đặc điểm giải phẫu quyết định.\r\n\r\nU tuyến mang tai: u lành tính cắt thùy nông hay thùy sâu nhưng cần bảo tồn dây thần kinh VII. U ác tính tùy theo kích thước, độ xâm lấn mà quyết định chỉ cắt thùy nông hay cắt toàn bộ tuyến cùng dây VII.\r\n\r\nU tuyến dưới hàm dù lành hay ác tính cũng cần phải loại bỏ tuyến. Nếu trên lâm sàng có hạch cần phải nạo vét hạch.\r\n\r\nU tuyến dưới lưỡi: lấy bỏ toàn bộ khối u và tổ chức tuyến, tránh làm tổn thương sàn miệng.\r\n\r\nĐiều trị khối u tuyến nước bọt phụ thuộc vào loại, kích thước và giai đoạn của khối u tuyến nước bọt bao gồm phẫu thuật, có hoặc không có xạ trị.'),
(55, 5, 'Giang mai', '2021-05-24 09:02:24', '2021-05-24 09:02:24', NULL, NULL, NULL, NULL, NULL),
(56, 5, 'Ung thu âm hộ', '2021-05-24 09:02:39', '2021-05-24 09:02:39', NULL, NULL, NULL, NULL, NULL),
(57, 5, 'Hẹp bao quy đầu', '2021-05-24 09:02:53', '2021-05-24 09:02:53', NULL, NULL, NULL, NULL, NULL),
(58, 5, 'Rối loạn cương dương', '2021-05-24 09:03:17', '2021-05-24 09:03:17', NULL, NULL, NULL, NULL, NULL),
(59, 6, 'Mày đay', '2021-05-24 09:03:42', '2021-05-24 09:03:42', NULL, NULL, NULL, NULL, NULL),
(60, 6, 'Ngứa', '2021-05-24 09:03:53', '2021-05-24 09:03:53', NULL, NULL, NULL, NULL, NULL),
(61, 6, 'Bệnh chàm', '2021-05-24 09:04:05', '2021-05-24 09:04:05', NULL, NULL, NULL, NULL, NULL),
(62, 6, 'Lão hóa da', '2021-05-24 09:04:22', '2021-05-24 09:04:22', NULL, NULL, NULL, NULL, NULL),
(63, 4, 'Chốc lở', '2021-05-24 09:04:36', '2021-05-24 09:04:36', NULL, NULL, NULL, NULL, NULL),
(64, 6, 'Ghẻ', '2021-05-24 09:04:48', '2021-05-24 09:04:48', NULL, NULL, NULL, NULL, NULL),
(65, 1, 'Liệt nữa mặt', '2021-05-24 09:04:51', '2021-05-24 09:06:33', 'Liệt mặt ảnh hưởng đến sức khỏe gây khó khăn trong sinh hoạt đồng thời gây tâm lý ngại tiếp xúc cho bệnh nhân. Việc điều trị liệt nửa mặt phải mất một khoảng thời gian nhất định và có thể tái phát.', 'Liệt mặt ảnh hưởng đến sức khỏe gây khó khăn trong sinh hoạt đồng thời gây tâm lý ngại tiếp xúc cho bệnh nhân. Việc điều trị liệt nửa mặt phải mất một khoảng thời gian nhất định và có thể tái phát.', 'Các dấu hiệu nhận biết:\r\n + Đột ngột thấy hai bên mặt mất cân đối, nửa mặt bên liệt bất động, mất nếp nhăn trán.\r\n\r\n + Mắt nhắm không kín, lông mày sụp xuống, rãnh mũi - má mờ, méo miệng, góc mép miệng bị xệ xuống.\r\n\r\n + Chảy dãi hoặc nước một góc miệng, thức ăn hay đọng lại ở má bên liệt, người bệnh không làm được các động tác: phồng má, cười, chu môi, nhăn trán.\r\n\r\nTiến triển của bệnh: bệnh không nguy hiểm đến tính mạng, nếu được phát hiện sớm, điều trị đúng cách, bệnh có thể được chữa khỏi từ 70 - 100%. Trường hợp nhẹ có thể hồi phục sau vài tuần, nếu nặng có thể vài tháng. Nếu không được điều trị đúng cách có thể để lại nhiều di chứng ảnh hưởng đến thẩm mỹ, co giật nửa mặt. Nguy hiểm nhất là bị viêm loét giác mạc do mắt không nhắm được, gây khô mắt, nhiễm trùng giác mạc dẫn đến viêm, loét giác mạc.\r\n\r\nNguyên tắc điều trị và phục hồi chức năng: điều trị càng sớm càng tốt, tránh các kích thích mạnh, không cố điều trị cho hết liệt trong giai đoạn cấp của bệnh, kết hợp bảo vệ mắt bên liệt.', 'Tránh gió lạnh đột ngột, mùa nóng không nằm thẳng điều hòa; mùa lạnh mở cửa từ từ, tránh gió lùa, ra đường đeo khẩu trang giữ ấm mặt, không nên cho các cháu nhỏ ngồi phía trước xe.\r\n\r\nKhi có các triệu chứng nghi ngờ bệnh bạn nên sớm đi khám bác sỹ chuyên khoa để được chẩn đoán và điều trị kịp thời hạn chế tối đa để lại những di chứng của bệnh.', 'Các phương pháp điều trị và phục hồi chức năng:\r\n\r\n+ Thuốc chống viêm, tăng dẫn truyền thần kinh.\r\n\r\n+ Bảo vệ mắt, chống khô mắt và viêm giác mạc: đeo kính râm, nhỏ mắt bằng nước muối sinh lý.\r\n\r\n+ Đảm bảo vệ sinh răng miệng.\r\n\r\n+ Các phương pháp vật lý trị liệu:\r\nGiai đoạn cấp: chống viêm bằng sóng ngắn, giai đoạn bán cấp và mạn tính dùng nhiệt nóng.\r\nDùng điện phân đưa thuốc chống viêm, tăng dẫn truyền thần kinh.\r\nDùng laser công suất thấp chiếu vào các huyệt vị vùng mặt bên liệt.\r\nDùng điện xung: kích thích thần kinh cơ mặt bên liệt.\r\nDùng siêu âm: xoa bóp vi thể toàn bộ cơ mặt bên liệt.\r\n+ Các bài tập phục hồi chức năng\r\nXoa bóp vùng mặt: dùng 5 đầu ngón tay và lòng bàn tay thả lỏng day, xoa nhẹ nhàng toàn bộ bên liệt theo chiều kim đồng hồ từ trên xuống dưới, từ trong ra ngoài và ngược lại.\r\nTập các cơ vùng mặt qua gương: nhắm mắt, huýt sáo, thổi lửa, ngậm chặt miệng, mỉm cười, nhăn trán, phát âm các từ: B, P, U, I, A.'),
(66, 6, 'Hắc lào', '2021-05-24 09:05:09', '2021-05-24 09:05:09', NULL, NULL, NULL, NULL, NULL),
(67, 6, 'Bệnh dị ứng', '2021-05-24 09:05:21', '2021-05-24 09:05:21', NULL, NULL, NULL, NULL, NULL),
(68, 6, 'Bệnh ghẻ cóc', '2021-05-24 09:05:35', '2021-05-24 09:05:35', NULL, NULL, NULL, NULL, NULL),
(69, 6, 'Ban đỏ', '2021-05-24 09:05:50', '2021-05-24 09:05:50', NULL, NULL, NULL, NULL, NULL),
(70, 6, 'Bệnh vảy nến', '2021-05-24 09:06:12', '2021-05-24 09:06:12', NULL, NULL, NULL, NULL, NULL),
(71, 6, 'Chân tay lạnh', '2021-05-24 09:06:31', '2021-05-24 09:06:31', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorienews`
--

CREATE TABLE `categorienews` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorienews`
--

INSERT INTO `categorienews` (`id`, `title`, `summary`, `avatar_url`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Bài phát thanh tuyên truyền 5K trong phòng chống dịch bệnh Covid-19.', 'Thưa bà con và các bạn! Trong những ngày vừa qua, nước ta đã ghi nhận nhiều ca dương tính trong cộng đồng do biến thể mới của vi rút SARS-CoV-2 tại Hải Dương, Quảng Ninh, Hải Phòng, Bắc Ninh và Hà Nội. Đây là trường hợp lây nhiễm cộng đồng lớn nhất từ trước đến nay, có nguy cơ lây lan nhanh trên diện rộng.', 'https://cdn.tgdd.vn/Files/2020/05/30/1259576/tat-tan-tat-ve-trung-cach-chon-trung-tuoi-ngon-c-760x367.jpg', 'Thưa bà con và các bạn! Trong những ngày vừa qua, nước ta đã ghi nhận nhiều ca dương tính trong cộng đồng do biến thể mới của vi rút SARS-CoV-2 tại Hải Dương, Quảng Ninh, Hải Phòng, Bắc Ninh và Hà Nội. Đây là trường hợp lây nhiễm cộng đồng lớn nhất từ trước đến nay, có nguy cơ lây lan nhanh trên diện rộng.', '2021-05-24 06:56:46', '2021-05-24 06:56:46'),
(2, 'Bộ Y tế khuyến cáo: Không sử dụng buồng khử khuẩn toàn thân để đảm bảo an toàn', 'Tại Việt Nam, đại dịch Covid-19 đang diễn biến vô cùng phức tạp, số ca lây nhiễm trong cộng đồng có sự gia tăng nhanh chóng. Sáng ngày 20/8/2020, Ban Chỉ đạo Quốc gia Phòng chống dịch COVID-19 cho biết đã ghi nhận thêm 1 ca mắc mới, nâng tổng số lên 3800 bệnh nhân.', 'https://vinmec-prod.s3.amazonaws.com/images/20200813_040225_362602_covidtuvong-1596679.max-1800x1800.jpg', '1. Ca bệnh tử vong đầu tiên vì Covid-19\r\nBệnh nhân đầu tiên tử vong vì Covid-19 tại Việt Nam là bệnh nhân 428, 70 tuổi, bệnh nhân khoa Nội thận - Nội tiết, Bệnh viện Đà Nẵng, có tiền sử suy tim, suy thận.\r\n\r\nNgày 9/7 bệnh nhân chuyển vào Khoa Nội thận - Tiết niệu (Bệnh viện Đà Nẵng) điều trị do cảm thấy bị tức ngực, mệt. Đến 5h30 ngày 30/7/2020, bệnh nhân xuất hiện tình trạng suy hô hấp và được tiến hành đặt ống nội khí quản, thở máy VCV, lọc máu tĩnh mạch – tĩnh mạch liên tục.7h30 ngày 30/7/2020, bệnh nhân xuất hiện tình trạng nhịp tim rời rạc chậm dần và ngừng tim, tiến hành cấp cứu ngừng tim 5 phút có tim trở lại.\r\n\r\nRạng sáng ngày 31/7/2020, bệnh nhân ngừng tim và được cấp cứu tại chỗ, bệnh nhân tử vong lúc 5h30 ngày 31/7/2020 do Covid-19 trên nền bệnh lý nặng.\r\n\r\n2. Ca tử vong thứ 2 do Covid -19\r\nCa tử vong thứ 2 là bệnh nhân số 437, nam, 61 tuổi, có tiền sử bị suy thận mạn giai đoạn cuối, chạy thận nhân tạo, đái tháo đường, tăng huyết áp, gout.\r\n\r\nNgày 29/7 bệnh nhân bị trụy mạch, huyết áp phụ thuộc vận mạch liều cao, được đặt ECMO - hệ thống tim phổi nhân tạo. Dù đã được các bác sĩ Bệnh viện Đà Nẵng cứu chữa tận tình nhưng bệnh nhân đã không qua khỏi vào chiều 31/7 do suy đa tạng, sốc nhiễm trùng, ngừng tuần hoàn hô hấp.\r\n\r\ntử vong corona\r\nDù đã được các bác sĩ Bệnh viện Đà Nẵng cứu chữa tận tình nhưng bệnh nhân đã không qua khỏi vào chiều 31/7 do suy đa tạng, sốc nhiễm trùng, ngừng tuần hoàn hô hấp.\r\n3. Ca bệnh tử vong thứ 3 do Covid-19\r\nBệnh nhân 499, nữ, 66 tuổi, bị ung thư máu được điều trị tại Khoa Nội Thần kinh Bệnh viện Đà Nẵng và ra viện 23/7/2020, sau khi về nhà, bệnh nhân có biểu hiện ho, sốt nên tái khám tại Bệnh viện Ung bướu. Do có dịch tễ nghi ngờ nên bệnh viện đã chuyển ngay khu cách ly và lấy mẫu xét nghiệm SARS-CoV-2 cho kết quả dương tính.\r\n\r\nBệnh nhân được chẩn đoán bạch cầu cấp dòng tủy kháng trị/Đái tháo đường/SARS-CoV-2. Biến chứng suy tủy, suy tuần hoàn, suy hô hấp. Đến 19 giờ ngày 31/07, bệnh nhân có biểu hiện suy hô hấp nặng hơn và được tiến hành đặt nội khí quản, thở máy, đến 04h55 phút 01/08 thì ngừng hô hấp, ngừng tuần hoàn và được xác nhận tử vong.\r\n\r\n4. Ca bệnh tử vong thứ 4 do Covid-19\r\nBệnh nhân 524, nữ, 86 tuổi, quê Quảng Nam, có tiền sử suy tim, suy thận mạn tính.\r\n\r\nNgày 31/7, bệnh nhân được chuyển đến Bệnh viện Trung ương Huế trong tình trạng tỉnh lơ mơ và suy kiệt. Ngày 1/8, bệnh nhân đã tỉnh táo nhưng vẫn còn mệt; đến 18 giờ thì bệnh nhân hôn mê, mạch chậm. 0h ngày 2/8, bệnh nhân có biểu hiện ngừng tim, ngừng hô hấp và tử vong lúc 5h30. Chẩn đoán tử vong do choáng nhiễm trùng, nhiễm độc, suy hô hấp cấp không hồi phục trên bệnh nhân suy đa tạng nhiễm Covid-19.\r\n\r\n5. Ca bệnh tử vong thứ 5 do Covid-19\r\nBệnh nhân 475, nữ, 83 tuổi, quê Đà Nẵng, vào Bệnh viện Đà Nẵng từ ngày 12/7, bệnh nền là thoái hóa đa khớp. Ngày 17/7, bệnh nhân xuất hiện sốt. Ngày 30/7 phát hiện dương tính nCoV, đến 4h30 ngày 2/8, bệnh nhân có dấu hiệu suy kiệt nặng và hôn mê sâu sau 15 phút, đến 5h45 tử vong. Chẩn đoán bệnh nhân tử vong do hội chứng mạch vành cấp, thoái hóa đa khớp, viêm túi mật, tăng huyết áp và Covid-19.\r\n\r\n6. Ca bệnh tử vong thứ 6 do Covid-19\r\nBệnh nhân 429, nữ, 53 tuổi, có tiền sử suy tim, đái tháo đường tuýp 2, suy thận mạn 5 năm rưỡi. Từ ngày 19/7 đến 30/7, bệnh nhân được điều trị tại Khoa Nội thận Bệnh viện Đà Nẵng, tiến hành chạy thận tuần 3 lần. Ngày 27/7, bệnh nhân xét nghiệm cho kết quả dương tính với nCoV và được chuyển sang Khoa Y học Nhiệt đới của Bệnh viện Đà Nẵng lúc 23h30 cùng ngày. Ngày 31/7, bệnh nhân tỉnh, thở oxy qua kính.\r\n\r\nNgày 1/8, bệnh nhân tỉnh nhưng có biểu hiện khó thở, đến 12h30 trưa thì xuất hiện suy hô hấp, phải đặt nội khí quản cấp cứu. Ngày 2/8, bệnh nhân lọc máu liên tục từ lúc 9h, thở máy, đến 16h thì mạch chậm đe dọa ngưng tim. 16h30 cùng ngày bệnh nhân tử vong. Chẩn đoán tử vong suy tim cấp, nhồi máu cơ tim, suy thận mạn, đái tháo đường tuýp 2 và Covid-19.', '2021-05-24 07:11:12', '2021-05-24 07:11:12'),
(3, '115.000 nhân viên y tế trên thế giới chết vì Covid-19, WHO lên tiếng', 'Theo Tổ chức Y tế Thế giới (WHO), ít nhất 115.000 nhân viên y tế đã tử vong do Covid-19 kể từ khi đại dịch bắt đầu. Bình đẳng về vaccine là yêu cầu cấp thiết trước tình hình này.', 'https://znews-photo.zadn.vn/w860/Uploaded/hfrms/2021_05_24/the_world_health_organization_said_the_real_number_of_dead_from_the_pandemic_could_be_two_to_three_times_higher_than_official_statistics_suggest_1621634092219_6.jpg', '“Nhiều nhân viên y tế đã bị lây bệnh chéo. Dù báo cáo còn ít ỏi, chúng tôi ước tính 115.000 nhân viên y tế đã phải đánh đổi mạng sống để cứu người”, Tổng giám đốc Tedros Adhanom Ghebreyesus phát biểu tại buổi khai mạc kỳ họp Đại hội đồng Y tế Thế giới của WHO ngày 24/5, theo AFP.\r\n\r\n“Trong gần 18 tháng, các bác sĩ và nhân viên y tế trên toàn thế giới đã đứng trên ranh giới giữa sự sống và cái chết. Họ đã cứu vô số mạng sống và chiến đấu vì nhân loại. Có nhiều người đã ngã xuống”, ông Tedros cho biết.\r\n\r\n\r\nnhan vien y te tu vong anh 1\r\nSố ca tử vong của các nhân viên y tế thực sự còn cao hơn gấp 2 đến 3 lần so với con số được thống kê, WHO cho biết. Ảnh: AFP.\r\nCũng theo lời tổng giám đốc WHO, kể từ khi cuộc khủng hoảng bắt đầu, nhân viên y tế tại nhiều nước đã rơi vào tình trạng thất vọng, bất lực khi không được bảo vệ, thiếu khả năng tiếp cận với các thiết bị bảo hộ và vaccine.\r\n\r\nÔng mô tả sự bất bình đẳng về vaccine là vấn đề then chốt cần khắc phục và chính nó đang kéo dài đại dịch. Hơn 75% tổng số vaccine Covid-19 trên thế giới hiện chỉ được cung cấp cho 10 quốc gia.\r\n\r\nNhà lãnh đạo WHO cho rằng số lượng liều vaccine trên toàn cầu cho đến nay sẽ đủ cung cấp cho tất cả nhân viên y tế và người cao tuổi trên thế giới nếu chúng được phân phối công bằng.\r\n\r\n“Một nhóm nhỏ các quốc gia sản xuất và mua phần lớn vaccine trên thế giới đang kiểm soát số phận của phần còn lại của thế giới”.\r\n\r\nÔng kêu gọi những quốc gia có dự trữ vaccine lớn chia sẻ và hợp tác nhiều hơn để mở rộng quy mô sản xuất và phân phối vaccine.\r\n\r\nWHO và chương trình chia sẻ vaccine toàn cầu COVAX đang đối mặt với tình trạng thiếu hụt nguồn cung đáng kể. Thực trạng này đang làm trì hoãn nỗ lực triển khai chương trình tiêm chủng ở các nước khó khăn.\r\n\r\n“Chúng tôi đang vận chuyển từng liều một trong số 72 triệu liều mà chúng tôi có đến 125 quốc gia và vùng lãnh thổ”, ông Tedros cho biết. Nhưng ông lo ngại rằng những liều vaccin chuyển đi chỉ đủ trang trải cho 1% dân số tại các quốc gia đó.\r\n\r\n“Hôm nay, tôi kêu gọi các quốc gia thành viên hỗ trợ thúc đẩy mạnh mẽ việc tiêm chủng cho ít nhất 10% dân số của mọi quốc gia vào tháng 9”, ông Tedros cho biết trong buổi khai mạc. Đồng thời, ông kêu gọi mở rộng phạm vi này lên 30% vào cuối năm.', '2021-05-24 07:16:29', '2021-05-24 07:16:29'),
(6, 'Tết Đoan Ngọ: BS cảnh báo không ăn theo cách này \"kẻo không diệt được sâu bọ còn rước thêm bệnh\"', 'Trong dịp Tết Đoan Ngọ chúng ta thường ăn hoa quả, rượu nếp với mong muốn mang lại may mắn. Tuy nhiên ăn như thế nào là đúng cũng cần phải học.', 'https://media.phunutoday.vn/files/content/2021/06/14/unnamed-1111.jpg', 'Ăn quá nhiều: Trong dịp Tết Đoan Ngọ dù có thích ăn cơm rượu nếp đến mấy bạn cũng không nên ăn quá nhiều bởi trong cơm rượu có chất chua, lên men lastic tạo ra ra axit làm rối loạn tiêu hóa. Do đó, nên ăn hạn chế và cơm rượu được sử dụng phải là loại được lên men trong vòng 3-4 ngày, tránh để lâu, lên men quá mức vì ngoài men rượu còn có men tạp.\r\n\r\nĂn khi bụng rỗng: Bạn tuyệt đối không nên ăn rượu bếp, hoa quả như mận vải vào lúc đang đói.  Bởi khi dạ dày trống rỗng việc ăn thực phẩm giàu tính axit như rượu nếp sẽ khiến dạ dày dễ kích thích, dẫn đến viêm loét hơn. Nên ăn sau bữa ăn như một món tráng miệng, tránh lúc đói vì không tốt cho dạ dày.Trẻ nhỏ không nên ăn: Những món ăn như rượu nếp, vải hay, mận đều khá nóng trong nên không nên cho trẻ nhỏ ăn nhiều. Đặc biệt là cơm rượu nếp có một hàm lượng etanol nên không phù hợp với trẻ nhỏ. Trẻ nhỏ dưới 10 tuổi ăn cơm rượu nếp cẩm vì có thể gây say ảnh hưởng tới chức năng gan thận,\r\n\r\nNgười bị tiểu đường nên chú ý: Do trong thành phần của cơm rượu, vải hay mận có chứa đường hấp thu nhanh nên những người có bệnh lý đái tháo đường nếu ăn nhiều sẽ gây ảnh hưởng không tốt đối với lượng đường trên máu.\r\n\r\nNgười bệnh dạ dày nên hạn chế ăn: Với những người bị viêm gan, viêm dạ dày không nên ăn cơm rượu, mận bởi chúng có tính axit cao sẽ làm bệnh tình thêm tăng nặng.\r\n\r\nNgười đang muốn giảm cân: Do vải chứa nhiều đường, còn cơm rượu chứa nhiều tinh bột và đường, rượu chứa nhiều calo, nên ăn quá nhiều vẫn sẽ gây tăng cân.Người đang nóng trong: Những người nóng trong không nên ăn nhiều rượu nếp, mận hay vải dễ nổi mụn nhọt, bị dị ứng, chàm cũng hạn chế thực phẩm lên men vì sẽ làm tình trạng  bệnh nặng hơn. \r\n\r\nPhụ nữ có thai hoặc cho con bú nên lưu ý: Với những người phụ nữ có thai hoặc cho con bú khi ăn vải cũng nên tham khảo ý kiến bác sĩ vì ngoài tính nóng, quả vải có lượng đường cao nếu ăn nhiều có thể dẫn đến tiểu đường thai kỳ.', '2021-06-17 01:33:19', '2021-06-17 01:35:56'),
(7, 'Soi quả vải dưới kính hiển vi: Hình ảnh bên trong có lẽ sẽ khiến bạn khó ngờ', 'Nhìn con giòi bò lúc nhúc bên trong thịt vải, có lẽ những người thích loại quả này đều cảm thấy sợ hãi, rùng mình. Liệu ăn phải có sao không?', 'https://media.phunutoday.vn/resize/351x194/files/content/2021/06/17/soi-qua-vai-duoi-kinh-hien-vi-2-0019.jpg', 'Ăn vải có giòi có sao không?\r\n\r\nCó lẽ ít ai có thể cưỡng lại được những quả vải thiều chín ngọt, thơm ngon. Rất nhiều người thích ăn vải, cũng hạn chế ăn vì sợ nóng nhưng liệu như vậy đã chắc là an toàn hay chưa?\r\n\r\nMới đây, một tài khoản Tik Tok đã soi quả vải dưới kính hiển vi để mọi người nhìn rõ hơn phần thịt của loại quả này. Kết quả là ở mức phóng đại 100 lần có thể thấy rõ phần thịt vải trắng muốt, trong trẻo và không hề có bụi bẩn, vi khuẩn bám dính.Ở mức phóng đại 400 lần, hình ảnh tế bào của quả vải được phóng to, trông vô cùng đẹp mắt. Hình ảnh dưới kính hiển vi cho thấy bề mặt quả vải khá sạch sẽ, không hề có vi khuẩn hay virus sinh sống.Tuy nhiên, đến cuối video, người xem trông thấy con vật giống con giòi đang ngọ nguậy bên trong phần thịt vải. Điều này khiến những ai yêu thích loại quả này đều cảm thấy hoang mang, lo lắng.\r\n\r\nTheo PGS.TS Nguyễn Duy Thịnh, Cán bộ Viện Công nghệ Sinh học - Công nghệ Thực phẩm (Đại học Bách khoa Hà Nội): Việc xuất hiện giòi trong hoa quả khá phổ biến, không chỉ quả vải mà các loại quả như ổi, nhãn... khi chín đều là \"vùng đất màu mỡ\" để giòi ký sinh và tăng trưởng.\r\n\r\nGiòi là ấu trùng của các loài côn trùng. Chúng đẻ trứng vào các quả chín thông qua một nỗ cực nhỏ mắt thường khó nhìn thấy. Sau đó, trứng chui vào thịt quả, nở thành giòi có màu trắng ngà, không chân.\r\n\r\nTuy nhiên, theo PGS. TS Nguyễn Duy Thịnh thì mọi người không cần sợ hãi quả vải có chứa giòi bởi chúng không gây độc. Nếu có ăn nhầm cũng không gây hại cho cơ thể.\r\n\r\nMuốn loại bỏ ấu trùng có trong quả vải, chuyên gia khuyên hãy ngâm vải trong nước sạch hoặc nước muối, chúng sẽ tự chui ra. Khi mua vải, bạn nên chọn quả vải tươi mới, căng bóng.\r\n\r\n\r\nThời điểm nào không nên ăn vải?\r\n\r\nMặc dù quả vải có nhiều tác dụng tốt cho sức khỏe nhưng ăn khi đói bụng có thể khiến bạn phải nhập viện.\r\n\r\nVào năm 2018 tại Trung Quốc từng có một cậu bé phải nhập viện vì ăn hết 20 quả vải trong lúc đói bụng. Theo các bác sĩ chẩn đoán thì cậu bé ngất vì say vải.\r\n\r\nViệc tiêu thụ vải tươi khi đói khiến cho cơ thể phải nạp quá nhiều đường trong thời gian ngắn, từ đó gây ra tình trạng hoa mắt, chóng mặt, buồn nôn, tay chân bủn rủn.\r\n\r\nNgoài ra, những người nóng trong, đang bị mụn nhọt cũng không nên ăn vải vì có thể khiến tình trạng càng thêm trầm trọng. Phụ nữ khi trước và trong kỳ \"đèn đỏ\", những người có bệnh tích đờm trong cổ họng, đang bị bệnh thủy đậu, mụn nhọt, rôm sảy, lẹo mắt cũng cần hạn chế ăn vải.', '2021-06-17 01:50:28', '2021-06-17 01:50:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Thời gian tạo', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 0, 1, 1, 1, 1, '{}', 9),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 7, 'url', 'image', 'Hình Ảnh', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'ten', 'text', 'Tên thuốc', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(63, 7, 'loai', 'text', 'Loại', 0, 1, 1, 1, 1, 1, '{}', 6),
(64, 7, 'giaTien', 'number', 'Giá tiền', 0, 1, 1, 1, 1, 1, '{}', 7),
(65, 7, 'chiDinh', 'markdown_editor', 'Chỉ định', 0, 0, 1, 1, 1, 1, '{}', 8),
(66, 7, 'lieuDung', 'markdown_editor', 'Liều dùng', 0, 0, 1, 1, 1, 1, '{}', 9),
(67, 7, 'baoQuan', 'text', 'Bảo quản', 0, 0, 1, 1, 1, 1, '{}', 10),
(68, 7, 'thanhPhan', 'markdown_editor', 'Thành phần', 0, 0, 1, 1, 1, 1, '{}', 11),
(69, 7, 'dongGoi', 'text', 'Đóng gói', 0, 0, 1, 1, 1, 1, '{}', 12),
(70, 7, 'xuatXu', 'text', 'Xuất xứ', 0, 1, 1, 1, 1, 1, '{}', 13),
(71, 7, 'nhaSanXuat', 'text', 'Nhà sản xuất', 0, 0, 1, 1, 1, 1, '{}', 14),
(72, 7, 'chucNang', 'markdown_editor', 'ChucNang', 0, 0, 1, 1, 1, 1, '{}', 15),
(73, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 9, 'description', 'text', 'Miêu tả', 0, 1, 1, 1, 1, 1, '{}', 2),
(75, 9, 'id_disease', 'text', 'Id bệnh', 0, 1, 1, 1, 1, 1, '{}', 3),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(78, 9, 'overview', 'text', 'Tổng quan', 0, 1, 1, 1, 1, 1, '{}', 6),
(79, 9, 'treatment', 'text', 'Điều trị', 0, 1, 1, 1, 1, 1, '{}', 7),
(80, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 10, 'descriptions', 'text', 'Miêu tả', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 10, 'overview', 'markdown_editor', 'Tổng quan', 0, 1, 1, 1, 1, 1, '{}', 3),
(83, 10, 'treatment', 'markdown_editor', 'Điều trị', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(85, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(86, 13, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(87, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 0, 0, '{}', 2),
(88, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(89, 13, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 4),
(90, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 14, 'id_bodies', 'text', 'Id Bodies', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 14, 'discriptions', 'text', 'Miêu tả', 0, 1, 1, 1, 1, 1, '{}', 3),
(93, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(94, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(95, 14, 'overview', 'markdown_editor', 'Tổng quan', 0, 1, 1, 1, 1, 1, '{}', 6),
(96, 14, 'reason', 'markdown_editor', 'Lý do', 0, 1, 1, 1, 1, 1, '{}', 7),
(97, 14, 'symptom', 'markdown_editor', 'Triệu chứng', 0, 1, 1, 1, 1, 1, '{}', 8),
(98, 14, 'prevent', 'markdown_editor', 'Phòng ngừa', 0, 1, 1, 1, 1, 1, '{}', 9),
(99, 14, 'treatment', 'markdown_editor', 'Điều trị', 0, 1, 1, 1, 1, 1, '{}', 10),
(100, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(101, 21, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(102, 21, 'summary', 'markdown_editor', 'Tóm tắt', 0, 0, 1, 1, 1, 1, '{}', 3),
(103, 21, 'avatar_url', 'image', 'Hình Ảnh', 0, 1, 1, 1, 1, 1, '{}', 4),
(104, 21, 'content', 'markdown_editor', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(105, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(106, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(107, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(108, 22, 'url', 'image', 'Đường dẫn', 0, 1, 1, 1, 1, 1, '{}', 2),
(109, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(110, 22, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 4),
(111, 7, 'barcode', 'text', 'Barcode', 0, 1, 1, 1, 1, 1, '{}', 16),
(112, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 1, 1, 1, 1, '{}', 6),
(113, 1, 'history', 'text', 'History', 0, 0, 1, 1, 1, 1, '{}', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-05-22 06:14:29', '2021-06-11 07:27:40'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(7, 'medicines', 'medicines', 'Medicine', 'Medicines', 'voyager-leaf', 'App\\Medicine', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-22 06:30:57', '2021-06-17 01:45:03'),
(8, 'benhtheomua', 'benhtheomua', 'Benhtheomua', 'Benhtheomuas', NULL, 'App\\Benhtheomua', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 03:14:59', '2021-05-24 03:17:20'),
(9, 'benhtheomuas', 'benhtheomuas', 'Benhtheomua', 'Benhtheomuas', NULL, 'App\\Benhtheomua', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 03:20:59', '2021-05-24 03:23:38'),
(10, 'diseaseweathers', 'diseaseweathers', 'Diseaseweather', 'Diseaseweathers', NULL, 'App\\Diseaseweather', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 03:37:25', '2021-05-24 05:33:41'),
(13, 'bodies', 'bodies', 'Body', 'Bodies', 'voyager-meh', 'App\\Body', 'Vùng cơ thể', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 04:05:28', '2021-06-17 20:18:32'),
(14, 'bodiesdetails', 'bodiesdetails', 'Bodiesdetail', 'Bodiesdetails', 'voyager-group', 'App\\Bodiesdetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 04:11:58', '2021-05-24 05:20:47'),
(21, 'categorienews', 'categorienews', 'Bài viết', 'Categorienews', NULL, 'App\\Categorienews', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 06:51:36', '2021-06-17 01:31:29'),
(22, 'sliehomes', 'sliehomes', 'Sliehome', 'Sliehomes', NULL, 'App\\Sliehome', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-24 18:25:06', '2021-05-27 03:32:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diseaseweathers`
--

CREATE TABLE `diseaseweathers` (
  `id` int(10) UNSIGNED NOT NULL,
  `descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treatment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diseaseweathers`
--

INSERT INTO `diseaseweathers` (`id`, `descriptions`, `overview`, `treatment`, `created_at`, `updated_at`) VALUES
(2, 'Sốt xuất huyết', 'Sốt xuất huyết là bệnh truyền nhiễm cấp tính, có thể gây thành dịch do virus dengue gây ra. Bệnh lây lan do muỗi vằn đốt người bệnh nhiễm virus sau đó truyền bệnh cho người lành qua vết đốt.\r\n\r\nTriệu chứng thường gặp ở bệnh sốt xuất huyết chủ yếu là sốt cao đột ngột 39-40 độ C, kéo dài 2-7 ngày, khó hạ sốt, nổi mẩn, phát ban. Nặng hơn, người bệnh có thể bị chảy máu cam, chảy máu chân răng, nôn ra máu, đau bụng, tụt huyết áp, nếu không được cấp cứu kịp thời có thể tử vong.\r\n\r\nBệnh sốt xuất huyết đến nay chưa có vắc xin phòng bệnh và chưa có thuốc điều trị đặc hiệu, biện pháp phòng bệnh chủ yếu và hiệu quả là diệt muỗi, diệt loăng quăng/bọ gậy và phòng muỗi đốt.', 'Để phòng và tránh bệnh Sốt xuất huyết, hãy thực hiện diệt loăng quăng, bọ gậy bằng cách thả cá vào dụng cụ chứa nước lớn, đậy kín tất cả các dụng cụ chứa nước để ngăn không cho muỗi vào đẻ trứng. Hàng tuần loại bỏ, lật úp các vật liệu phế thải, các hốc nước tự nhiên không cho muỗi đẻ trứng như chai, lọ, mảnh chai, vỏ dừa, mảnh lu vỡ, lốp xe cũ, hốc tre, bẹ lá... Thực hiện ngủ màn phòng muỗi đốt. Tích cực phối hợp với ngành y tế trong các đợt phun hóa chất phòng, chống dịch. Khi bị sốt đến ngay cơ sở y tế để được khám và tư vấn điều trị. Không tự ý điều trị tại nhà', '2021-05-24 05:38:04', '2021-05-25 20:10:32'),
(3, 'Cảm lạnh thông thường và cúm', 'Là bệnh truyền nhiễm cấp tính, dễ gặp phải ở mọi lứa tuổi và thường xảy ra nhất trong mùa mưa. Bệnh dễ gây thành dịch lớn do nhiễm virus cúm, bệnh lây lan trong không khí và qua tiếp xúc, ví dụ như hít phải virus bệnh trong không khí, tiếp xúc chung đồ vật với người bị bệnh….\r\n\r\nBiểu hiện lâm sàng: nhức đầu, đau mình mẩy, sốt, ho và mệt mỏi. Bệnh gây ảnh hưởng lên đường hô hấp trên và dưới, thông thường bệnh diễn biến tự khỏi song có thể gây nhiều biến chứng nặng hay gặp, nguy hiểm nhất là viêm phổi do vi khuẩn và suy đa tạng.', 'Điều trị: giảm các triệu chứng do bệnh gây ra như sốt, đau đầu, đau mỏi người. Người bệnh cần được nghỉ ngơi cho đến khi hết sốt, ăn thức ăn dễ tiêu và uống nhiều nước. Trong trường hợp bị nhiễm một số loại tuyp virus đặc biệt như: cúm A H5N1 thì phần lớn người bệnh cần hỗ trợ hô hấp trong 48 giờ đầu nhập viện. Các thuốc kháng virut cũng được sử dụng, tuy nhiên hiệu quả của nó vẫn chưa được kiểm chứng.\r\n\r\nDự phòng: Biện pháp chủ yếu để phòng bệnh cúm là sử dụng vacxin cúm. Ngoài ra, chúng ta nên uống nhiều nước và bổ sung các vitamin và khoáng chất để cơ thể luôn khỏe mạnh. Đối với trường hợp nghi ngờ nhiễm virus A H5N1 thì cần cách ly bệnh nhân nghi ngờ và mang các phương tiện bảo hộ lao động (đi găng, đội mũ, khẩu trang N95, quần áo bảo hộ….), rửa tay khi tiếp xúc với bệnh nhân.', '2021-05-24 05:50:50', '2021-05-24 05:50:50'),
(4, 'Bệnh viêm phổi', 'Khí hậu hanh khô khi chuyển thu hay lạnh giá vào mùa đông, phổi rất dễ bị ảnh hưởng, đặc biệt là trẻ em. Khi phổi bị viêm, các phế nang bị tổn thương khiến dưỡng khí không thể đi vào máu do đó làm cho cơ thể, đầu tiên là vùng não bị thiếu dưỡng khí. Bệnh viêm phổi vẫn có thể có những biến chứng rất nặng dẫn tới tử vong.\r\n\r\nTriệu chứng hay gặp nhất là bệnh nhân có những biểu hiện của bệnh nhiễm khuẩn đường hô hấp, dấu hiệu ho khan, ho khạc đờm, đờm màu trắng đục, màu xanh, vàng… đôi khi ho ra máu. Người mắc còn có thể có hiện tượng tức ngực, sốt, khó thở, nhịp tim nhanh…', 'Khi có những dấu hiệu như trên và thấy dấu hiệu sức khỏe yếu đi, mệt mỏi… đặc biệt nặng ngực cần phải đi đến các cơ sở y tế để các bác sĩ thăm khám, chẩn đoán bệnh.\r\n\r\nHơn hết, để phòng tránh bệnh viêm phổi, các bác sĩ đưa ra lời khuyên cần chú ý rèn luyện sức khoẻ để tăng cường sức đề kháng. Với trẻ em, cần mặc đủ ấm, ăn đủ chất trong những ngày chuyển mùa.', '2021-05-24 05:52:42', '2021-05-24 05:55:18'),
(5, 'Bệnh đau mắt đỏ', 'Đau mắt đỏ cũng là loại bệnh thường xảy ra trong lúc giao mùa do vi khuẩn, virus tranh thủ xâm nhập vào cơ thể khi nó chưa kịp thích nghi.\r\n\r\nĐau mắt đỏ sẽ gây cho bệnh nhân những khó chịu vùng mắt: mắt đỏ ngầu, nước mắt giàn giụa, sưng nhức mắt… Và đặc biệt, khiến người mắc không thể tự tin khi giao tiếp.', 'Để phòng tránh, phải chú ý giữ vệ sinh cá nhân và nơi sinh hoạt. Do bệnh dễ lây nên tuyệt đối tránh tiếp xúc với người bệnh. Không dùng chung khăn, chậu rửa mặt, tránh dụi mắt, thường xuyên rửa tay bằng xà phòng. Đồng thời nên đeo kính khi ra ngoài, nhỏ mắt hàng ngày, giặt khăn mặt bằng xà phòng và phơi dưới nắng.\r\n\r\nNếu mắc bệnh cần nghỉ 7 - 10 ngày đẻ cách ly và điều trị dứt điểm, tránh lây lan sang người khác.', '2021-05-24 05:53:15', '2021-05-24 05:55:01'),
(6, 'Bệnh tiêu chảy', 'Tiêu chảy là bệnh đường tiêu hóa thường gặp nhất. Đối với người trưởng thành, bệnh tương đối ít nghiêm trọng khi họ có thể tự uống bù nước và điện giải. Tuy nhiên, khi tiêu chảy xảy ra ở trẻ nhỏ, bệnh sẽ trầm trọng hơn nếu người lớn không cho trẻ uống thêm nước hoặc trẻ không thể uống (do ói, hôn mê).\r\n\r\nTiêu chảy là tình trạng đi cầu phân lỏng với lượng nhiều và số lần đi cầu nhiều hơn so với bình thường. Tùy vào thời gian kéo dài, có ba loại tiêu chảy chính:\r\n\r\n- Tiêu chảy cấp tính kéo dài trong một vài ngày đến một tuần\r\n\r\n- Tiêu chảy bán cấp kéo dài khoảng 3 tuần\r\n\r\n- Tiêu chảy mạn tính kéo dài hơn 4 tuần.\r\n\r\nNguyên nhân chủ yếu gây tiêu chảy bao gồm vi khuẩn và ký sinh trùng, vi rút, các chứng rối loạn tiêu hóa hoặc thói quen ăn uống.', 'Phòng và tránh bệnh tiêu chảy bằng việc đảm bảo vệ sinh an toàn thực phẩm, thực hiện ăn chín, uống chín, không uống nước lã. Sử dụng nước sạch trong ăn uống và sinh hoạt, đặc biệt trong chế biến thực phẩm. Thường xuyên rửa tay bằng xà phòng và nước sạch trước khi chế biến thức ăn, trước khi ăn và sau khi đi vệ sinh. Khi có dấu hiệu tiêu chảy cấp phải đưa ngay đến cơ sở y tế gần nhất để được tư vấn điều trị kịp thời.', '2021-05-24 05:54:11', '2021-05-24 05:54:11'),
(7, 'Bệnh sởi', 'Sởi là bệnh truyền nhiễm do virus sởi gây ra và là một trong các loại bệnh dịch phổ biến ở nước ta vào thời điểm tháng 9 - tháng 10 hàng năm. Bệnh sởi có các biểu hiện đặc trưng là sốt, phát ban, ho, mắt đỏ (viêm kết mạc mắt), chảy nước mũi; có thể dẫn đến những biến chứng nặng như: Viêm tai giữa, viêm phổi, tiêu chảy, khô loét giác mạc mắt, viêm não... dễ dẫn đến tử vong. Bệnh lây theo đường hô hấp qua các giọt bắn dịch tiết từ đường hô hấp của người mắc bệnh hoặc cũng có thể qua tiếp xúc trực tiếp hoặc qua bàn tay bị ô nhiễm với các dịch tiết đường hô hấp có chứa mầm bệnh.', 'Tiêm vắc xin sởi là biện pháp tốt nhất để phòng bệnh. Để đạt hiệu quả phòng bệnh cao, trẻ cần được tiêm đủ 2 mũi vắc xin sởi (mũi 1 tiêm khi trẻ được 9 tháng tuổi; mũi 2 khi trẻ được 18 tháng tuổi). Ngoài ra, để phòng tránh nguy cơ bùng phát dịch sởi, cần có kiến thức tự phòng, chống. Bên cạnh đó, cần tiến hành tiêm vắc xin sởi cho phụ nữ ở độ tuổi mang thai và những người dân trong cộng đồng chưa có kháng thể chống sởi giúp giảm số người mắc, phòng lây nhiễm bệnh sởi...', '2021-05-24 05:56:04', '2021-05-24 05:56:04'),
(8, 'Bệnh chân tay miệng', 'Cùng với bệnh sởi, tay chân miệng là loại bệnh phổ biến vào tháng 9, tháng 10 và tháng 11 hàng năm, khi thời tiết biến đổi phức tạp. Bệnh thường xuất hiện ở trẻ nhỏ dưới 10 tuổi, đặc biệt là trẻ dưới 5 tuổi.', 'Các bệnh kể trên đều do virus gây ra và đều có triệu chứng đầu tiên là nóng sốt. Vì thế, ngay khi phát hiện ra các dấu hiệu, cần đưa trẻ đi khám để xác định xem hiện tượng nóng sốt ở trẻ là do loại bệnh lý nào để từ đó có biện pháp xử lý kịp thời.', '2021-05-24 05:56:40', '2021-05-24 05:56:40'),
(9, 'Bệnh viêm da dị ứng', 'Viêm da dị ứng có thể xảy ra ở bất kỳ đối tượng nào, đặc biệt là trẻ sơ sinh và trẻ nhỏ do hệ miễn dịch non yếu, làn da trẻ mỏng manh dễ bị tác động. Thống kê số trường hợp viêm da dị ứng tại Việt Nam, có khoảng 30% trẻ mắc bệnh này. Bệnh thường xảy ra vào thời điểm giao mùa thu đông, có thể chấm dứt khi trẻ 5 tuổi nhưng số ít trường hợp kéo dài đến khi trưởng thành.\r\n- Dấu hiệu nhận biết: Các dấu hiệu đặc trưng của bệnh gồm da nổi mẩn đỏ, ngứa ngáy, có thể chảy dịch, phù nề,… Một số trẻ có thể ho, sốt, chán ăn và sụt cân.\r\n- Phương pháp điều trị: Bố mẹ cần đưa trẻ đến cơ sở y tế để được bác sĩ thăm khám và điều trị đúng cách, hiệu quả.', 'Phòng ngừa viêm da dị ứng ở trẻ bằng cách vệ sinh nhà cửa, chăn gối, đồ chơi của trẻ sạch sẽ, tránh để trẻ tiếp xúc với các tác nhân gây dị ứng; dưỡng ẩm cho trẻ, che chắn cẩn thận cho trẻ khi ra ngoài; bổ sung dinh dưỡng tăng cường sức đề kháng cho trẻ…', '2021-05-24 05:59:47', '2021-05-24 07:58:14'),
(10, 'Bệnh viêm não Nhật Bản', 'Viêm não Nhật Bản là bệnh lý nguy hiểm, bất kỳ đối tượng nào cũng có nguy cơ mắc bệnh, đặc biệt là ở trẻ dưới 15 tuổi. Tại Việt Nam, bệnh xuất hiện rải rác vào các tháng trong năm, khoảng 2.000 – 3.000 trường hợp mắc bệnh/năm. Bệnh biến chứng nguy hiểm, đe dọa tính mạng người bệnh với khoảng 20% trường hợp tử vong, 50% các trường hợp cứu sống lại mắc di chứng bệnh tật nặng nề.\r\n- Dấu hiệu nhận biết: Trẻ em mắc bệnh viêm não Nhật Bản không có bất cứ triệu chứng nào ở giai đoạn ủ bệnh. Đến giai đoạn khởi phát, trẻ sẽ sốt cao 39 – 40 độ C hoặc hơn kèm theo các triệu chứng như đau đầu, đau bụng, nôn, thậm chí rối loạn nhãn cầu, mất nhận thức.', '- Phương pháp điều trị: Hiện viêm não Nhật Bản chưa có phương pháp điều trị đặc hiệu. Khi có các triệu chứng bệnh, bố mẹ hãy đưa trẻ đến ngay cơ sở y tế để được xử trí kịp thời, tránh các biến chứng nguy hiểm như phù nề não, cơn co giật và các biến chứng ở hệ hô hấp và tim mạch…\r\n- Cách phòng ngừa: Để phòng ngừa viêm não Nhật Bản cho trẻ, Bộ Y tế khuyến cáo bố mẹ cần đưa trẻ đi tiêm vắc xin phòng bệnh đủ mũi và đúng lịch; đồng thời vệ sinh sạch sẽ nơi ở, môi trường xung quanh; cho trẻ mặc đồ dài, ngủ mùng kể cả ban ngày để tránh muỗi đốt truyền bệnh…', '2021-05-24 06:01:05', '2021-05-24 07:57:56'),
(11, 'Bệnh hen suyễn', 'Hen suyễn (hay còn gọi là hen phế quản) là một trong những bệnh lý mãn tính, đe dọa tính mạng người bệnh nếu không được điều trị kịp thời. Tổ chức Y tế Thế giới (WHO) ước tính mỗi năm thế giới có khoảng 250.000 trường hợp tử vong do hen suyễn. Tại Việt Nam, khoảng 8-10% trẻ mắc bệnh hen suyễn và dự đoán số lượng có thể gia tăng vào thời điểm giao mùa thu đông hàng năm.\r\n- Dấu hiệu nhận biết: Triệu chứng đặc trưng của hen suyễn là các cơn ho khò khè kéo dài, có thể tái phát nhiều lần. Các cơn ho có chiều hướng tăng vào ban đêm hoặc lúc gần sáng, đặc biệt trẻ có thể ho dữ dội dẫn đến khó thở khi chuyển mùa.', '- Phương pháp điều trị: Hiện chưa có phương pháp điều trị dứt điểm hen suyễn. Các biện pháp điều trị chủ yếu nhằm cắt cơn hen, hạn chế các biến chứng nguy hiểm. Do đó, chuyên gia khuyến cáo bố mẹ theo dõi, nhận biết sớm các triệu chứng hen suyễn ở trẻ và đưa trẻ đến ngay cơ sở y tế để được kiểm soát và ngăn chặn bệnh tiến triển nặng.\r\n- Cách phòng ngừa: Tránh để trẻ sống hoặc tiếp xúc với môi trường ô nhiễm, đầy khói bụi, thuốc lá. Bổ sung dinh dưỡng đúng cách, tránh những thực phẩm làm tăng cơn hen đối với những trẻ có tiền sử hen suyễn. Đặc biệt, mặc ấm, giữ ấm cơ thể trẻ và tiêm vắc xin đầy đủ để phòng bệnh truyền nhiễm cho trẻ tránh “bệnh chồng bệnh” vào thời điểm giao mùa thu đông.', '2021-05-24 06:02:28', '2021-05-24 07:57:37'),
(12, 'Bệnh nhiễm trùng hô hấp', 'Nhiễm trùng hô hấp là một trong những bệnh lý gây tử vong hàng đầu ở trẻ em. Mỗi năm trên thế giới có khoảng 4,3 triệu trẻ em dưới 5 tuổi tử vong vì nhiễm trùng hô hấp, chủ yếu là viêm tiểu phế quản và viêm phổi. WHO và Unicef đã phát động chương trình phòng chống bệnh nhiễm trùng hô hấp với mục tiêu cụ thể: Giảm tỷ lệ tử vong bệnh ở trẻ dưới 5 tuổi, giảm tỷ lệ mắc bệnh và giảm tỷ lệ kháng kháng sinh.\r\n- Dấu hiệu nhận biết: Triệu chứng nhiễm trùng hô hấp ở trẻ rất đa dạng, trẻ có thể sốt cao, ho, nhịp thở nhanh, tiếng thở rít, tím tái quanh môi, bỏ bú hoặc bỏ ăn… Một số trẻ có thể gặp các triệu chứng khác như nôn, chướng bụng, đi phân lỏng, khó thở, quấy khóc…', '- Phương pháp điều trị: Các phương pháp điều trị hiện tại nhằm giảm thiểu các triệu chứng, ngăn ngừa các biến chứng nguy hiểm ở trẻ. Bố mẹ cần đưa trẻ đến ngay cơ sở y tế uy tín để được theo dõi và xử trí kịp thời.\r\n- Cách phòng ngừa: Các biện pháp phòng ngừa bệnh bao gồm vệ sinh sạch sẽ môi trường sống xung quanh trẻ, bổ sung đầy đủ chất dinh dưỡng, tăng cường hệ miễn dịch, đặc biệt tiêm ngừa vắc xin đầy đủ theo khuyến cáo giúp trẻ phòng tránh được nhiễm trùng hô hấp cùng các bệnh giao mùa khác.', '2021-05-24 06:03:33', '2021-05-24 07:57:15'),
(13, 'Bệnh quai bị', 'Theo thống kê, mỗi năm Việt Nam ghi nhận hàng ngàn trường hợp mắc quai bị, đặc biệt ở trẻ em dưới 15 tuổi. Bệnh thường xảy ra vào mùa đông, lúc thời tiết chuyển lạnh và thường bùng phát thành dịch ở những nơi tập thể như trường học, nhà trẻ, ký túc xá,… Mặc dù được cảnh báo là căn bệnh vô cùng nguy hiểm, chưa có thuốc điều trị đặc hiệu nhưng nhiều người vẫn chủ quan, chưa chú trọng các công tác phòng ngừa từ sớm.\r\n- Dấu hiệu nhận biết: Trẻ không có bất cứ triệu chứng nào ở giai đoạn ủ bệnh. Đến giai đoạn khởi phát, trẻ có thể sốt cao 38 – 39 độ C, mệt mỏi, chán ăn, đau họng, tuyến mang thai to và đau nhức.', '- Phương pháp điều trị: Hiện chưa có thuốc điều trị đặc hiệu, các phương pháp điều trị chủ yếu nhằm giảm triệu chứng, chống việc nhiễm trùng gây biến chứng. Tuyệt đối không sử dụng các bài thuốc dân gian điều trị cho trẻ vì có thể gây nhiễm trùng, dẫn đến các biến chứng nguy hiểm, có nguy cơ tử vong. Hãy đưa trẻ đến ngay cơ sở y tế để được bác sĩ thăm khám và tư vấn hướng điều trị tốt nhất.\r\n- Cách phòng ngừa: Tiêm vắc xin là biện pháp phòng bệnh hữu hiệu nhất. Tổ chức Y tế Thế giới (WHO) cho biết khoảng 97% người tiêm vắc xin đã phòng được căn bệnh này. Do đó, chủ động cho trẻ tiêm phòng vắc xin ngừa quai bị là cách để bảo vệ trẻ khỏi nguy cơ mắc bệnh và các biến chứng nguy hiểm của bệnh như viêm tinh hoàn, viêm buồng trứng, viêm tụy cấp tính, viêm cơ tim, viêm não, viêm màng não…', '2021-05-24 06:04:34', '2021-05-24 07:56:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `historymedicines`
--

CREATE TABLE `historymedicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_medicines` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `historymedicines`
--

INSERT INTO `historymedicines` (`id`, `id_user`, `id_medicines`, `created_at`, `updated_at`) VALUES
(1, 11, 1, NULL, NULL),
(2, 11, 2, NULL, NULL),
(3, 11, 3, NULL, NULL),
(4, 11, 4, '2021-06-09 09:14:33', '2021-06-09 09:14:33'),
(7, 7, 11, '2021-06-09 19:35:31', '2021-06-09 19:35:31'),
(10, 7, 4, '2021-06-09 19:45:24', '2021-06-09 19:45:24'),
(11, 7, 1, '2021-06-09 19:46:19', '2021-06-09 19:46:19'),
(12, 7, 2, '2021-06-09 19:47:33', '2021-06-09 19:47:33'),
(13, 7, 8, '2021-06-09 19:52:26', '2021-06-09 19:52:26'),
(14, 11, 5, '2021-06-09 21:15:04', '2021-06-09 21:15:04'),
(15, 7, 6, '2021-06-09 21:16:11', '2021-06-09 21:16:11'),
(16, 7, 13, '2021-06-09 21:16:14', '2021-06-09 21:16:14'),
(17, 7, 5, '2021-06-09 22:25:19', '2021-06-09 22:25:19'),
(18, 25, 6, '2021-06-10 01:09:48', '2021-06-10 01:09:48'),
(19, 25, 11, '2021-06-10 01:10:02', '2021-06-10 01:10:02'),
(20, 10, 11, '2021-06-10 01:14:35', '2021-06-10 01:14:35'),
(21, 10, 8, '2021-06-10 01:14:39', '2021-06-10 01:14:39'),
(22, 10, 10, '2021-06-10 01:16:18', '2021-06-10 01:16:18'),
(23, 10, 7, '2021-06-10 01:16:32', '2021-06-10 01:16:32'),
(24, 35, 8, '2021-06-11 20:51:31', '2021-06-11 20:51:31'),
(25, 36, 10, '2021-06-12 02:04:15', '2021-06-12 02:04:15'),
(26, 36, 3, '2021-06-12 02:04:30', '2021-06-12 02:04:30'),
(27, 10, 2, '2021-06-12 04:39:48', '2021-06-12 04:39:48'),
(28, 38, 1, '2021-06-12 23:05:57', '2021-06-12 23:05:57'),
(29, 38, 5, '2021-06-12 23:06:02', '2021-06-12 23:06:02'),
(30, 38, 10, '2021-06-12 23:09:37', '2021-06-12 23:09:37'),
(31, 36, 1, '2021-06-12 23:11:03', '2021-06-12 23:11:03'),
(32, 38, 12, '2021-06-12 23:13:13', '2021-06-12 23:13:13'),
(33, 9, 5, '2021-06-15 05:00:11', '2021-06-15 05:00:11'),
(34, 9, 13, '2021-06-15 05:00:54', '2021-06-15 05:00:54'),
(35, 9, 3, '2021-06-15 05:00:59', '2021-06-15 05:00:59'),
(36, 9, 8, '2021-06-16 17:24:26', '2021-06-16 17:24:26'),
(37, 9, 11, '2021-06-16 17:24:45', '2021-06-16 17:24:45'),
(38, 45, 1, '2021-06-16 19:22:29', '2021-06-16 19:22:29'),
(39, 45, 4, '2021-06-16 19:22:35', '2021-06-16 19:22:35'),
(40, 45, 6, '2021-06-16 19:22:39', '2021-06-16 19:22:39'),
(41, 45, 11, '2021-06-16 19:31:38', '2021-06-16 19:31:38'),
(42, 45, 5, '2021-06-16 19:40:24', '2021-06-16 19:40:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `historyscans`
--

CREATE TABLE `historyscans` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `historyscans`
--

INSERT INTO `historyscans` (`id`, `id_user`, `url`, `created_at`, `updated_at`) VALUES
(1, 7, 'https://www.pharmacity.vn/san-pham/thuoc-dieu-tri-viem-mui-di-ung-va-me-day-vo-can-man-tinh-telfast-hd-180mg-1-vi-x-10-vien-hop/', NULL, NULL),
(3, 7, 'https://www.pharmacity.vn/san-pham/thuoc-dieu-tri-con-chong-mat-tanganil-500mg/', '2021-06-10 00:10:33', '2021-06-10 00:10:33'),
(4, 7, 'https://me-qr.com/658327', '2021-06-10 00:14:28', '2021-06-10 00:14:28'),
(5, 36, 'http://mirascan.vn:31000/v/s?id=Npu2wgjDG3RY8Zknb0Qx', '2021-06-12 02:03:13', '2021-06-12 02:03:13'),
(6, 9, 'https://www.google.com.vn/', '2021-06-16 18:17:13', '2021-06-16 18:17:13'),
(7, 45, 'http://mirascan.vn:31000/v/s?id=Npu2wgjDG3RY8Zknb0Qx', '2021-06-16 19:34:06', '2021-06-16 19:34:06'),
(8, 9, 'http://mirascan.vn:31000/v/s?id=Npu2wgjDG3RY8Zknb0Qx', '2021-06-17 17:37:23', '2021-06-17 17:37:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicines`
--

CREATE TABLE `medicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giaTien` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chiDinh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lieuDung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baoQuan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thanhPhan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGoi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xuatXu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhaSanXuat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chucNang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `medicines`
--

INSERT INTO `medicines` (`id`, `ten`, `url`, `created_at`, `updated_at`, `loai`, `giaTien`, `chiDinh`, `lieuDung`, `baoQuan`, `thanhPhan`, `dongGoi`, `xuatXu`, `nhaSanXuat`, `chucNang`, `barcode`) VALUES
(1, 'Efferalgan (500mg)', 'https://image.pharmacity.vn/live/uploads/2019/04/P00126_1_l-300x300.jpg', '2021-05-22 06:33:29', '2021-05-24 08:03:20', 'Giảm đau hạ sốt', '41.600', 'Điều trị các chứng đau hoặc sốt như đau đầu, các tình trạng như cúm, đau răng, nhức mỏi cơ, đau bụng kinh.', 'Dạng thuốc này chỉ sử dụng cho người lớn và trẻ em có cân nặng trên 17kg.\r\nKhông vượt quá 3000mg Paracetamol một ngày (khoảng 6 viên một ngày). Có thể tăng đến 4000mg một ngày (khoảng 8 viên một ngày).', 'Nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', '-Paracetamol 500mg, tá dược vừa đủ 1 viên', 'Paracetamol 500mg, tá dược vừa đủ.', '-Pháp', '-Bristol Myers Squibb', 'Thuốc dùng điều trị các chứng đau hoặc sốt như đau đầu, tình trạng như cúm, đau răng, nhức mỏi cơ, đau bụng kinh. Dạng viên nén sủi bọt sễ bẻ, dễ uống, tiện lợi cho người sử dụng.', '123456789'),
(2, 'Eugica', 'https://image.pharmacity.vn/live/uploads/2019/04/P00252_1_l-300x300.jpg', '2021-05-23 23:19:13', '2021-05-24 08:15:22', 'Thuốc cảm lạnh ho', '63.000', 'Điều trị các chứng ho, đau họng, sổ mũi, cảm cúm. Làm loãng niêm dịch, làm dịu ho.', 'Trẻ em trên 30 tháng tuổi: Uống 1 viên x 3 lần/ngày.\r\nNgười lớn: Uống 2 viên x 3 lần/ngày.\r\nHoặc theo chỉ dẫn của Thầy thuốc.', 'Bảo quản ở nhiệt độ không quá 30 độ C.', 'Eucalyptol 100mg, Menthol 0.5mg, Tinh dầu tần 0.18mg, Tinh dầu gừng 0.5mg. Tá dược vừa đủ 1 viên nang mềm.', 'Hộp 10 vỉ x 10 viên', '-Thái Lan', 'Việt Nam', 'Eugica dùng làm điều trị các chứng ho, đau họng, sổ mũi, cảm cúm. Làm loãng niêm dịch, làm dịu ho.', '2147483647'),
(3, 'Thuốc điều trị đau lưng, đau cột sống, đau thần kinh tọa Xương khớp Nhất Nhất', 'https://image.pharmacity.vn/live/uploads/2019/04/P02937_1_l-300x300.jpg', '2021-05-23 23:20:52', '2021-05-24 08:18:22', 'Thuốc cơ xương khớp', '95.000', 'Điều trị các chứng đau lưng, thoái hóa, vôi hóa, gai đôi cột sống, đau thần kinh tọa, các chứng phong tê thấp: Thoái hóa khớp, viêm khớp dạng thấp, nhức mỏi, cứng cơ xương khớp, tay chân tê bại.', '– Người lớn ngày uống 2 lần, mỗi lần uống 2 viên.\r\n– Trẻ em từ 8 – 15 tuổi: Ngày uống 2 lần, mỗi lần uống 1 viên.', 'Bảo quản ở nhiệt độ không quá 30 độ C.', 'Hộp 2 vỉ x 10 viên', 'Hộp 1 vỉ x 10 viên', 'Việt Nam', 'Việt Nam', 'Xương khớp Nhất Nhất điều trị các chứng đau lưng, thoái hóa, vôi hóa, gai đôi cột sống, đau thần kinh tọa, các chứng phong tê thấp: Thoái hóa khớp, viêm khớp dạng thấp, nhức mỏi, cứng cơ xương khớp, tay chân tê bại.', '2147483647'),
(4, 'Povidon Iod 10% (8ml)', 'https://image.pharmacity.vn/live/uploads/2019/04/P00226_2_l-300x300.jpg', '2021-05-23 23:23:18', '2021-05-23 23:23:18', 'Dung dịch sát khuẩn', '6000', 'Giúp sát trùng da trước khi phẫu thuật.         Khử trùng dụng cụ trước khi tiệt trùng.', '-Dùng nguyên chất bôi lên da, hoặc pha loãng với nước, hay dung dịch sinh lý (Nacl 0,9%) để tưới rửa vết thương.', '-Ở nhiệt độ không quá 30 độ C. Chỉ dùng 2 tháng sau khi mở nắp.', '-Povidone Iodine 0.8g, tá dược vừa đủ 8ml.', 'Chai 8ml', '-Việt Nam', '-Pharmedic', '-Dung dịch sát khuẩn Povidine Povidon Iod 10% giúp sát trùng da trước khi phẫu thuật và khử trùng dụng cụ trước khi tiệt trùng.', '2147483647'),
(5, 'Zyrtec', 'https://cf.shopee.vn/file/6388fee655a91e1f0f29a246f66f1f41', '2021-05-23 23:25:11', '2021-05-29 19:47:42', 'Thực phẩm bảo vệ sức khỏe', '33000', 'Hỗ trợ bổ thận, tăng cường chức năng thận.\r\nHỗ trợ giảm tiểu đêm, tiểu nhiều lần, tiểu dắt, tiểu không tự chủ do chức năng thận kém.', 'Dùng đường uống : ngày 4 viên chia làm 2 lần, dùng sau ăn.\r\n\r\nNên dùng liên tục 3 tháng để có hiệu quả tốt nhất.\r\n\r\nKhông dùng cho trẻ em dưới 12 tuổi và phụ nữ có thai\r\n\r\nSản phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh. Không dùng cho người mẫn cảm với bất kỳ thành phần nào của sản phẩm', 'Bảo quản ở nhiệt độ không quá 30 độ C.', 'Cao đông trùng hạ thảo	200mg\r\nCao thỏ ty tử	50mg\r\nCao ích trí nhân	50mg\r\nCao xà sàng tử	50mg\r\nL-Arginine HCl	50mg\r\nChiết xuất bạch quả	20mg\r\nBột nhung hươu	15mg\r\nKẽm gluconat	14mg\r\nCao khô hỗn hợp	25mg\r\nPhụ liệu vừa đủ 1 viên.', 'Tuýp 5g', '-Nhật Bản', '-Janssen', 'Viên tiểu đêm Diamond Libido có tác dụng hỗ trợ bổ thận, tăng cường chức năng thận; hỗ trợ giảm tiểu đêm, tiểu nhiều lần, tiểu dắt, tiểu không tự chủ do chức năng thận kém.', '8938518864222'),
(6, 'Natri Borat Denicol (15ml)', 'https://image.pharmacity.vn/live/uploads/2019/04/P11085_1_l-300x300.jpg', '2021-05-23 23:26:52', '2021-05-23 23:26:52', 'Thuốc da liễu', '32000', '-Dùng để trị đẹn (lưỡi trắng, tưa lưỡi), lở miệng, sưng lợi (sưng nướu).', '-Thoa lưỡi và miệng ngày 3 lần.Rơ miệng cho trẻ sơ sinh.', 'Bảo quản ở nhiệt độ không quá 30 độ C.', '-Natri borat 3.87g, Vanillin 0.021g, Glycerin vừa đủ 15ml.', 'Hộp 1 chai 15ml.', '-Việt Nam', '-Sagopha', '-Dùng để trị đẹn (lưỡi trắng, tưa lưỡi), lở miệng, sưng lợi (sưng nướu).', '2147483647'),
(7, 'Dầu gội trị gàu và ngứa Selsun 1.8%', 'https://image.pharmacity.vn/live/uploads/2019/04/P04776_1_l-300x300.jpg', '2021-05-23 23:28:39', '2021-05-24 08:21:40', 'Thuốc da liễu', '89.000', 'Điều trị gàu, ngứa da đầu và viêm da bã tiết do bị nhiễm nấm Malassezia.', 'Lắc kĩ trước khi dùng. Thoa khoãng 5-10ml dầu gội vào da đầu ướt, để 2-3 phút cho thuốc tiếp xúc với da đầu, sau đó xả sạch lại với nước.', 'Nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', '-Hoạt chất: Mỗi viên nén Aerius màu xanh nhạt chứa 5mg Desloratadine.Tá dược: Dibasic Calcium Phosphate Dihydrate, tinh bột ngô, bột Talc…', '100ml', '-Nhật Bản', '- Indonesia', 'Dầu gội trị gàu và ngứa Selsun 1.8% là giải pháp nhanh chóng và hoàn toàn hiệu quả giải quyết tình trạng gàu bạn đang gặp phải. Sản phẩm sẽ khiến bạn bất ngờ và tin tưởng ngay lập tức chỉ sau lần đầu tiên sử dụng.', '2147483647'),
(8, 'Genshu', 'https://image.pharmacity.vn/live/uploads/2019/06/P14100_2_l-300x300.jpg', '2021-05-24 00:36:50', '2021-05-24 08:23:36', 'Thuốc dành cho nam', '550.000', 'Sinh dục suy nhược (Rối loạn cương) Giảm ham muốn tình dục, xuất tinh sớm .Chứng thận dương suy như đau lưng, mỏi gối, lạnh tay chân, tiểu đêm. Suy giảmchức năng sinh dục, yếu sinh lý, di mộng tinh. Suy nhược cơ thể, kiệt sức, mệt mỏi.', 'Trường hợp điều trị: Uống mỗi lần 2 viên, ngày uống 2 lần. Uống liên tục trong 4-8 tuần để đạt hiệu quả cao nhất. Trường hợp sử dụng để ngăn ngừa hội chứng mãn dục nam:\r\nUống mỗi lần 1 viên, ngày uống 2 lần. Trường hợp sử dụng để tăng cường sức khỏe, tăng khả năng miễn dịch: Uống mỗi lần 1 viên, ngày uống 1 lần.', 'Nơi khô thoáng, tránh ánh sáng, nhiệt độ không quá 30 độ C.', 'Mỗi viên nang cứng chứa: 331mg cao hỗn hợp dược liệu quy về khôtương đương với: \r\n+Bạch tật lê 1000mg.\r\n+Dâm dương hoặc 750mg.\r\n+Hải mã 330mg.\r\n+Lộc nhung 330mg, Hải hà 330mg, Nhân sâm 297mg.\r\n+Tinh hoàn cá sấu 250mg.\r\n+Quê nhục 50mg 83mg bột dược liệu, tuong đương với.\r\n+Quê nhục 50mg.\r\n+Nhân sâm 33mg.\r\n+ Tá dược vừa đủ 1 viên.', '3 vỉ x 10 viên/hộp', 'Việt Nam', 'Sagopha', '-Thuốc Genshu với thành phần chứa các loại thảo dược quý hiếm có tác dụng bổ thận, tráng dương, sinh tinh ở nam giới, gia tăng lượng testosterone trong máu, bồi bổ nguyên khí và nâng cao sức khỏe toàn diện cho cánh mày râu.', '2147483647'),
(9, 'Dung dịch vệ sinh phụ nữ Phytogyno', 'https://image.pharmacity.vn/live/uploads/2019/04/P00198_1_l-300x300.jpg', '2021-05-24 00:51:58', '2021-05-24 00:51:58', 'Dành cho phụ nữ', '23900', '-Phytogyno dùng để phòng và điều trị các bệnh viêm nhiễm đường sinh dục, thích hợp cho:Vệ sinh vùng kín hàng ngày, đặc biệt tốt cho phụ nữ trong những ngày hành kinh và thời kỳ thai sản.\r\n-Điều trị ngứa do vi nấm, nhiễm nấm Candida, huyết trắng.\r\n-Bệnh nhân bị viêm, ngứa vùng sinh dục: ngứa âm hộ, viêm âm đạo, viêm ngoài tử cung, khí hư, huyết trắng.\r\n-Vệ sinh vùng sinh dục cho nam, nữ trước và sau khi quan hệ tình dục.\r\n-Nam giới bị viêm ngứa vùng sinh dục.', 'Thấm ướt vùng kín hoặc vùng da bị viêm nhiễm. Đổ khoảng 1 – 2ml dung dịch Phytogyno vào lòng bàn tay, nhẹ nhàng xoa đều vùng kín khoảng 1 phút, sau đó rửa lại bằng nước sạch.\r\nCó thể dùng 3-4 lần trong ngày.', 'Nơi khô mát, nhiệt độ không quá 30 độ C, tránh ánh nắng trực tiếp.', 'Alpha-Terpineol thiên nhiên 0.3g. Tá dược và hương liệu vừa đủ 100ml.', 'Hộp 1 chai 100ml', 'Việt Nam', 'Opodis Pharma', 'Dung dịch vệ sinh phụ nữ Phytogyno với hoạt chất Alpha-Terpineol được chiết xuất từ tinh dầu tràm thiên nhiên có tác dụng kháng khuẩn, kháng nấm Candida, khử mùi hôi giúp vùng kín luôn sạch sẽ.', '2147483647'),
(10, 'Odistad 120mg', 'https://image.pharmacity.vn/live/uploads/2020/04/P14147_1-300x300.jpg', '2021-05-24 08:26:53', '2021-05-24 08:27:30', 'Thuốc giảm cân', '382.000', 'Kết hợp cùng với chế độ ăn giảm nhẹ calo trong điều trị béo phì và ngừa tăng cân trở lại ở bệnh nhân có chỉ số khối cơ thể (BMI) ≥ 30 kg/m2 hoặc bệnh nhân thừa cân (BMI ≥ 28 kg/m²) kèm theo các yếu tố nguy cơ (như tăng huyết áp, tiểu đường, tăng lipid huyết)', 'Điều trị béo phì và ngừa tăng cân trở lại ở người lớn và thanh thiếu niên từ 12 tuổi trở lên: 120 mg x 3 lần/ngày trong mỗi bữa ăn chính có chất béo\r\nNgười thừa cân từ 18 tuổi trở lên: 60 mg x 3 lần/ngày trong mỗi bữa ăn có chất béo', 'Trong bao bì kín, nơi khô. Nhiệt độ không quá 30oC', 'Mỗi viên nang chứa orlistat (dưới dạng vi hạt orlistat) 120mg', 'Hộp 2 vỉ x 21 viên', 'Đức', 'Stada', 'Odistad 120mg kết hợp cùng với chế độ ăn giảm nhẹ calo trong điều trị béo phì và ngừa tăng cân trở lại ở bệnh nhân có chỉ số khối cơ thể (BMI) ≥ 30 kg/m2 hoặc bệnh nhân thừa cân (BMI ≥ 28 kg/m²) kèm theo các yếu tố nguy cơ (như tăng huyết áp, tiểu đường, tăng lipid huyết).', '2147483647'),
(11, 'Medoral (Chai 250ml)', 'https://image.pharmacity.vn/live/uploads/2019/05/P13194_1_l-300x300.jpg', '2021-05-24 08:31:12', '2021-05-24 08:31:12', 'Thuốc kháng viêm', '85.000', 'Hỗ trợ điều trị và ngăn ngừa viêm, nhiễm khuẩn ở họng/miệng như: Viêm họng, viêm amidan, viêm lợi, viêm miệng…\r\nSát khuẩn, ức chế sự hình thành mảng bám trên răng, vệ sinh răng miệng.\r\nĐẩy mạnh làm lành vết thương sau phẫu thuật hoặc điều trị nha khoa.\r\nKiểm soát loét miệng tái phát.\r\nKiểm soát răng giả gây viêm miệng và nhiễm nấm Candida miệng.', 'Súc họng/miệng trong khoảng 1 phút với 10ml, mỗi ngày 2 lần.\r\nTrong phẫu thuật răng: Súc miệng trong 1 phút trước khi điều trị.\r\nĐiều trị viêm lợi: Dùng trong 1 tháng.\r\nViêm miệng: Rửa sạch và ngâm hàm răng giả trong Medoral trong 15 phút, 2 lần mỗi ngày.', 'Bảo quản nơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp.', 'Chlorhexidin digluconat, Matito, Xylitol, Tinh dầu cam, Methol, Ethanol, Nước tinh khiết', 'Hộp 1 chai x 250ml', 'Việt Nam', 'Merap Group', 'Nước súc miệng họng Medoral hỗ trợ điều trị và ngăn ngừa viêm, nhiễm khuẩn ở họng/miệng như: Viêm họng, viêm amidan, viêm lợi, viêm miệng… đồng thời sát khuẩn, ức chế sự hình thành mảng bám trên răng, kiểm soát loét miệng, viêm miệng và nhiễm nấm Candida miệng.', '2147483647'),
(12, 'Postinor 1 1.5mg', 'https://image.pharmacity.vn/live/uploads/2019/05/P02182_1-300x300.jpg', '2021-05-24 08:34:14', '2021-05-24 08:34:14', 'Thuốc ngừa thai', '33.000', 'Ngừa thai khẩn cấp, được dùng trong vòng 72 giờ sau khi giao hợp mà không dùng biện pháp tránh thai, hoặc biện pháp tránh thai đã và đang dùng không đạt hiệu quả.', 'Uống ngay một viên thuốc, càng sớm càng tốt (tốt nhất trong 12 giờ đầu), không để muộn hơn 72 giờ (3 ngày) sau khi xảy ra cuộc giao hợp mà không dùng biện pháp tránh thai. Uống nguyên viên thuốc và có thể uống với nước. Không nên trì hoãn việc uống thuốc.\r\nNếu đang sử dụng một biện pháp ngừa thai thường xuyên khác (như viên thuốc tránh thai hàng ngày), thì vẫn tiếp tục dùng biện pháp này như thường lệ.', 'Bảo quản ở nhiệt độ không quá 30 độ C.', 'Levonorgestrel 1.5mg, tá dược vừa đủ 1 viên.', 'Hộp 1 viên', 'Hungary', 'Gedeon Richter', 'Postinor 1 là thuốc ngừa thai khẩn cấp, được dùng trong vòng 72 giờ sau khi giao hợp mà không dùng biện pháp tránh thai, hoặc biện pháp tránh thai đã và đang dùng không đạt hiệu quả.', '2147483647'),
(13, 'Hoạt Huyết Dưỡng Não (5 vỉ x 20 viên bao phim', 'https://image.pharmacity.vn/live/uploads/2019/04/P00316_1_l-300x300.jpg', '2021-05-24 08:40:39', '2021-05-27 19:59:17', 'Thuốc thần kinh', '90.000', 'Suy giảm trí nhớ, căng thẳng thần kinh, kém tập trung.\r\nThiểu năng tuần hoàn não, hội chứng tiền đình với các biểu hiện: Đau đầu, hoa mắt, chóng mặt, mất ngủ, mất thăng bằng.\r\nGiảm chức năng não bộ: Giảm trí nhớ, suy nhược thần kinh, di chứng  não.\r\nChứng run giật của bệnh nhân Parkinson.', 'Người lớn: Uống 2 – 3 viên/lần, mỗi ngày 2 – 3 lần.\r\nTrẻ em: Uống 1 viên/lần, mỗi ngày 2 – 3 lần.', NULL, 'Cao đinh lăng :150mg, cao bạch quả :5mg, tá dược vừa đủ.', 'Hộp 5 vỉ x 20 viên', 'Việt Nam', 'Traphaco', 'Thuốc bổ thần kinh phòng và điều trị các bệnh giảm trí nhớ Hoạt Huyết Dưỡng Não làm tăng chức năng hệ thần kinh trung ương, tăng hoạt hóa vỏ não, tăng lưu lượng tuần hoàn não, tăng trí nhớ và độ minh mẫn. Đồng thời làm giảm đau đầu, hoa mắt, chóng mặt, mệt mỏi, rối loạn tiền đình.', '123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-05-22 06:14:29', '2021-05-22 06:14:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Trang chủ', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2021-05-22 06:14:29', '2021-05-24 18:25:43', 'voyager.dashboard', 'null'),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', NULL, 9, '2021-05-22 06:14:29', '2021-05-24 18:55:51', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', NULL, 8, '2021-05-22 06:14:29', '2021-05-24 18:55:51', 'voyager.roles.index', 'null'),
(5, 1, 'Cài đặt', '', '_self', 'voyager-tools', '#fdfcfc', NULL, 10, '2021-05-22 06:14:29', '2021-05-24 18:56:09', NULL, ''),
(6, 1, 'Đường dẫn', '', '_self', 'voyager-list', '#000000', 5, 1, '2021-05-22 06:14:29', '2021-05-23 22:58:03', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-05-22 06:14:29', '2021-05-22 06:32:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-05-22 06:14:29', '2021-05-22 06:32:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-05-22 06:14:29', '2021-05-22 06:32:11', 'voyager.bread.index', NULL),
(10, 1, 'Thiết lập', '', '_self', 'voyager-settings', '#000000', 5, 6, '2021-05-22 06:14:29', '2021-05-24 18:55:53', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-05-22 06:14:29', '2021-05-22 06:32:11', 'voyager.hooks', NULL),
(15, 1, 'Thuốc', '/admin/medicines', '_self', 'voyager-leaf', '#000000', NULL, 4, '2021-05-22 06:30:57', '2021-05-24 18:25:32', NULL, ''),
(18, 1, 'Bệnh theo mùa', '/admin/diseaseweathers', '_self', 'voyager-skull', '#000000', NULL, 5, '2021-05-24 03:37:25', '2021-05-24 18:25:32', NULL, ''),
(21, 1, 'Vùng cơ thể', '', '_self', 'voyager-backpack', '#000000', NULL, 6, '2021-05-24 04:05:28', '2021-05-24 18:25:32', 'voyager.bodies.index', 'null'),
(22, 1, 'Bệnh theo vùng cơ thể', '', '_self', 'voyager-group', '#000000', NULL, 7, '2021-05-24 04:11:59', '2021-05-24 18:55:51', 'voyager.bodiesdetails.index', 'null'),
(23, 1, 'Bài viết', '', '_self', 'voyager-new', '#000000', NULL, 3, '2021-05-24 06:51:36', '2021-05-24 18:25:32', 'voyager.categorienews.index', 'null'),
(24, 1, 'Slide', '', '_self', 'voyager-play', '#000000', NULL, 2, '2021-05-24 18:25:06', '2021-05-24 18:26:45', 'voyager.sliehomes.index', 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.\r\nHang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-05-22 06:15:39', '2021-05-22 06:58:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(2, 'browse_bread', NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(3, 'browse_database', NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(4, 'browse_media', NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(5, 'browse_compass', NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(6, 'browse_menus', 'menus', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(7, 'read_menus', 'menus', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(8, 'edit_menus', 'menus', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(9, 'add_menus', 'menus', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(10, 'delete_menus', 'menus', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(11, 'browse_roles', 'roles', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(12, 'read_roles', 'roles', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(13, 'edit_roles', 'roles', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(14, 'add_roles', 'roles', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(15, 'delete_roles', 'roles', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(16, 'browse_users', 'users', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(17, 'read_users', 'users', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(18, 'edit_users', 'users', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(19, 'add_users', 'users', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(20, 'delete_users', 'users', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(21, 'browse_settings', 'settings', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(22, 'read_settings', 'settings', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(23, 'edit_settings', 'settings', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(24, 'add_settings', 'settings', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(25, 'delete_settings', 'settings', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(26, 'browse_hooks', NULL, '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(37, 'browse_pages', 'pages', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(38, 'read_pages', 'pages', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(39, 'edit_pages', 'pages', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(40, 'add_pages', 'pages', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(41, 'delete_pages', 'pages', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(42, 'browse_medicines', 'medicines', '2021-05-22 06:30:57', '2021-05-22 06:30:57'),
(43, 'read_medicines', 'medicines', '2021-05-22 06:30:57', '2021-05-22 06:30:57'),
(44, 'edit_medicines', 'medicines', '2021-05-22 06:30:57', '2021-05-22 06:30:57'),
(45, 'add_medicines', 'medicines', '2021-05-22 06:30:57', '2021-05-22 06:30:57'),
(46, 'delete_medicines', 'medicines', '2021-05-22 06:30:57', '2021-05-22 06:30:57'),
(47, 'browse_benhtheomua', 'benhtheomua', '2021-05-24 03:15:00', '2021-05-24 03:15:00'),
(48, 'read_benhtheomua', 'benhtheomua', '2021-05-24 03:15:00', '2021-05-24 03:15:00'),
(49, 'edit_benhtheomua', 'benhtheomua', '2021-05-24 03:15:00', '2021-05-24 03:15:00'),
(50, 'add_benhtheomua', 'benhtheomua', '2021-05-24 03:15:00', '2021-05-24 03:15:00'),
(51, 'delete_benhtheomua', 'benhtheomua', '2021-05-24 03:15:00', '2021-05-24 03:15:00'),
(52, 'browse_benhtheomuas', 'benhtheomuas', '2021-05-24 03:21:00', '2021-05-24 03:21:00'),
(53, 'read_benhtheomuas', 'benhtheomuas', '2021-05-24 03:21:00', '2021-05-24 03:21:00'),
(54, 'edit_benhtheomuas', 'benhtheomuas', '2021-05-24 03:21:00', '2021-05-24 03:21:00'),
(55, 'add_benhtheomuas', 'benhtheomuas', '2021-05-24 03:21:00', '2021-05-24 03:21:00'),
(56, 'delete_benhtheomuas', 'benhtheomuas', '2021-05-24 03:21:00', '2021-05-24 03:21:00'),
(57, 'browse_diseaseweathers', 'diseaseweathers', '2021-05-24 03:37:25', '2021-05-24 03:37:25'),
(58, 'read_diseaseweathers', 'diseaseweathers', '2021-05-24 03:37:25', '2021-05-24 03:37:25'),
(59, 'edit_diseaseweathers', 'diseaseweathers', '2021-05-24 03:37:25', '2021-05-24 03:37:25'),
(60, 'add_diseaseweathers', 'diseaseweathers', '2021-05-24 03:37:25', '2021-05-24 03:37:25'),
(61, 'delete_diseaseweathers', 'diseaseweathers', '2021-05-24 03:37:25', '2021-05-24 03:37:25'),
(72, 'browse_bodies', 'bodies', '2021-05-24 04:05:28', '2021-05-24 04:05:28'),
(73, 'read_bodies', 'bodies', '2021-05-24 04:05:28', '2021-05-24 04:05:28'),
(74, 'edit_bodies', 'bodies', '2021-05-24 04:05:28', '2021-05-24 04:05:28'),
(75, 'add_bodies', 'bodies', '2021-05-24 04:05:28', '2021-05-24 04:05:28'),
(76, 'delete_bodies', 'bodies', '2021-05-24 04:05:28', '2021-05-24 04:05:28'),
(77, 'browse_bodiesdetails', 'bodiesdetails', '2021-05-24 04:11:59', '2021-05-24 04:11:59'),
(78, 'read_bodiesdetails', 'bodiesdetails', '2021-05-24 04:11:59', '2021-05-24 04:11:59'),
(79, 'edit_bodiesdetails', 'bodiesdetails', '2021-05-24 04:11:59', '2021-05-24 04:11:59'),
(80, 'add_bodiesdetails', 'bodiesdetails', '2021-05-24 04:11:59', '2021-05-24 04:11:59'),
(81, 'delete_bodiesdetails', 'bodiesdetails', '2021-05-24 04:11:59', '2021-05-24 04:11:59'),
(82, 'browse_categorienews', 'categorienews', '2021-05-24 06:51:36', '2021-05-24 06:51:36'),
(83, 'read_categorienews', 'categorienews', '2021-05-24 06:51:36', '2021-05-24 06:51:36'),
(84, 'edit_categorienews', 'categorienews', '2021-05-24 06:51:36', '2021-05-24 06:51:36'),
(85, 'add_categorienews', 'categorienews', '2021-05-24 06:51:36', '2021-05-24 06:51:36'),
(86, 'delete_categorienews', 'categorienews', '2021-05-24 06:51:36', '2021-05-24 06:51:36'),
(87, 'browse_sliehomes', 'sliehomes', '2021-05-24 18:25:06', '2021-05-24 18:25:06'),
(88, 'read_sliehomes', 'sliehomes', '2021-05-24 18:25:06', '2021-05-24 18:25:06'),
(89, 'edit_sliehomes', 'sliehomes', '2021-05-24 18:25:06', '2021-05-24 18:25:06'),
(90, 'add_sliehomes', 'sliehomes', '2021-05-24 18:25:06', '2021-05-24 18:25:06'),
(91, 'delete_sliehomes', 'sliehomes', '2021-05-24 18:25:06', '2021-05-24 18:25:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-05-22 06:14:29', '2021-05-22 06:14:29'),
(2, 'user', 'Normal User', '2021-05-22 06:14:29', '2021-05-22 06:14:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'pages/anhbia.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Debug FC', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Sức khỏe', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'pages/logosuckhoer.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', 'Home', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliehomes`
--

CREATE TABLE `sliehomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliehomes`
--

INSERT INTO `sliehomes` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'https://trinh.toolgencode.com/public/storage/slides/slide1.jpg', '2021-05-24 18:29:08', '2021-05-27 03:29:50'),
(2, 'https://trinh.toolgencode.com/public/storage/slides/slide2.jpg', '2021-05-24 18:29:19', '2021-05-27 03:30:02'),
(3, 'https://trinh.toolgencode.com/public/storage/slides/slide3.jpg', '2021-05-24 18:29:33', '2021-05-27 03:30:13'),
(4, 'https://trinh.toolgencode.com/public/storage/slides/slide4.jpg', '2021-05-24 18:39:34', '2021-05-27 03:30:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-05-22 06:15:39', '2021-05-22 06:15:39'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-05-22 06:15:39', '2021-05-22 06:15:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `history` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `history`) VALUES
(1, 1, 'Team FixBug', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', 'TK2C6YdKpIcwDPnonplqNi4uJrtq7Z7XflBuwoaIzABz1ZOEAiAHcyxKO06I', '{\"locale\":\"vi\"}', '2021-05-22 06:15:39', '2021-05-24 06:19:49', NULL),
(2, 1, 'Nguyễn Huyền Trí', 'tri@gmail.com', 'users/tri.jpg', NULL, '$2y$10$T7uOaeWw3A2dKVJs1lRCt.wwZy/FrFr/2kh7F25r5m/JgN64vgx.u', NULL, '{\"locale\":\"vi\"}', '2021-05-23 20:47:28', '2021-05-27 06:36:42', NULL),
(6, 2, 'Den Nguyen', 'nguyenvandendn1964@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJyH_JgNppwN6OvvXXcWkyzS5UZb97Pi8w7VTutk=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-06 06:11:59', '2021-06-06 06:11:59', NULL),
(9, 2, 'Quyết Lưu Văn', 'luuvanquyet2612@gmail.com', 'https://lh3.googleusercontent.com/a-/AOh14GiaCUaj0x8KDvPtUdkF9TP8YURFAcYPoEyIzm1SlA=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-06 06:47:16', '2021-06-06 06:47:16', NULL),
(10, 2, 'Hien Nguyễn', 'vanhien991998@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJyszTjIsGsCCSjACGow3Ml8nXQyBTj28OLDXgip=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-06 06:51:50', '2021-06-06 06:51:50', NULL),
(11, 2, 'Nguyễn Huyền Trí', 'nguyenhuyentridn198@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJzV_xBziz2f-BqwmrFgGAwEQ60J30IwECu7eruh=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, '{\"locale\":\"vi\"}', '2021-06-07 06:43:35', '2021-06-08 18:55:08', '1,2'),
(25, 2, 'Quyết Lưu Văn', 'luuvanquyetit@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJx8OrqBESTBeBF3xvbtqGGG0Ee8reoMA_9C2Opq=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-10 00:11:37', '2021-06-10 00:11:37', NULL),
(35, 2, 'Phạm Tuấn', 'phamtuan10031999@gmail.com', 'https://lh3.googleusercontent.com/a/AATXAJzggvZbC4AvGiITOskbdlPZzG4d-wwUMXUX3SqT=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-11 20:51:03', '2021-06-11 20:51:03', NULL),
(36, 2, 'hiếu hoàng', 'h.vanhieu1999@gmail.com', 'https://lh3.googleusercontent.com/a-/AOh14GjOgj3fO91CV7oEy9ODFmSC4dc8oWw6eGNb7pgmBA=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-12 01:51:04', '2021-06-12 01:51:04', NULL),
(38, 2, 'Huyentriet Nguyen', 'nguyenhuyentriet111@gmail.com', 'https://lh3.googleusercontent.com/a-/AOh14Ghx3ysDDguuaZLiyXtLaLE3u7Y7hQ_LiuSDh_y0=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-12 23:05:07', '2021-06-12 23:05:07', NULL),
(45, 2, 'Tri Nguyen Van Huyen', 'tri41029@donga.edu.vn', 'https://lh3.googleusercontent.com/a-/AOh14GiR2E882EH2RtD53sf9Ewc4aQ3Rb0FrsYFtDxPn=s96-c', NULL, '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W', NULL, NULL, '2021-06-16 19:13:33', '2021-06-16 19:13:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(11, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bodies`
--
ALTER TABLE `bodies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bodiesdetails`
--
ALTER TABLE `bodiesdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categorienews`
--
ALTER TABLE `categorienews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `diseaseweathers`
--
ALTER TABLE `diseaseweathers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `historymedicines`
--
ALTER TABLE `historymedicines`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `historyscans`
--
ALTER TABLE `historyscans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sliehomes`
--
ALTER TABLE `sliehomes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bodies`
--
ALTER TABLE `bodies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `bodiesdetails`
--
ALTER TABLE `bodiesdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `categorienews`
--
ALTER TABLE `categorienews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `diseaseweathers`
--
ALTER TABLE `diseaseweathers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `historymedicines`
--
ALTER TABLE `historymedicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `historyscans`
--
ALTER TABLE `historyscans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sliehomes`
--
ALTER TABLE `sliehomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
