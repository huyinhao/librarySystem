/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : bookmanage

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 12/12/2019 22:11:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `Bno` int(10) NOT NULL AUTO_INCREMENT,
  `Bname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bauthor` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bpress` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Btype` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bqty` int(3) NOT NULL,
  PRIMARY KEY (`Bno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 491 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '白夜行', '[日]东野圭吾', '南海出版公司', '推理', 3);
INSERT INTO `book` VALUES (2, '嫌疑人X的献身', '[日]东野圭吾', '南海出版公司', '推理', 3);
INSERT INTO `book` VALUES (3, '解忧杂货店', '[日]东野圭吾', '南海出版公司', '推理', 6);
INSERT INTO `book` VALUES (4, '恶意', '[日]东野圭吾', '南海出版公司', '推理', 1);
INSERT INTO `book` VALUES (5, '达·芬奇密码', '[美]丹·布朗', '上海人民出版社', '推理', 7);
INSERT INTO `book` VALUES (7, '福尔摩斯探案全集(上中下)', '[英]阿·柯南道尔', '上海人民出版社', '推理', 1);
INSERT INTO `book` VALUES (8, '网内人', '陈浩基', '九州出版社', '推理', 9);
INSERT INTO `book` VALUES (9, '默读', 'Priest', '百花洲文艺出版社', '推理', 3);
INSERT INTO `book` VALUES (10, '尸人庄谜案', '[日]今村昌弘', '北京联合出版公司', '推理', 0);
INSERT INTO `book` VALUES (12, '放学后', '（日）东野圭吾', '南海出版公司', '推理', 9);
INSERT INTO `book` VALUES (13, '13 67', '陳浩基', '皇冠', '推理', 0);
INSERT INTO `book` VALUES (15, '长夜难明', '紫金陈', '云南人民出版社', '推理', 5);
INSERT INTO `book` VALUES (16, '新参者', '[日]东野圭吾', '南海出版公司', '推理', 8);
INSERT INTO `book` VALUES (17, '乱神馆记·蝶梦', '水天一色', '天津人民出版社', '推理', 7);
INSERT INTO `book` VALUES (18, '张公案', '大风刮过', '新世界出版社', '推理', 4);
INSERT INTO `book` VALUES (19, '螺丝人', '（日）岛田庄司', '新星出版社', '推理', 3);
INSERT INTO `book` VALUES (20, '午夜凶铃', '铃木光司', '南海出版公司', '推理', 6);
INSERT INTO `book` VALUES (21, '秦谜', '李开元', '中信出版集团', '推理', 10);
INSERT INTO `book` VALUES (22, '替身', '[日]西泽保彦', '新星出版社', '推理', 1);
INSERT INTO `book` VALUES (23, '分身', '[日]东野圭吾', '南海出版公司', '推理', 4);
INSERT INTO `book` VALUES (24, '缉凶', '刘星辰', '天津人民出版社', '推理', 1);
INSERT INTO `book` VALUES (25, '孤岛之鬼', '(日)江户川乱步', '新星出版社', '推理', 0);
INSERT INTO `book` VALUES (26, '献给虚无的供物', '（日）中井英夫', '新星出版社', '推理', 0);
INSERT INTO `book` VALUES (27, '疑点', '[日]松本清张', '北京联合出版公司', '推理', 3);
INSERT INTO `book` VALUES (28, '当且仅当雪是白的', '陆秋槎', '新星出版社', '推理', 7);
INSERT INTO `book` VALUES (29, '名侦探柯南1', '[日]青山刚昌', '长春出版社', '推理', 0);
INSERT INTO `book` VALUES (30, '胆小鬼侦探', '苏盈', '长江文艺出版社', '推理', 3);
INSERT INTO `book` VALUES (31, '代号D机关Ⅰ', '[日]柳广司', '新星出版社', '推理', 9);
INSERT INTO `book` VALUES (32, '网中人', '永城', '作家出版社', '推理', 9);
INSERT INTO `book` VALUES (33, '为了N', '[日]凑佳苗', '南海出版公司', '推理', 8);
INSERT INTO `book` VALUES (34, '罗马帽子之谜', '[美]埃勒里·奎因', '新星出版社', '推理', 1);
INSERT INTO `book` VALUES (35, '古董局中局 大全集', '马伯庸', '北京联合出版公司', '推理', 0);
INSERT INTO `book` VALUES (36, '死亡通知单3：离别曲（上）', '周浩晖', '辽宁教育出版社', '推理', 9);
INSERT INTO `book` VALUES (37, '緊閉的門扉', '石持淺海', '如何', '推理', 1);
INSERT INTO `book` VALUES (38, '哦！爸爸', '[日]伊坂幸太郎', '新星出版社', '推理', 1);
INSERT INTO `book` VALUES (39, '杀手界', '(日)伊坂幸太郎', '南海出版公司', '推理', 6);
INSERT INTO `book` VALUES (40, '秋季限定栗金饨事件 下', '[日]米泽穗信', '新星出版社', '推理', 7);
INSERT INTO `book` VALUES (41, '铜钟案', '[荷]高罗佩', '上海译文出版社', '推理', 7);
INSERT INTO `book` VALUES (42, '死神的精确度', '[日]伊坂幸太郎', '南海出版公司', '推理', 7);
INSERT INTO `book` VALUES (43, '江戶川亂步異人館 01', '山口讓司', '東立出版社', '推理', 0);
INSERT INTO `book` VALUES (44, '寝台特急1/60秒障碍', '岛田庄司', '新星出版社', '推理', 2);
INSERT INTO `book` VALUES (45, '眩晕', '（日）岛田庄司', '新星出版社', '推理', 10);
INSERT INTO `book` VALUES (46, '黑死馆杀人事件', '[日]小栗虫太郎', '新星出版社', '推理', 6);
INSERT INTO `book` VALUES (47, '黑蜥蜴', '(日)江户川乱步', '新星出版社', '推理', 1);
INSERT INTO `book` VALUES (48, '屍人荘の殺人', '今村昌弘', '東京創元社', '推理', 4);
INSERT INTO `book` VALUES (49, '天才在左 疯子在右', '高铭', '武汉大学出版社', '心理学', 3);
INSERT INTO `book` VALUES (50, '乌合之众', '（法）勒庞', '中央编译出版社', '心理学', 7);
INSERT INTO `book` VALUES (51, '被讨厌的勇气', '岸见一郎、古贺史健', '机械工业出版社', '心理学', 6);
INSERT INTO `book` VALUES (52, '社会心理学', '[美]戴维·迈尔斯', '人民邮电出版社', '心理学', 6);
INSERT INTO `book` VALUES (53, '非暴力沟通', '[美]马歇尔·卢森堡', '华夏出版社', '心理学', 8);
INSERT INTO `book` VALUES (54, '人性的弱点全集', '[美]戴尔·卡耐基', '中国发展出版社', '心理学', 8);
INSERT INTO `book` VALUES (55, '无声告白', '[美]伍绮诗', '江苏凤凰文艺出版社', '心理学', 3);
INSERT INTO `book` VALUES (56, '活出生命的意义', '[奥]维克多·弗兰克', '华夏出版社', '心理学', 4);
INSERT INTO `book` VALUES (57, '爱的艺术', '[美]艾·弗洛姆', '上海译文出版社', '心理学', 8);
INSERT INTO `book` VALUES (58, '李银河说爱情', '李银河', '北京十月文艺出版社', '心理学', 2);
INSERT INTO `book` VALUES (59, '身体知道答案', '武志红', '鹭江出版社', '心理学', 7);
INSERT INTO `book` VALUES (60, '身份的焦虑', '[英]阿兰·德波顿', '上海译文出版社', '心理学', 0);
INSERT INTO `book` VALUES (61, '神经衰弱和强迫观念的根治法', '[日]森田正马', '人民卫生出版社', '心理学', 4);
INSERT INTO `book` VALUES (62, '爱得太多的女人', '[美]罗宾·诺伍德', '北京联合出版公司', '心理学', 1);
INSERT INTO `book` VALUES (63, '虐恋亚文化', '李银河', '今日中国出版社', '心理学', 0);
INSERT INTO `book` VALUES (64, '不抱怨的世界', '[美]威尔·鲍温', '陕西师范大学出版社', '心理学', 4);
INSERT INTO `book` VALUES (65, '诗人十四个', '黄晓丹', '北京联合出版公司', '心理学', 6);
INSERT INTO `book` VALUES (66, '社群的进化', '[英]罗宾·邓巴', '四川人民出版社', '心理学', 3);
INSERT INTO `book` VALUES (67, '对权威的服从', '米尔格拉姆', '新华出版社', '心理学', 2);
INSERT INTO `book` VALUES (68, '把妹达人', '尼尔•施特劳斯', '中国三峡出版社', '心理学', 3);
INSERT INTO `book` VALUES (69, '拖拉一点也无妨', '[美]约翰•佩里', '浙江大学出版社', '心理学', 2);
INSERT INTO `book` VALUES (70, '情商（2版）', '[美]丹尼尔·戈尔曼', '中信出版社', '心理学', 8);
INSERT INTO `book` VALUES (72, '犯罪心理2', '长洱', '江苏凤凰文艺出版社', '心理学', 8);
INSERT INTO `book` VALUES (73, '别独自用餐', '[美]基思·法拉奇', '世界知识出版社', '心理学', 7);
INSERT INTO `book` VALUES (74, '认知的重建', '吴姵莹', '北京联合出版公司', '心理学', 0);
INSERT INTO `book` VALUES (75, '女子力图鉴：潇洒无畏过一生', '慕容素衣', '江苏凤凰文艺出版社', '心理学', 8);
INSERT INTO `book` VALUES (76, '梦游症', '方洋', '长江出版社', '心理学', 1);
INSERT INTO `book` VALUES (77, '全脑教养法', '丹尼尔·西格尔', '浙江人民出版社', '心理学', 3);
INSERT INTO `book` VALUES (78, '小王子', '[法]圣埃克苏佩里', '人民文学出版社', '哲学', 6);
INSERT INTO `book` VALUES (80, '不能承受的生命之轻', '[捷克]米兰·昆德拉', '上海译文出版社', '哲学', 6);
INSERT INTO `book` VALUES (81, '三体', '刘慈欣', '重庆出版社', '哲学', 10);
INSERT INTO `book` VALUES (82, '苏菲的世界', '（挪威）乔斯坦·贾德', '作家出版社', '哲学', 4);
INSERT INTO `book` VALUES (83, '局外人', '[法]阿尔贝·加缪', '上海译文出版社', '哲学', 0);
INSERT INTO `book` VALUES (84, '牧羊少年奇幻之旅', '[巴西]保罗·柯艾略', '南海出版公司', '哲学', 2);
INSERT INTO `book` VALUES (86, '人生的智慧', '[德]阿图尔·叔本华', '上海人民出版社', '哲学', 1);
INSERT INTO `book` VALUES (87, '哲学家们都干了些什么', '林欣浩', '北京联合出版公司', '哲学', 7);
INSERT INTO `book` VALUES (88, '大问题', '罗伯特·所罗门', '广西师范大学出版社', '哲学', 2);
INSERT INTO `book` VALUES (89, '三体Ⅲ', '刘慈欣', '重庆出版社', '哲学', 2);
INSERT INTO `book` VALUES (90, '悟空传', '今何在', '光明日报出版社', '哲学', 9);
INSERT INTO `book` VALUES (91, '瓦尔登湖', '[美]梭罗', '上海译文出版社', '哲学', 4);
INSERT INTO `book` VALUES (92, '理想国', '[古希腊]柏拉图', '商务印书馆', '哲学', 10);
INSERT INTO `book` VALUES (93, '毛泽东选集', '毛泽东', '人民出版社', '哲学', 7);
INSERT INTO `book` VALUES (94, '沉默的大多数', '王小波', '中国青年出版社', '哲学', 10);
INSERT INTO `book` VALUES (95, '致命的自负', '(英)哈耶克', '中国社会科学出版社', '哲学', 10);
INSERT INTO `book` VALUES (96, '柏拉图对话集', '（古希腊）柏拉图', '商务印书馆', '哲学', 6);
INSERT INTO `book` VALUES (97, '论自由', '[英]约翰·密尔', '商务印书馆', '哲学', 0);
INSERT INTO `book` VALUES (98, '毛泽东选集 第四卷', '毛泽东', '人民出版社', '哲学', 9);
INSERT INTO `book` VALUES (99, '色情', '[法]乔治·巴塔耶', '南京大学出版社', '哲学', 3);
INSERT INTO `book` VALUES (100, '心智、语言和机器', '徐英瑾', '人民出版社', '哲学', 10);
INSERT INTO `book` VALUES (101, '系统的哲学', '金观涛', '鹭江出版社', '哲学', 2);
INSERT INTO `book` VALUES (103, '黑格尔', '[澳]彼得·辛格', '译林出版社', '哲学', 7);
INSERT INTO `book` VALUES (104, '历史的历史', '[英]约翰•布罗', '广西师范大学出版社', '哲学', 1);
INSERT INTO `book` VALUES (105, '逻辑新引·怎样判别是非', '殷海光', '四川人民出版社', '哲学', 3);
INSERT INTO `book` VALUES (106, '法华经', '王彬译注', '中华书局', '哲学', 4);
INSERT INTO `book` VALUES (107, '西方哲学史', '[美]弗兰克·梯利', '光明日报出版社', '哲学', 5);
INSERT INTO `book` VALUES (108, '机械复制时代的艺术', '瓦尔特·本雅明', '重庆出版社', '哲学', 3);
INSERT INTO `book` VALUES (109, '易经的奥秘', '曾仕强', '陕西师范大学出版社', '哲学', 9);
INSERT INTO `book` VALUES (110, '病隙碎笔', '史铁生', '湖南文艺出版社', '哲学', 6);
INSERT INTO `book` VALUES (111, '逻辑学', '[德]黑格尔', '人民出版社', '哲学', 5);
INSERT INTO `book` VALUES (112, '运动-影像', '吉尔·德勒兹', '湖南美术出版社', '哲学', 5);
INSERT INTO `book` VALUES (113, '探求真理的指导原则', '（法）笛卡尔', '商务印书馆', '哲学', 6);
INSERT INTO `book` VALUES (114, '鼠疫', '（法）加缪', '上海译文出版社', '哲学', 1);
INSERT INTO `book` VALUES (115, '自然哲学之数学原理', '(英)牛顿', '北京大学出版社', '哲学', 9);
INSERT INTO `book` VALUES (116, '身边的逻辑学', '伯纳·派顿', '中信出版社', '哲学', 10);
INSERT INTO `book` VALUES (117, '活着', '余华', '作家出版社', '生活', 4);
INSERT INTO `book` VALUES (118, '撒哈拉的故事', '三毛', '皇冠出版社', '生活', 5);
INSERT INTO `book` VALUES (119, '许三观卖血记', '余华', '南海出版公司', '生活', 0);
INSERT INTO `book` VALUES (120, '平凡的世界（全三部）', '路遥', '人民文学出版社', '生活', 5);
INSERT INTO `book` VALUES (122, '断舍离', '山下英子', '广西科学技术出版社', '生活', 4);
INSERT INTO `book` VALUES (123, '回答不了', '匡扶', '浙江文艺出版社', '生活', 0);
INSERT INTO `book` VALUES (124, '云边有个小卖部', '张嘉佳', '湖南文艺出版社', '生活', 8);
INSERT INTO `book` VALUES (125, '原则', '[美]瑞·达利欧', '中信出版社', '生活', 7);
INSERT INTO `book` VALUES (126, '当我谈跑步时我谈些什么', '[日]村上春树', '南海出版公司', '生活', 7);
INSERT INTO `book` VALUES (128, '皮囊', '蔡崇达', '天津人民出版社', '生活', 1);
INSERT INTO `book` VALUES (129, '小家，越住越大', '逯薇', '中信出版集团', '生活', 10);
INSERT INTO `book` VALUES (130, '怦然心动的人生整理魔法', '〔日本〕近藤麻理惠', '译林出版社', '生活', 7);
INSERT INTO `book` VALUES (131, '陪安东尼度过漫长岁月', '安东尼', '长江文艺出版社', '生活', 1);
INSERT INTO `book` VALUES (132, '人生永远没有太晚的开始', '[美]摩西奶奶', '新星出版社', '生活', 10);
INSERT INTO `book` VALUES (133, '走来走去', '刘涛、Lens', '中信出版集团', '生活', 7);
INSERT INTO `book` VALUES (134, '人生有何意义', '胡适', '九州出版社', '生活', 2);
INSERT INTO `book` VALUES (135, '爸爸爱喜禾', '蔡春猪', '新星出版社', '生活', 9);
INSERT INTO `book` VALUES (136, '今天吃什么呢？去地里看看', '(日)水上勉', '南海出版公司', '生活', 9);
INSERT INTO `book` VALUES (137, '好好赚钱', '简七', '中信出版集团', '生活', 0);
INSERT INTO `book` VALUES (138, '积存时间的生活', '津端修一、津端英子', '中国青年出版社', '生活', 9);
INSERT INTO `book` VALUES (139, '不如任性过生活', '蔡澜', '北京时代华文书局', '生活', 9);
INSERT INTO `book` VALUES (140, '一个人的美食之旅', '[日]高木直子', '江西科学技术出版社', '生活', 3);
INSERT INTO `book` VALUES (141, '就喜欢你看不惯我又干不掉我的样子2', '白茶', '长江文艺出版社', '生活', 4);
INSERT INTO `book` VALUES (142, '贫民窟的百万富翁', '维卡斯·斯瓦鲁普', '作家出版社', '生活', 3);
INSERT INTO `book` VALUES (143, '生而为猫挺好的', '猫小姐', '天津人民出版社', '生活', 8);
INSERT INTO `book` VALUES (144, '巴黎伦敦落魄记', '[英]乔治·奥威尔', '凤凰出版社集团', '生活', 9);
INSERT INTO `book` VALUES (145, '传家', '任祥', '新星出版社', '生活', 2);
INSERT INTO `book` VALUES (146, '你的生存本能正在杀死你', '[美]马克·舍恩', '中信出版社', '生活', 0);
INSERT INTO `book` VALUES (147, '另一种设计', '[日]长冈贤明', '新星出版社', '生活', 8);
INSERT INTO `book` VALUES (148, '活山', '[英]娜恩·谢泼德', '文汇出版社', '生活', 6);
INSERT INTO `book` VALUES (149, '寥寥中年事', '秋色连波', '中信出版集团', '生活', 1);
INSERT INTO `book` VALUES (150, '耗子大爷起晚了', '叶广芩', '北京少年儿童出版社', '生活', 6);
INSERT INTO `book` VALUES (151, '大杯咖啡经济学', '【日】吉本佳生', '中信出版社', '生活', 2);
INSERT INTO `book` VALUES (152, '女人这东西', '渡边淳一', '作家出版社', '生活', 7);
INSERT INTO `book` VALUES (153, '时时刻刻', '(美)迈克尔·坎宁安', '人民文学出版社', '生活', 3);
INSERT INTO `book` VALUES (154, '紫阳花日记', '[日]渡边淳一', '文汇出版社', '生活', 6);
INSERT INTO `book` VALUES (155, '致命药瘾', '[美]辛西娅·库恩等', '三联书店', '生活', 8);
INSERT INTO `book` VALUES (156, '我们是穷得开朗，所以不用担心', '[日]岛田洋七', '南海出版公司', '生活', 6);
INSERT INTO `book` VALUES (157, '雅舍谈吃', '梁实秋', '湖南文艺出版社', '生活', 3);
INSERT INTO `book` VALUES (158, '癌症·真相', '菠萝', '清华大学出版社', '生活', 5);
INSERT INTO `book` VALUES (159, '我这有限的一生', '周作人', '周作人', '生活', 2);
INSERT INTO `book` VALUES (160, '德国式家居收纳术', '[日]门仓多仁亚', '山东人民出版社', '生活', 7);
INSERT INTO `book` VALUES (161, '被劫持的私生活', '山西人民出版社', '山西人民出版社', '生活', 2);
INSERT INTO `book` VALUES (162, '你的善良必须有点锋芒', '李甜甜', '青岛出版社', '生活', 7);
INSERT INTO `book` VALUES (163, '喝自己酿的啤酒', '高岩', '中原出版传媒集团', '生活', 10);
INSERT INTO `book` VALUES (164, '三国演义（全二册）', '[明]罗贯中', '人民文学出版社', '古典文学', 1);
INSERT INTO `book` VALUES (165, '西游记（全二册）', '吴承恩', '人民文学出版社', '古典文学', 2);
INSERT INTO `book` VALUES (166, '水浒传（全二册）', '[明]施耐庵、罗贯中', '人民文学出版社', '古典文学', 8);
INSERT INTO `book` VALUES (167, '浮生六记', '[清]沈复', '人民文学出版社', '古典文学', 5);
INSERT INTO `book` VALUES (169, '人间词话', '王国维', '上海古籍出版社', '古典文学', 4);
INSERT INTO `book` VALUES (170, '鬼谷子', '许富宏译注', '中华书局', '古典文学', 2);
INSERT INTO `book` VALUES (171, '红楼梦', '曹雪芹', '人民文学出版社', '古典文学', 0);
INSERT INTO `book` VALUES (172, '山海经', '佚名', '岳麓书社', '古典文学', 3);
INSERT INTO `book` VALUES (173, '源氏物语', '[日]紫式部', '人民文学出版社', '古典文学', 7);
INSERT INTO `book` VALUES (174, '菜根谭', '洪应明', '吉林文史出版社', '古典文学', 3);
INSERT INTO `book` VALUES (176, '水浒传', '施耐庵、罗贯中', '中华书局', '古典文学', 9);
INSERT INTO `book` VALUES (177, '古文观止', '吴楚材、吴调侯', '中华书局', '古典文学', 10);
INSERT INTO `book` VALUES (178, '陶庵梦忆 西湖梦寻', '[明]张岱', '上海古籍出版社', '古典文学', 4);
INSERT INTO `book` VALUES (179, '三国演义', '罗贯中', '岳麓书社', '古典文学', 8);
INSERT INTO `book` VALUES (180, '东京梦华录', '孟元老', '中州古籍出版社', '古典文学', 7);
INSERT INTO `book` VALUES (181, '诗经', '孔丘编订', '北京出版社', '古典文学', 1);
INSERT INTO `book` VALUES (182, '唐诗流变论要', '葛晓音', '商务印书馆有限公司', '古典文学', 1);
INSERT INTO `book` VALUES (183, '诗经选', '余冠英', '人民文学出版社', '古典文学', 2);
INSERT INTO `book` VALUES (184, '诗经析读', '李山', '中华书局', '古典文学', 9);
INSERT INTO `book` VALUES (185, '经史百家杂钞（上下）', '曾国藩', '岳麓书社', '古典文学', 1);
INSERT INTO `book` VALUES (186, '二十年目睹之怪现状（上下）', '吴研人', '人民文学出版社', '古典文学', 6);
INSERT INTO `book` VALUES (187, '诗经演', '木心', '广西师范大学出版社', '古典文学', 2);
INSERT INTO `book` VALUES (188, '乘着歌声的翅膀', '[德]海涅', '译林出版社', '古典文学', 0);
INSERT INTO `book` VALUES (189, '煮酒探西游', '吴闲云', '河北人民出版社', '古典文学', 7);
INSERT INTO `book` VALUES (190, '唐诗语汇意象论', '松浦友久', '中华书局', '古典文学', 0);
INSERT INTO `book` VALUES (191, '世说新语笺疏', '余嘉锡', '上海古籍出版社', '古典文学', 3);
INSERT INTO `book` VALUES (192, '世有桃花', '安意如', '万卷出版公司', '古典文学', 3);
INSERT INTO `book` VALUES (193, '中国文学欣赏举隅', '傅庚生', '北京出版社', '古典文学', 3);
INSERT INTO `book` VALUES (194, '李白传', '李长之', '百花文艺出版社', '古典文学', 1);
INSERT INTO `book` VALUES (195, '俯仰悲歌', '赵鸿飞', '中西书局', '古典文学', 9);
INSERT INTO `book` VALUES (196, '周易译注', '黄寿祺、张善文', '上海古籍出版社', '古典文学', 5);
INSERT INTO `book` VALUES (197, '训诂学', '王宁', '高等教育出版社', '古典文学', 2);
INSERT INTO `book` VALUES (198, '宋词选', '胡云翼选注', '上海古籍出版社', '古典文学', 3);
INSERT INTO `book` VALUES (199, '沧浪诗话', '严羽', '中华书局', '古典文学', 3);
INSERT INTO `book` VALUES (200, '明代小说史', '陈大康', '人民文学出版社', '古典文学', 7);
INSERT INTO `book` VALUES (201, '明杂剧概论', '曾永义', '商务印书馆', '古典文学', 10);
INSERT INTO `book` VALUES (202, '安史之乱与盛唐诗人', '吕蔚', '中华书局', '古典文学', 10);
INSERT INTO `book` VALUES (203, '中古文学与佛教', '陈引驰', '商务印书馆', '古典文学', 4);
INSERT INTO `book` VALUES (204, '晚明小品研究（修订本）', '吴承学', '北京大学出版社', '古典文学', 4);
INSERT INTO `book` VALUES (205, '黄仲则诗选', '黄仲则', '中华书局', '古典文学', 7);
INSERT INTO `book` VALUES (206, '源氏物语（上、中、下）', '[日]紫式部', '人民文学出版社', '古典文学', 8);
INSERT INTO `book` VALUES (207, '白蛇全传', '梦花馆主', '岳麓书社', '古典文学', 4);
INSERT INTO `book` VALUES (208, '菜根潭', '翟文明', '光明日报出版社', '古典文学', 2);
INSERT INTO `book` VALUES (209, '汉唐文学与文献论考', '陈尚君', '上海古籍出版社', '古典文学', 0);
INSERT INTO `book` VALUES (210, '徐霞客游记', '徐霞客', '中华书局', '古典文学', 10);
INSERT INTO `book` VALUES (211, '全唐五代词', '张璋、黄畲', '上海古籍出版社', '古典文学', 9);
INSERT INTO `book` VALUES (212, '诗映大唐春', '尚永亮', '北京大学出版社', '古典文学', 7);
INSERT INTO `book` VALUES (213, '游金梦', '骆玉明', '复旦大学出版社', '古典文学', 5);
INSERT INTO `book` VALUES (216, '盗墓笔记', '南派三叔', '中国友谊出版公司', '悬疑', 0);
INSERT INTO `book` VALUES (221, '长安十二时辰 上', '马伯庸', '湖南文艺出版社', '悬疑', 6);
INSERT INTO `book` VALUES (226, '肖申克的救赎', '[美]斯蒂芬·金', '人民文学出版社', '悬疑', 6);
INSERT INTO `book` VALUES (227, '长安十二时辰 下', '马伯庸', '湖南文艺出版社', '悬疑', 3);
INSERT INTO `book` VALUES (228, '鬼吹灯之精绝古城', '天下霸唱', '安徽文艺出版社', '悬疑', 8);
INSERT INTO `book` VALUES (230, '河神1·鬼水怪谈', '天下霸唱', '安徽人民出版社', '悬疑', 1);
INSERT INTO `book` VALUES (231, '死了七次的男人', '（日）西泽保彦', '新星出版社', '悬疑', 0);
INSERT INTO `book` VALUES (232, '假面之夜', '[日]东野圭吾', '南海出版公司', '悬疑', 4);
INSERT INTO `book` VALUES (233, '桐花中路私立协济医院怪谈', '南琅', '上海人民出版社', '悬疑', 2);
INSERT INTO `book` VALUES (234, '悪意', '東野圭吾', '東野圭吾', '悬疑', 4);
INSERT INTO `book` VALUES (235, '真相', '[瑞士]若埃尔·迪克', '湖南文艺出版社', '悬疑', 0);
INSERT INTO `book` VALUES (236, '锦衣之下（全二册）', '蓝色狮', '北方文艺出版社', '悬疑', 8);
INSERT INTO `book` VALUES (237, '风声', '麦家', '北京十月文艺出版社', '悬疑', 3);
INSERT INTO `book` VALUES (238, '间谍先生:复仇者', '[英]弗·福赛斯', '上海文艺出版社', '悬疑', 3);
INSERT INTO `book` VALUES (239, '银行家的情人', '肯·福莱特', '江苏文艺出版社', '悬疑', 4);
INSERT INTO `book` VALUES (240, '火神', '天下霸唱', '北京联合出版公司', '悬疑', 0);
INSERT INTO `book` VALUES (241, '乌云遇皎月', '丁墨', '百花洲文艺出版社', '悬疑', 9);
INSERT INTO `book` VALUES (242, '潜梦者', '刑警陈猛', '贵州人民出版社', '悬疑', 6);
INSERT INTO `book` VALUES (243, '探金', '烟书', '中国友谊出版公司', '悬疑', 2);
INSERT INTO `book` VALUES (244, '地狱变', '蔡骏', '南海出版公司', '悬疑', 0);
INSERT INTO `book` VALUES (245, '凶宅笔记', '贰十三', '花城出版社', '悬疑', 2);
INSERT INTO `book` VALUES (246, '心理罪·画像', '雷米', '雷米', '悬疑', 3);
INSERT INTO `book` VALUES (247, '荆棘之城', '[英]萨拉·沃特斯', '百花洲文艺出版社', '悬疑', 4);
INSERT INTO `book` VALUES (248, '间谍课：上帝的拳头', '弗.福赛斯', '舒云亮', '悬疑', 3);
INSERT INTO `book` VALUES (249, '盗墓笔记6·阴山古楼', '南派三叔', '上海文化出版社', '悬疑', 9);
INSERT INTO `book` VALUES (250, '护士学院杀人事件', '(英)P.D.詹姆斯', '文汇出版社', '悬疑', 8);
INSERT INTO `book` VALUES (251, '绿里', '斯蒂芬.金', '上海文艺出版社', '悬疑', 8);
INSERT INTO `book` VALUES (252, '设局', '紫金陈', '贵州人民出版社', '悬疑', 8);
INSERT INTO `book` VALUES (253, '异域密码之泰国异闻录（新修订版）', '羊行屮', '九州出版社', '悬疑', 8);
INSERT INTO `book` VALUES (254, '夏天,十九岁的肖像', '岛田庄司', '新星出版社', '悬疑', 9);
INSERT INTO `book` VALUES (255, '藏地密码6', '何马', '重庆出版社', '悬疑', 3);
INSERT INTO `book` VALUES (256, '有翼之暗', '（日）麻耶雄嵩', '新星出版社', '悬疑', 3);
INSERT INTO `book` VALUES (257, '向日葵不开的夏天', '[日]道尾秀介', '新星出版社', '悬疑', 7);
INSERT INTO `book` VALUES (258, '不如去死', '[日]京极夏彦', '中信出版社', '悬疑', 0);
INSERT INTO `book` VALUES (259, '间谍先生：阿富汗人', '[英]弗·福赛斯', '舒云亮', '悬疑', 10);
INSERT INTO `book` VALUES (260, '美国众神', '[英]尼尔·盖曼', '四川科学技术出版社', '悬疑', 3);
INSERT INTO `book` VALUES (261, '上锁的房间', '贵志佑介', '重庆出版社', '悬疑', 6);
INSERT INTO `book` VALUES (262, '始料未及爱上你', '惜双双', '江苏凤凰文艺出版社', '悬疑', 5);
INSERT INTO `book` VALUES (263, '巷说百物语', '[日]京极夏彦', '北京十月文艺出版社', '悬疑', 2);
INSERT INTO `book` VALUES (264, '全部成为F', '(日)森博嗣', '江苏文艺出版社', '悬疑', 6);
INSERT INTO `book` VALUES (265, '反转', '[日]凑佳苗', '北京联合出版公司', '悬疑', 0);
INSERT INTO `book` VALUES (267, '三体Ⅱ', '刘慈欣', '重庆出版社', '科幻', 2);
INSERT INTO `book` VALUES (269, '海底两万里', '[法国]儒尔·凡尔纳', '译林出版社', '科幻', 8);
INSERT INTO `book` VALUES (270, '醉步男', '[日]小林泰三', '北京时代华文书局', '科幻', 8);
INSERT INTO `book` VALUES (271, '球状闪电', '刘慈欣', '四川科学技术出版社', '科幻', 0);
INSERT INTO `book` VALUES (272, '你一生的故事', '[美]特德·姜', '译林出版社', '科幻', 9);
INSERT INTO `book` VALUES (273, '克莱因壶', '[日]冈岛二人', '化学工业出版社', '科幻', 9);
INSERT INTO `book` VALUES (274, '2001：太空漫游', '[英]阿瑟·克拉克', '上海文艺出版社', '科幻', 2);
INSERT INTO `book` VALUES (275, '群星', '七月', '人民文学出版社', '科幻', 7);
INSERT INTO `book` VALUES (276, '献给阿尔吉侬的花束', '[美]丹尼尔·凯斯', '广西师范大学出版社', '科幻', 2);
INSERT INTO `book` VALUES (277, '自指引擎', '[日]圆城塔', '人民文学出版社', '科幻', 1);
INSERT INTO `book` VALUES (278, '与罗摩相会', '[英]阿瑟·克拉克', '江苏凤凰文艺出版社', '科幻', 3);
INSERT INTO `book` VALUES (279, '北京折叠', '郝景芳', '2016-7', '科幻', 3);
INSERT INTO `book` VALUES (280, '神经漫游者', '[美]威廉·吉布森', '江苏文艺出版社', '科幻', 2);
INSERT INTO `book` VALUES (281, '仿生人会梦见电子羊吗？', '(美)菲利普·迪克', '译林出版社', '科幻', 1);
INSERT INTO `book` VALUES (282, '接触', '卡尔•萨根', '重庆出版社', '科幻', 6);
INSERT INTO `book` VALUES (284, '安德的影子', '奥森·斯科特·卡德', '四川科学技术出版社', '科幻', 10);
INSERT INTO `book` VALUES (285, '喂食者协会', '那多', '湖南文艺出版社', '科幻', 9);
INSERT INTO `book` VALUES (286, '漂流教室(1)', '楳圖一雄', '時報文化', '科幻', 10);
INSERT INTO `book` VALUES (287, '玩家1号', '[美]恩斯特·克莱恩', '四川科学技术出版社', '科幻', 7);
INSERT INTO `book` VALUES (289, '时砂之王', '[日]小川一水', '四川科学技术出版社', '科幻', 2);
INSERT INTO `book` VALUES (290, '城市与群星', '[英]亚瑟·克拉克', '四川科学技术出版社', '科幻', 9);
INSERT INTO `book` VALUES (291, 'OPUS（オーパス） 上巻', '今敏', '徳間書店', '科幻', 6);
INSERT INTO `book` VALUES (293, '星之声', '[日]加纳新太', '北京联合出版公司', '科幻', 8);
INSERT INTO `book` VALUES (294, '流浪地球', '刘慈欣', '长江文艺出版社', '科幻', 2);
INSERT INTO `book` VALUES (295, '日暮', '西尔弗伯格、阿西莫夫', '四川科学技术出版社', '科幻', 3);
INSERT INTO `book` VALUES (296, '原子空間', '衛斯理', '衛斯理', '科幻', 3);
INSERT INTO `book` VALUES (297, '阿瑟•克拉克至高科幻经典(套装共5册)', 'E伯爵', '四川科学技术出版社', '科幻', 2);
INSERT INTO `book` VALUES (298, '战争学徒', 'PeterWatts', 'TorBooks', '科幻', 9);
INSERT INTO `book` VALUES (299, '星丛', '劉慈欣', '早川書房', '科幻', 3);
INSERT INTO `book` VALUES (300, '图夫航行记', '哈尔·克莱蒙特', '四川科学技术出版社', '科幻', 5);
INSERT INTO `book` VALUES (301, '重力使命', '（日）铃木光司', '南海出版公司', '科幻', 5);
INSERT INTO `book` VALUES (302, '地铁2034', '雷欧幻像', '浙江少年儿童出版社', '科幻', 5);
INSERT INTO `book` VALUES (304, '明朝那些事儿（壹）', '当年明月', '中国友谊出版公司', '历史', 3);
INSERT INTO `book` VALUES (305, '汴京之围', '郭建龙', '天地出版社', '历史', 9);
INSERT INTO `book` VALUES (306, '日本人为何选择了战争', '[日]加藤阳子', '浙江人民出版社', '历史', 10);
INSERT INTO `book` VALUES (308, '明朝那些事儿（1-9）', '当年明月', '中国海关出版社', '历史', 8);
INSERT INTO `book` VALUES (309, '死屋', '[英]丹尼尔·比尔', '后浪丨四川文艺出版社', '历史', 8);
INSERT INTO `book` VALUES (310, '枪炮、病菌与钢铁', '[美]贾雷德·戴蒙德', '上海世纪出版集团', '历史', 6);
INSERT INTO `book` VALUES (311, '巨人的陨落', '[英]肯·福莱特', '江苏凤凰文艺出版社', '历史', 2);
INSERT INTO `book` VALUES (312, '白鹿原', '陈忠实', '人民文学出版社', '历史', 5);
INSERT INTO `book` VALUES (314, '显微镜下的大明', '马伯庸', '湖南文艺出版社', '历史', 3);
INSERT INTO `book` VALUES (315, '夹边沟记事', '杨显惠', '花城出版社', '历史', 9);
INSERT INTO `book` VALUES (316, '大清相国', '王跃文', '湖南文艺出版社', '历史', 6);
INSERT INTO `book` VALUES (317, '谜宫·如意琳琅图集', '故宫博物院', '故宫出版社', '历史', 2);
INSERT INTO `book` VALUES (318, '美国种族简史', '[美]托马斯·索威尔', '中信出版社', '历史', 2);
INSERT INTO `book` VALUES (319, '金瓯缺（全四册）', '徐兴业', '长江文艺出版社', '历史', 7);
INSERT INTO `book` VALUES (320, '镖人', '许先哲', '北京联合出版公司', '历史', 6);
INSERT INTO `book` VALUES (321, '李鸿章传', '梁启超', '中华书局', '历史', 1);
INSERT INTO `book` VALUES (322, '上下五千年', '林汉达、曹余章', '少年儿童出版社', '历史', 8);
INSERT INTO `book` VALUES (323, '历史', '[希腊]希罗多德', '上海三联书店', '历史', 7);
INSERT INTO `book` VALUES (324, '鱼羊野史·第1卷', '高晓松', '湖南文艺出版社', '历史', 8);
INSERT INTO `book` VALUES (325, '活着回来的男人', '[日]小熊英二', '广西师范大学出版社', '历史', 8);
INSERT INTO `book` VALUES (326, '第九个寡妇', '严歌苓', '作家出版社', '历史', 4);
INSERT INTO `book` VALUES (327, '我们台湾这些年', '廖信忠', '重庆出版集团', '历史', 5);
INSERT INTO `book` VALUES (328, '《长安骊歌》（全三册）', '郁馥', '天地出版社', '历史', 0);
INSERT INTO `book` VALUES (329, '胭脂与焉支', '郑张尚芳', '上海教育出版社', '历史', 2);
INSERT INTO `book` VALUES (330, '国史大纲（上下册）', '钱穆', '商务印书馆', '历史', 10);
INSERT INTO `book` VALUES (331, '革命年代', '高华', '广西师范大学出版社', '历史', 9);
INSERT INTO `book` VALUES (332, '孙子兵法', '孙武', '上海古籍出版社', '历史', 9);
INSERT INTO `book` VALUES (334, '隆美尔战时文件', '【英】李德•哈特', '民主与建设出版社', '历史', 4);
INSERT INTO `book` VALUES (335, '论个人在历史上的作用问题', '[俄]普列汉诺夫', '商务印书馆', '历史', 1);
INSERT INTO `book` VALUES (336, '三国兵争要地与攻守战略研究', '宋杰', '中华书局', '历史', 9);
INSERT INTO `book` VALUES (337, '暮日耀光', '韦庆远', '江苏凤凰文艺出版社', '历史', 1);
INSERT INTO `book` VALUES (338, '城堡的故事', '[英]马克·莫里斯', '化学工业出版社', '历史', 1);
INSERT INTO `book` VALUES (339, '宋宴', '徐鲤、郑亚胜、卢冉', '新星出版社', '历史', 7);
INSERT INTO `book` VALUES (340, '巴黎和会与北京政府的内外博弈', '邓野', '社会科学文献出版社', '历史', 7);
INSERT INTO `book` VALUES (341, '卢丹的恶魔：法国神父“附魔”案', '[英]阿道司·赫胥黎', '北京时代华文书局', '历史', 9);
INSERT INTO `book` VALUES (342, '鲁滨逊漂流记', '[英]笛福', '广西民族出版社', '外国名著', 6);
INSERT INTO `book` VALUES (343, '傲慢与偏见', '[英]奥斯丁', '人民文学出版社', '外国名著', 7);
INSERT INTO `book` VALUES (344, '简爱（英文全本）', '[英]夏洛蒂·勃朗特', '世界图书出版公司', '外国名著', 6);
INSERT INTO `book` VALUES (345, '巴黎圣母院', '[法]雨果', '人民文学出版社', '外国名著', 10);
INSERT INTO `book` VALUES (346, '老人与海', '海明威', '上海译文出版社', '外国名著', 5);
INSERT INTO `book` VALUES (347, '羊脂球', '（法）莫泊桑', '北京燕山出版社', '外国名著', 5);
INSERT INTO `book` VALUES (348, '基督山伯爵', '大仲马', '上海译文出版社', '外国名著', 3);
INSERT INTO `book` VALUES (349, '茶花女', '小仲马', '外国文学出版社', '外国名著', 10);
INSERT INTO `book` VALUES (350, '红与黑', '[法]司汤达', '人民文学出版社', '外国名著', 2);
INSERT INTO `book` VALUES (351, '一千零一夜', '纳训', '人民文学出版社', '外国名著', 4);
INSERT INTO `book` VALUES (353, '悲惨世界（上中下）', '[法]雨果', '人民文学出版社', '外国名著', 5);
INSERT INTO `book` VALUES (354, '麦琪的礼物', '[美]欧·亨利', '上海社会科学院出版社', '外国名著', 7);
INSERT INTO `book` VALUES (355, '雾都孤儿', '[英]狄更斯', '上海译文出版社', '外国名著', 0);
INSERT INTO `book` VALUES (356, '哈姆莱特', '[英]莎士比亚', '人民文学出版社', '外国名著', 5);
INSERT INTO `book` VALUES (357, '安徒生童话故事集', '（丹麦）安徒生', '人民文学出版社', '外国名著', 6);
INSERT INTO `book` VALUES (358, '一个陌生女人的来信', '[奥]斯台芬·茨威格', '上海译文出版社', '外国名著', 3);
INSERT INTO `book` VALUES (359, '项链', '[法]莫泊桑', '河北教育出版社', '外国名著', 2);
INSERT INTO `book` VALUES (360, '歌剧魅影', '[法]卡斯顿·勒胡', '中国友谊出版公司', '外国名著', 1);
INSERT INTO `book` VALUES (361, '魔沼', '（法）乔治・桑', '北京燕山出版社', '外国名著', 7);
INSERT INTO `book` VALUES (362, '悲惨世界', '[法]雨果', '人民文学出版社', '外国名著', 0);
INSERT INTO `book` VALUES (363, '凯旋门', '(德)雷马克', '上海译文出版社', '外国名著', 9);
INSERT INTO `book` VALUES (364, '格林童话全集', '格林兄弟', '人民文学出版社', '外国名著', 4);
INSERT INTO `book` VALUES (365, '格列佛游记', '乔纳森·斯威夫特', '人民文学出版社', '外国名著', 3);
INSERT INTO `book` VALUES (366, '警察和赞美诗', '欧・亨利', '译林出版社', '外国名著', 10);
INSERT INTO `book` VALUES (367, '温莎的风流娘儿们', '莎士比亚', '人民文学出版社', '外国名著', 1);
INSERT INTO `book` VALUES (369, '文字生涯', '[法]让-保尔·萨特', '人民文学出版社', '外国名著', 10);
INSERT INTO `book` VALUES (370, '童年.在人间.我的大学', '马克西姆·高尔基', '长江文艺', '外国名著', 4);
INSERT INTO `book` VALUES (371, '娜娜', '左拉', '人民文学出版社', '外国名著', 5);
INSERT INTO `book` VALUES (372, '爱玛', '简·奥斯丁', '人民文学出版社', '外国名著', 5);
INSERT INTO `book` VALUES (374, '三剑客', '大仲马', '译林出版社', '外国名著', 10);
INSERT INTO `book` VALUES (375, '安娜·卡列尼娜', '[俄]列夫·托尔斯泰', '上海译文出版社', '外国名著', 5);
INSERT INTO `book` VALUES (376, '赛场老手', '西德尼.谢尔顿', '鹭江出版社', '外国名著', 3);
INSERT INTO `book` VALUES (377, '变色龙', '（俄）契诃夫', '译林出版社', '外国名著', 10);
INSERT INTO `book` VALUES (378, '小妇人', '奥尔科特', '长江文艺出版社', '外国名著', 8);
INSERT INTO `book` VALUES (379, '十日谈', '卜伽丘', '上海译文出版社', '外国名著', 3);
INSERT INTO `book` VALUES (380, '包法利夫人', '福楼拜', '上海译文出版社', '外国名著', 2);
INSERT INTO `book` VALUES (381, '蝇王', '威廉·戈尔丁', '上海译文出版社', '外国名著', 6);
INSERT INTO `book` VALUES (382, '欧也妮・葛朗台 高老头/外国文学名著精品', '巴尔扎克', '巴尔扎克', '外国名著', 6);
INSERT INTO `book` VALUES (383, '浮士德', '[德]歌德', '北京燕山出版社', '外国名著', 5);
INSERT INTO `book` VALUES (384, '大卫·科波菲尔', '查尔斯·狄更斯', '北京大学', '外国名著', 0);
INSERT INTO `book` VALUES (385, '快乐王子', '[英]王尔德', '上海译文出版社', '外国名著', 5);
INSERT INTO `book` VALUES (386, '布拉日隆子爵', '大仲马', '王晓峰等译', '外国名著', 2);
INSERT INTO `book` VALUES (387, '月亮和六便士', '[英]毛姆', '上海译文出版社', '外国名著', 7);
INSERT INTO `book` VALUES (388, '九三年', '【法】雨果', '人民文学出版社', '外国名著', 4);
INSERT INTO `book` VALUES (389, '欧叶妮·格朗台', '巴尔扎克', '译林出版社', '外国名著', 0);
INSERT INTO `book` VALUES (390, '唐璜（上下）', '拜伦', '人民文学出版社', '外国名著', 2);
INSERT INTO `book` VALUES (391, '卡门', '(法)梅里美', '国际文化出版公司', '外国名著', 9);
INSERT INTO `book` VALUES (392, '堂吉诃德', '塞万提斯', '人民文学出版社', '外国名著', 8);
INSERT INTO `book` VALUES (393, '羊脂球(莫泊桑中短篇小说选)', '莫泊桑、王振孙', '花城出版社', '外国名著', 8);
INSERT INTO `book` VALUES (394, '海上劳工', '维克多·雨果', '四川人民出版社', '外国名著', 9);
INSERT INTO `book` VALUES (396, 'Python编程', '[美]埃里克·马瑟斯', '人民邮电出版社', '编程', 10);
INSERT INTO `book` VALUES (397, '从Python开始学编程', 'Vamei', '电子工业出版社', '编程', 6);
INSERT INTO `book` VALUES (398, '程序员的自我修养', '俞甲子、石凡、潘爱民', '电子工业出版社', '编程', 9);
INSERT INTO `book` VALUES (399, '编程珠玑', 'JonBentley', '人民邮电出版社', '编程', 1);
INSERT INTO `book` VALUES (400, 'C语言程序设计', 'K.N.King', '人民邮电出版社', '编程', 0);
INSERT INTO `book` VALUES (401, '编程之美', '《编程之美》小组编', '电子工业出版社', '编程', 2);
INSERT INTO `book` VALUES (402, '软件调试', '张银奎', '电子工业出版社', '编程', 2);
INSERT INTO `book` VALUES (403, '代码揭秘', '左飞', '电子工业出版社', '编程', 2);
INSERT INTO `book` VALUES (404, 'Spring Boot编程思想（核心篇）', '小马哥', '电子工业出版社', '编程', 9);
INSERT INTO `book` VALUES (405, 'Java并发编程的艺术', '方腾飞、魏鹏、程晓明', '机械工业出版社', '编程', 5);
INSERT INTO `book` VALUES (406, 'JavaScript权威指南', '弗拉纳根', '机械工业出版社', '编程', 5);
INSERT INTO `book` VALUES (407, '构建高性能Web站点', '郭欣', '电子工业出版社', '编程', 5);
INSERT INTO `book` VALUES (408, 'Python趣味编程入门', '(英)迈克·桑德斯', '人民邮电', '编程', 10);
INSERT INTO `book` VALUES (409, 'Docker——容器与容器云（第2版）', '浙江大学SEL实验室', '人民邮电出版社', '编程', 0);
INSERT INTO `book` VALUES (410, '大数据平台基础架构指南', '刘旭晖', '电子工业出版社', '编程', 2);
INSERT INTO `book` VALUES (411, 'Producter 让产品从0到1', '周楷雯', '人民邮电出版社', '编程', 0);
INSERT INTO `book` VALUES (412, '深度学习框架PyTorch：入门与实践', '陈云', '电子工业出版社', '编程', 1);
INSERT INTO `book` VALUES (413, 'MySQL技术内幕', '姜承尧', '机械工业出版社', '编程', 1);
INSERT INTO `book` VALUES (414, 'Linux 内核设计的艺术（第2版）', '新设计团队', '机械工业出版社', '编程', 8);
INSERT INTO `book` VALUES (415, '精益创业', '[美]埃里克·莱斯', '中信出版社', '编程', 8);
INSERT INTO `book` VALUES (416, '时间简史', '[英]史蒂芬·霍金', '湖南科学技术出版社', '科学', 3);
INSERT INTO `book` VALUES (417, '从一到无穷大', '[美]G.伽莫夫', '科学出版社', '科学', 8);
INSERT INTO `book` VALUES (418, '上帝掷骰子吗', '曹天元', '辽宁教育出版社', '科学', 9);
INSERT INTO `book` VALUES (419, '哥德尔、艾舍尔、巴赫', '[美]侯世达', '商务印书馆', '科学', 10);
INSERT INTO `book` VALUES (420, '世界观（原书第2版）', '[美]理查德·德威特', '机械工业出版社', '科学', 3);
INSERT INTO `book` VALUES (421, '对伪心理学说不', '基思•斯坦诺维奇', '人民邮电出版社', '科学', 10);
INSERT INTO `book` VALUES (422, '暗淡蓝点', '[美]卡尔·萨根', '上海科技教育出版社', '科学', 3);
INSERT INTO `book` VALUES (423, '基因传', '[美]悉达多·穆克吉', '中信出版社', '科学', 4);
INSERT INTO `book` VALUES (424, '数学之美', '吴军', '人民邮电出版社', '科学', 1);
INSERT INTO `book` VALUES (425, '费曼手札', '[美]理查德·费曼', '湖南科学技术出版社', '科学', 1);
INSERT INTO `book` VALUES (426, '我所理解的流体力学', '王洪伟', '王洪伟', '科学', 10);
INSERT INTO `book` VALUES (427, '进化的咬痕', '[美]皮特•昂加尔', '新世界出版社', '科学', 2);
INSERT INTO `book` VALUES (428, '人工科学', '[美]司马贺', '上海科技教育出版社', '科学', 5);
INSERT INTO `book` VALUES (429, '临界', '[美]马克·布查纳', '吉林人民出版社', '科学', 0);
INSERT INTO `book` VALUES (430, '寻找薛定谔的猫', '[美]约翰·格里宾', '海南出版社', '科学', 0);
INSERT INTO `book` VALUES (431, '性', '[美]凯莉·威尔奇', '中国人民大学出版社', '科学', 4);
INSERT INTO `book` VALUES (432, '你一定爱读的极简未来史', '克里斯托弗·巴纳特', '北京联合出版公司', '科学', 2);
INSERT INTO `book` VALUES (433, '贝尔实验室与美国革新大时代', '[美]乔恩·格特纳', '中信出版社', '科学', 9);
INSERT INTO `book` VALUES (434, '科学推理(逻辑与科学思维方法)', '[中]周建武', '化学工业出版社', '科学', 7);
INSERT INTO `book` VALUES (435, '上帝的跳蚤', '王哲', '同心出版社', '科学', 5);
INSERT INTO `book` VALUES (436, '科学外史', '江晓原', '复旦大学出版社', '科学', 10);
INSERT INTO `book` VALUES (437, '费曼讲物理入门', '[美]理查德·费曼', '湖南科学技术出版社', '科学', 8);
INSERT INTO `book` VALUES (438, '科学研究的艺术', '(英)贝弗里奇', '科学出版社', '科学', 3);
INSERT INTO `book` VALUES (439, '中国居民膳食指南', '中国营养学会', '西藏人民出版社', '科学', 2);
INSERT INTO `book` VALUES (440, '数学与哲学', '张景中', '中国少年儿童出版社', '科学', 7);
INSERT INTO `book` VALUES (441, '微分几何入门与广义相对论（上册·第二版）', '梁灿彬、周彬', '科学出版社', '科学', 5);
INSERT INTO `book` VALUES (442, '艾伦·图灵传', '[英]安德鲁·霍奇斯', '湖南科学技术出版社', '科学', 5);
INSERT INTO `book` VALUES (443, '科学哲学导论', 'R.卡尔纳普', '中国人民大学出版社', '科学', 1);
INSERT INTO `book` VALUES (444, '被诅咒的部分', '[法]乔治·巴塔耶', '南京大学出版社', '科学', 1);
INSERT INTO `book` VALUES (446, '债务危机', '瑞·达利欧', '中信出版社', '金融', 1);
INSERT INTO `book` VALUES (447, '伟大的博弈', '[美]约翰·S.戈登', '中信出版社', '金融', 10);
INSERT INTO `book` VALUES (448, '货币战争', '宋鸿兵编著', '中信出版社', '金融', 9);
INSERT INTO `book` VALUES (449, '金融炼金术', '[美]乔治·索罗斯', '海南出版社', '金融', 10);
INSERT INTO `book` VALUES (450, '投资中最简单的事', '邱国鹭', '中国人民大学出版社', '金融', 5);
INSERT INTO `book` VALUES (451, '涛动周期论', '周金涛', '周金涛', '金融', 1);
INSERT INTO `book` VALUES (452, '亚洲教父', '[美]乔·史塔威尔', '复旦大学出版社', '金融', 7);
INSERT INTO `book` VALUES (453, '指数基金投资指南', '银行螺丝钉', '中信出版社', '金融', 4);
INSERT INTO `book` VALUES (454, '周期', '[美]霍华德·马克斯', '中信出版集团', '金融', 0);
INSERT INTO `book` VALUES (455, '穷查理宝典', '彼得·考夫曼', '中信出版集团', '金融', 10);
INSERT INTO `book` VALUES (456, '公司理财', '斯蒂芬A.罗斯', '机械工业出版社', '金融', 6);
INSERT INTO `book` VALUES (457, '金融街：私募风云', '梁成', '中国友谊出版公司', '金融', 5);
INSERT INTO `book` VALUES (458, '财富的本质', '[英]萨姆•威尔金', '中信出版社', '金融', 0);
INSERT INTO `book` VALUES (459, '图说区块链', '徐明星、田颖、李霁月', '中信出版社', '金融', 0);
INSERT INTO `book` VALUES (460, '穿过迷雾', '任俊杰', '中国经济出版社', '金融', 5);
INSERT INTO `book` VALUES (461, '可转债投资魔法书（第2版）', '安道全', '电子工业出版社', '金融', 7);
INSERT INTO `book` VALUES (462, '24堂财富课', '陈志武', '理想国|台海出版社', '金融', 2);
INSERT INTO `book` VALUES (463, '威科夫操盘法', '山西人民出版社', '山西人民出版社', '金融', 1);
INSERT INTO `book` VALUES (464, '期货大作手风云录—初入期海', '逍遥刘强', '东方出版社', '金融', 2);
INSERT INTO `book` VALUES (465, '明明白白看年报', '袁克成', '机械工业出版社', '金融', 5);
INSERT INTO `book` VALUES (466, '垃圾债券之王', '【美】康妮•布鲁克', '中信出版社', '金融', 3);
INSERT INTO `book` VALUES (467, '美国货币体系', '威廉·华莱士', '格致出版社', '金融', 0);
INSERT INTO `book` VALUES (468, '兜售繁荣', '保罗·克鲁格曼', '中信出版社', '金融', 7);
INSERT INTO `book` VALUES (469, '银行局', '边江', '重庆出版社', '金融', 8);
INSERT INTO `book` VALUES (470, '固定收益证券手册', '弗兰克·J·法博齐', '中国人民大学出版社', '金融', 9);
INSERT INTO `book` VALUES (471, '对冲基金经理笔记', '拉尔斯·克罗耶', '中国财经', '金融', 2);
INSERT INTO `book` VALUES (472, '高盛帝国（下）', '[美]查尔斯·埃利斯', '中信出版社', '金融', 7);
INSERT INTO `book` VALUES (473, '这个时代的无知与傲慢', '（美）乔治·索罗斯', '中信出版社', '金融', 9);
INSERT INTO `book` VALUES (474, '新一代银行IT架构', '马智涛、卢道和、李靖', '机械工业出版社', '金融', 3);
INSERT INTO `book` VALUES (475, '罗斯柴尔德家族（上）', '尼尔·弗格森', '中信出版社', '金融', 7);
INSERT INTO `book` VALUES (476, '经济解释', '张五常', '商务印书馆', '金融', 1);
INSERT INTO `book` VALUES (490, '五六七', '域', '清华大学出版社', '悬疑', 1);

-- ----------------------------
-- Table structure for lcard
-- ----------------------------
DROP TABLE IF EXISTS `lcard`;
CREATE TABLE `lcard`  (
  `Lno` int(10) NOT NULL AUTO_INCREMENT,
  `LSno` int(10) NOT NULL,
  `Lname` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Lpassword` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Lbkno` enum('0','1','2','3','4','5','6','7','8','9','10') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ltel` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Lno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 100011 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lcard
-- ----------------------------
INSERT INTO `lcard` VALUES (100000, 17081610, '许大哥', '123456', '6', '17376571334');
INSERT INTO `lcard` VALUES (100006, 17081611, '陈大哥一号', '12345678', '5', '17376571331');
INSERT INTO `lcard` VALUES (100007, 17081612, '陈大哥二号', '111111', '4', '17376571332');
INSERT INTO `lcard` VALUES (100008, 17081613, '俞大哥', '123456', '2', '17376571330');
INSERT INTO `lcard` VALUES (100009, 777, '777', '777', '0', '777');
INSERT INTO `lcard` VALUES (100010, 17081714, '胡小弟', '555', '0', '12312341234');

-- ----------------------------
-- Table structure for lendlb
-- ----------------------------
DROP TABLE IF EXISTS `lendlb`;
CREATE TABLE `lendlb`  (
  `Lbno` int(10) NOT NULL,
  `Lbname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Lno` int(10) NOT NULL,
  `Lname` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Lauthor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Lpress` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ldate` date NULL DEFAULT NULL,
  `Lrtdate` date NULL DEFAULT NULL,
  PRIMARY KEY (`Lbno`, `Lno`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lendlb
-- ----------------------------
INSERT INTO `lendlb` VALUES (1, '白夜行', 100000, '许大哥', '[日]东野圭吾', '南海出版公司', '2019-12-12', '2019-12-14');
INSERT INTO `lendlb` VALUES (2, '嫌疑人X的献身', 100000, '许大哥', '[日]东野圭吾', '南海出版公司', '2019-12-07', '2019-12-13');
INSERT INTO `lendlb` VALUES (3, '解忧杂货店', 100000, '许大哥', '[日]东野圭吾', '南海出版公司', '2019-12-04', '2019-12-29');
INSERT INTO `lendlb` VALUES (80, '不能承受的生命之轻', 100000, '许大哥', '[捷克]米兰·昆德拉', '上海译文出版社', '2019-12-02', '2019-12-13');
INSERT INTO `lendlb` VALUES (122, '断舍离', 100000, '许大哥', '山下英子', '广西科学技术出版社', '2019-12-12', '2019-12-14');
INSERT INTO `lendlb` VALUES (122, '断舍离', 100006, '陈大哥一号', '山下英子', '广西科学技术出版社', '2019-12-12', '2019-12-14');
INSERT INTO `lendlb` VALUES (5, '达·芬奇密码', 100000, '许大哥', '[美]丹·布朗', '上海人民出版社', '2019-12-12', '2019-12-15');
INSERT INTO `lendlb` VALUES (7, '福尔摩斯探案全集（上中下）', 100006, '陈大哥一号', '[英]阿·柯南道尔', '上海人民出版社', '2019-12-12', '2020-01-15');
INSERT INTO `lendlb` VALUES (12, '放学后', 100006, '陈大哥一号', '（日）东野圭吾', '南海出版公司', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (112, '运动-影像', 100006, '陈大哥一号', '吉尔·德勒兹', '湖南美术出版社', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (118, '撒哈拉的故事', 100006, '陈大哥一号', '三毛', '皇冠出版社', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (415, '精益创业', 100007, '陈大哥二号', '[美]埃里克·莱斯', '中信出版社', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (471, '对冲基金经理笔记', 100007, '陈大哥二号', '拉尔斯·克罗耶', '中国财经', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (411, 'Producter 让产品从0到1', 100007, '陈大哥二号', '周楷雯', '人民邮电出版社', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (311, '巨人的陨落', 100007, '陈大哥二号', '[英]肯·福莱特', '江苏凤凰文艺出版社', '2019-12-13', '2019-12-22');
INSERT INTO `lendlb` VALUES (165, '西游记（全二册）', 100008, '俞大哥', '吴承恩', '人民文学出版社', '2019-12-12', '2019-12-15');
INSERT INTO `lendlb` VALUES (265, '反转', 100008, '俞大哥', '[日]凑佳苗', '北京联合出版公司', '2019-12-12', '2020-01-18');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `Mno` int(10) NOT NULL,
  `Mpswd` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mname` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Mno`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (12345, '12345', '胡大哥');
INSERT INTO `manager` VALUES (11109, 's8kin4u0xr', '陈大哥');
INSERT INTO `manager` VALUES (11187, 'yl582w6sdo', '');
INSERT INTO `manager` VALUES (11141, 'nva0bjd2i8', '');
INSERT INTO `manager` VALUES (11797, 'e8az2w4sjq', '');
INSERT INTO `manager` VALUES (11653, 'gldhq0w1t7', '');
INSERT INTO `manager` VALUES (10308, '1vgpobm7sz', '');
INSERT INTO `manager` VALUES (11769, 'iubnhogm4f', '');
INSERT INTO `manager` VALUES (10420, 'wuiszlajfb', '');

SET FOREIGN_KEY_CHECKS = 1;
