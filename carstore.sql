/*
 Navicat Premium Data Transfer

 Source Server         : mybatis
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : carstore

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/02/2024 21:55:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carstore_news
-- ----------------------------
DROP TABLE IF EXISTS `carstore_news`;
CREATE TABLE `carstore_news`  (
  `cn_id` int(0) NOT NULL AUTO_INCREMENT,
  `cn_title` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cn_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cn_create_time` datetime(0) NOT NULL,
  `cn_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 表示最新公告  2表示新闻动态',
  PRIMARY KEY (`cn_id`) USING BTREE,
  INDEX `AK_Key_2`(`cn_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carstore_news
-- ----------------------------
INSERT INTO `carstore_news` VALUES (1, 'DM-p王者混动为超越而来 唐DM-p预售价29.28万元起', '王者混动，为超越而来！6月9日，比亚迪DM-p王者混动暨唐DM-p预售发布会正式开启，DM-p王者混动重磅发布，拥有百公里加速5s以内的极速性能、操控稳定性全面超越机械四驱的安全性能以及传承DM-i优秀省油基因的经济性能三大极致用车体验，真正实现“不但快，而且省”。同时首款基于该技术平台打造的SUV唐DM-p正式预售，综合补贴后预售价格29.28万元-33.28万元，并携多项购车权益诚意而来。此外，唐DM-i 252KM尊享型预售也同步启动，综合补贴后预售价格为 28.28万元。作为比亚迪黑科技的集大成者，唐DM-p可油可电，将实力开启4.3s 6.5L高性能低能耗新时代，树立三十万级超混SUV性能标杆，开创划时代先锋。“不但快，而且省”DM-p王者混动为超越而来\r\n\r\nDM-p王者混动的“p”即“powerful”，指动力强劲，旨在满足对追求极致驾驶体验的用户。DM-p王者混动是“以电为主”的四驱混动架构，核心零部件骁云插混专用1.5T高效发动机、EHS160电混系统均实现全面升级。同时全新开发后驱三合一总成，系统高度集成，整车动力大幅提升。不仅如此，该技术平台还对刀片电池性能进行了全面升级，更拥有从30%充至80%仅20分钟的快充速度，和6kW的对外放电功率.', '2022-06-15 11:51:34', '1');
INSERT INTO `carstore_news` VALUES (2, '坦克300创新周末生活：去露营，做不被定义的坦克手！', '  做不完的PPT、加不完的班,挥之不去的压力感已经成为当下都市青年的生活常态,他们急需身体与精神上的放松。在周末,逃离城市、追求大自然的野趣,自然而然成为年轻人心向往之的“新周末主义”。而拥有“潮玩越野”属性的坦克300,凭借其对当下年轻人流行风潮的精准洞察,成为了“新周末主义”的主角,让年轻消费者多了一个密不可分的生活伙伴。 解锁精致露营生活 与坦克300共创“新周末主义”\r\n\r\n       城市化进程的加快,使得露营逐渐成为深受当下都市年轻人喜欢的解压方式之一。寻找一方净地、约上三五好友、谈天说地、享受美食,让人的心灵与精神得到真正的放松。随着年轻人越来越多地加入,露营模式也在发生变化,从少到多、从原始到精致、从单调到多元,露营生活更丰富、更富创造性,逐渐演化成一种文化潮流。\r\n\r\n       坦克300的出现,则为这种潮流解锁了更多样化的选择。它的潮流形象以及硬核实力,使其成为“新周末主义”下的载体。一方面,坦克300开创“可城可野”的硬派越野新品类,既能自如应对拥堵的城市路况,也能依靠充沛的动力和强劲的越野能力奔赴山野,兼顾了用户城市通勤与周末撒欢的需求。', '2022-06-19 15:13:05', '1');
INSERT INTO `carstore_news` VALUES (3, '雪铁龙C4 Picasso将7月于海外正式停产', '[ 资讯]  近日，我们从海外媒体获悉，由于紧凑型MPV车型市场持续萎缩，雪铁龙将于今年7月停产其最后一款紧凑型MPV——Grand C4 SpaceTourer。该车型最初发布于2013年，当时的名称为C4 Picasso(参数|询价)，雪铁龙表示截至目前其累计销量已经超过了73万辆。', '2022-06-09 16:01:43', '1');
INSERT INTO `carstore_news` VALUES (4, '46年历史 福特嘉年华三门版即将停产', '[ 资讯]  近日有海外媒体报道，福特计划于今年夏天在欧洲停产旗下嘉年华三门版（含ST车型），福特方面也官方证实了这一消息，这也标志着福特嘉年华(参数|询价)三门诞生46年的历史即将终结。', '2022-06-09 16:02:24', '2');
INSERT INTO `carstore_news` VALUES (5, '工信部：加强新能源车安全体系建设', '[ 资讯]　　4月21日上午，工业和信息化部装备工业一司以视频会议方式组织召开了《关于进一步加强新能源汽车企业安全体系建设的指导意见》（以下简称《意见》）宣贯会。会上，装备工业一司有关负责同志通报了新能源汽车安全形势及主要问题，并对进一步加强新能源汽车安全管理工作进行了部署。工业和信息化部装备工业发展中心对《意见》有关内容要求进行了解读。行业协会、检测机构、新能源汽车企业及动力电池企业代表作了发言。\r\n\r\n[ 资讯]　　4月21日上午，工业和信息化部装备工业一司以视频会议方式组织召开了《关于进一步加强新能源汽车企业安全体系建设的指导意见》（以下简称《意见》）宣贯会。会上，装备工业一司有关负责同志通报了新能源汽车安全形势及主要问题，并对进一步加强新能源汽车安全管理工作进行了部署。工业和信息化部装备工业发展中心对《意见》有关内容要求进行了解读。行业协会、检测机构、新能源汽车企业及动力电池企业代表作了发言。\r\n\r\n', '2022-01-22 00:06:00', '1');
INSERT INTO `carstore_news` VALUES (6, 'T3出行崔大勇：3年内网约车市占率破30%', '　[ 资讯]  近日，T3出行创立三周年之际，T3出行CEO崔大勇发布了对全体员工的全员信，公布了公司的特色发展之路和面向未来的三大战略——扩规模，提效率，勇创新。\r\n\r\n\r\n\r\n　　扩规模方面，崔大勇提到，要始终聚焦网约车、出租车和自动驾驶三大板块，网约车业务要突破30%的市场占有率，出租车要大力推进网巡一体化进程，提高线上化、数字化转型的渗透率。\r\n\r\n　　提效率方面，T3出行要完成数字化转型工作，彻底实现全业务流程的数字化管理改造，未来还要通过平台化、数字化、智能化大幅提升运营效率，优化运营模式，形成主体业务板块的自我良性发展。\r\n\r\n　　创新方面，T3出行要在车联网、新能源、自动驾驶和产业链技术创新方面大胆突破，勇于实践，逐步形成自主可控的技术研发和运营管理能力，成为万物互联时代的智慧出行引领者。（编译/ 邢月阳）', '2022-06-19 17:03:37', '2');
INSERT INTO `carstore_news` VALUES (7, '现代摩比斯第一季度净利润同比下滑14%', '[ 资讯]  4月22日，据外媒报道，韩国最大的汽车零部件制造商现代摩比斯对外表示，由于芯片短缺和制造成本高，其第一季度净利润同比下降14%。\r\n\r\n\r\n\r\n　　该公司在一份声明中表示，截至3月份的三个月净利润从去年同期的6033.3亿韩元降至5209.8亿韩元（4.19亿美元）。\r\n\r\n　　“由于缺乏半导体零部件导致汽车产量下降，原材料价格上涨推高汽车钢材价格，以及向（现代摩比斯）海外工厂运送汽车零部件的空运费用增加，季度净利润下降，”公司发言人表示。\r\n\r\n　　该公司预计，此类负面因素将继续影响第二季度，俄乌冲突没有缓和的迹象。现代摩比斯是现代汽车集团的核心子公司，现代汽车集团旗下还有现代汽车公司和起亚公司。\r\n\r\n　　该公司第一季度营业利润从一年前的4903.5亿韩元下降21%至3868.7亿韩元。销售额从9.815万亿韩元增长15%至11.308万亿韩元。\r\n\r\n　　在第三季度，该公司从全球汽车制造商那里获得了价值16.6亿美元的零部件订单，但其专属买家现代汽车和起亚除外，实现了今年37亿美元订单目标的44%。现代摩比斯约90%的销售额来自现代汽车和起亚，10%来自其他汽车制造商。（消息来源：韩联社；编译/ 李娜）', '2022-06-19 17:04:04', '2');
INSERT INTO `carstore_news` VALUES (8, '林肯航海家2.7T尊雅版将于4月28日上市', '　[ 资讯]  获悉，林肯航海家2.7T尊雅版将于4月28日上市。该车将作为现售2.7T版本的入门车型，价格比41.88万元的航海家四驱尊耀版更低。\r\n\r\n长安林肯 航海家 2022款 2.7T 四驱尊雅版\r\n\r\n长安林肯 航海家 2022款 2.7T 四驱尊雅版\r\n\r\n　　新车将采用家族式的盾型星辉进气格栅搭配全LED大灯组，给人感觉非常精致。车身侧面来看，一条笔直的腰线贯穿至后轮眉，进一步增添了新车的视觉张力。尺寸方面，国产航海家长宽高分别为4849/1934/1693mm，轴距2850mm。', '2022-06-14 17:04:33', '2');
INSERT INTO `carstore_news` VALUES (9, '含网约车服务 恒大汽车投资成立新公司', '　[ 资讯]  天眼查App显示，恒驰国瑞新能源汽车销售（北京）有限公司于4月20日成立，注册资本1亿人民币，法定代表人为唐琳，经营范围包括新能源汽车整车销售；二手车经销；电动汽车充电基础设施运营；信息系统集成服务；网络预约出租汽车经营服务等。股东信息显示，该公司由恒大新能源汽车投资控股集团有限公司间接全资持股。', '2022-06-29 17:04:59', '2');
INSERT INTO `carstore_news` VALUES (10, '2023年推出 福特首款MEB平台新车假想图', '　　[ 新能源]  日前，有海外媒体绘制了福特全新纯电动车的假想图，该车是首款基于大众MEB平台打造的车型，其定位将在福特Mustang Mach-E之下。根据此前报道，这款新车将于2023年推向市场，并有望在2022年上半年首次亮相。', '2022-06-14 17:05:23', '1');
INSERT INTO `carstore_news` VALUES (11, '现代摩比斯第一季度净利润同比下滑14%', '[ 资讯]  4月22日，据外媒报道，韩国最大的汽车零部件制造商现代摩比斯对外表示，由于芯片短缺和制造成本高，其第一季度净利润同比下降14%。\r\n\r\n\r\n\r\n　　该公司在一份声明中表示，截至3月份的三个月净利润从去年同期的6033.3亿韩元降至5209.8亿韩元（4.19亿美元）。\r\n\r\n　　“由于缺乏半导体零部件导致汽车产量下降，原材料价格上涨推高汽车钢材价格，以及向（现代摩比斯）海外工厂运送汽车零部件的空运费用增加，季度净利润下降，”公司发言人表示。\r\n\r\n　　该公司预计，此类负面因素将继续影响第二季度，俄乌冲突没有缓和的迹象。现代摩比斯是现代汽车集团的核心子公司，现代汽车集团旗下还有现代汽车公司和起亚公司。\r\n\r\n　　该公司第一季度营业利润从一年前的4903.5亿韩元下降21%至3868.7亿韩元。销售额从9.815万亿韩元增长15%至11.308万亿韩元。\r\n\r\n　　在第三季度，该公司从全球汽车制造商那里获得了价值16.6亿美元的零部件订单，但其专属买家现代汽车和起亚除外，实现了今年37亿美元订单目标的44%。现代摩比斯约90%的销售额来自现代汽车和起亚，10%来自其他汽车制造商。（消息来源：韩联社；编译/ 李娜）', '2022-06-09 17:06:05', '1');
INSERT INTO `carstore_news` VALUES (12, '续航510公里 本田e:NS1将于4月26日上市', '　[ 资讯]　　日前，我们从相关渠道获悉，东风本田e:NS1(参数|询价)将于4月26日正式上市。新车定位紧凑型纯电动SUV，CLTC续航里程为420公里和510公里。\r\n\r\n东风本田 本田e:NS1 2022款 次顶配\r\n\r\n　　外观方面，东风本田e:NS1采用了极简的外观设计，前脸仍然能看到前格栅的轮廓，但已经是封闭式的设计，贯穿式的黑色装饰条连接两侧大灯组，前大灯与黑色饰条采用相同配色，整体感更强。新车的本田LOGO也可以随之点亮，成为前脸的焦点。\r\n\r\n东风本田 本田e:NS1 2022款 次顶配\r\n\r\n　　车辆侧面，你可以找到缤智、XR-V的轮廓身影，尤其是后排车门隐藏门把手的设计。车身尺寸方面，新车长宽高分别为4390/1790/1560mm，轴距为2610mm。车尾采用贯穿式尾灯，并与头灯相似，采用黑化的设计，增添了一份运动感。', '2022-06-19 17:06:24', '2');
INSERT INTO `carstore_news` VALUES (13, '皮卡车技术标准实施在即 长城炮以品类创新助推行业开新局', '5月1日，《多用途货车通用技术条件》将正式实施，明确皮卡多用途属性，推动行业开创皮卡市场全新局面。而4月1日， C6驾照也正式上线，让具备牵引资质的皮卡拖拽房车上路有法可依。多项利好政策接连施行，这意味着，坚持品类创新、引领皮卡乘用化浪潮，且旗下多款车型拥有拖挂资格的长城炮，将迎广阔发展机遇。\r\n\r\n\r\n新规强调皮卡多用途乘用化 长城炮优势凸显\r\n\r\n作为国内第一部健全、规范、科学的皮卡车技术标准，《多用途货车通用技术条件》第一次对皮卡车型进行准确、全面的定义，并在技术层面承认皮卡以“多用途货车”的身份独立存在，同时明确了皮卡的尺寸、载重、座椅间距、拖拽标定等技术标准，对皮卡在安全、节能、环保、舒适性等方面做出规范和要求，更强调皮卡的乘用化和多用途属性。\r\n\r\n5月1日，《多用途货车通用技术条件》将正式实施，明确皮卡多用途属性，推动行业开创皮卡市场全新局面。而4月1日， C6驾照也正式上线，让具备牵引资质的皮卡拖拽房车上路有法可依。多项利好政策接连施行，这意味着，坚持品类创新、引领皮卡乘用化浪潮，且旗下多款车型拥有拖挂资格的长城炮，将迎广阔发展机遇。\r\n\r\n\r\n新规强调皮卡多用途乘用化 长城炮优势凸显\r\n\r\n作为国内第一部健全、规范、科学的皮卡车技术标准，《多用途货车通用技术条件》第一次对皮卡车型进行准确、全面的定义，并在技术层面承认皮卡以“多用途货车”的身份独立存在，同时明确了皮卡的尺寸、载重、座椅间距、拖拽标定等技术标准，对皮卡在安全、节能、环保、舒适性等方面做出规范和要求，更强调皮卡的乘用化和多用途属性。\r\n\r\n', '2022-06-07 17:07:00', '1');

-- ----------------------------
-- Table structure for carstore_product
-- ----------------------------
DROP TABLE IF EXISTS `carstore_product`;
CREATE TABLE `carstore_product`  (
  `cp_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '商品id，同时也是商品编号',
  `cp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品标题',
  `sell_point` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品卖点',
  `cp_price` bigint(0) NOT NULL COMMENT '商品价格，单位为：分',
  `cp_stock` int(0) NOT NULL COMMENT '库存数量',
  `cp_file_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `cpc_id` bigint(0) NOT NULL COMMENT '所属类目，叶子类目',
  `status` tinyint(0) NOT NULL DEFAULT 1 COMMENT '商品状态，1-正常，2-下架，3-删除',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `cp_description` varchar(9000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpc_child_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cp_id`) USING BTREE,
  INDEX `cid`(`cpc_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `updated`(`updated`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carstore_product
-- ----------------------------
INSERT INTO `carstore_product` VALUES (1, 'Hondacbr1000rr', 'zzzzzzzzzz', 480000, 20, '2022-06-22160022.png', 2, 1, '2022-05-10 07:38:32', '2022-06-24 07:38:36', '公升级跑车', 1);
INSERT INTO `carstore_product` VALUES (2, '奔驰S400L商务型', 'mmmmmmmmmm', 936800, 6, '1400x0_1_q95_autohomecar__ChxknGJEbdGAUK7YAB8XJ0Z6vpg901.jpg', 2, 1, '2022-06-30 07:52:43', '2022-06-22 07:52:50', '前置后驱9挡手自一体', 2);
INSERT INTO `carstore_product` VALUES (3, '保时捷Panamera', 'bbbbbbbbbbb', 2476000, 3, '1400x0_1_q95_autohomecar__ChwFj2JnZ52AQelKACqysamSFxI351.jpg', 3, 1, '2022-06-21 07:55:26', '2022-06-21 07:55:28', '前置后驱八档湿式双离合', 3);
INSERT INTO `carstore_product` VALUES (4, '梅赛德斯AMG-GT50', 'mmmmmmmmm', 3680000, 1, '1400x0_1_q95_autohomecar__ChwFkmKRcF-AJHPyABkzfz8-bN4983.jpg', 2, 1, '2022-06-21 07:59:04', '2022-06-21 07:59:07', '前置后驱9档手自一体', 4);
INSERT INTO `carstore_product` VALUES (5, '雷克萨斯ES', 'sssssss', 488900, 7, '1400x0_1_q95_autohomecar__ChsFVmEoZFyAfA7_ABo3k6G8H2E323.jpg', 5, 1, '2022-06-21 08:02:06', '2022-06-21 08:02:08', '前置后驱CVT无极变速', 5);
INSERT INTO `carstore_product` VALUES (6, '福特野马Mustang', 'ffff', 401800, 5, '1400x0_1_q95_autohomecar__ChsElWDoSlWAESRaACQdsSr_S1I935.jpg', 6, 1, '2022-06-21 08:04:15', '2022-06-21 08:04:16', '前置后驱10挡手自一体', 6);
INSERT INTO `carstore_product` VALUES (7, '阿斯顿马丁-v8 Vantage', 'aaaaaaaa', 2168000, 1, '1400x0_1_q95_autohomecar__ChwFj2KdyU6AAO1-ACMWq0PWyZA968.jpg', 6, 1, '2022-06-21 08:06:30', '2022-06-21 08:06:34', '前置后驱8挡手自一体', 7);
INSERT INTO `carstore_product` VALUES (8, '保时捷911', 'bbbbbbbb', 2480000, 1, '1400x0_1_q95_autohomecar__ChxkqWJlXymAL1xBAB-F_gXEeKk155.jpg', 6, 1, '2022-06-21 08:08:01', '2022-06-21 08:08:03', '后置后驱8挡湿式双离合', 8);

-- ----------------------------
-- Table structure for carstore_product_category
-- ----------------------------
DROP TABLE IF EXISTS `carstore_product_category`;
CREATE TABLE `carstore_product_category`  (
  `cpc_id` decimal(10, 0) NOT NULL,
  `cpc_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpc_parent_id` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`cpc_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carstore_product_category
-- ----------------------------
INSERT INTO `carstore_product_category` VALUES (1, 'cbr1000rr', 1);
INSERT INTO `carstore_product_category` VALUES (2, '奔驰S400L商务型', 2);
INSERT INTO `carstore_product_category` VALUES (3, '保时捷Panamera', 3);
INSERT INTO `carstore_product_category` VALUES (4, '梅赛德斯AMG-GT50', 4);
INSERT INTO `carstore_product_category` VALUES (5, '雷克萨斯ES', 5);
INSERT INTO `carstore_product_category` VALUES (6, '福特野马Mustang', 6);
INSERT INTO `carstore_product_category` VALUES (7, '阿斯顿马丁-v8 Vantage', 7);
INSERT INTO `carstore_product_category` VALUES (8, '保时捷911', 8);

-- ----------------------------
-- Table structure for carstore_user
-- ----------------------------
DROP TABLE IF EXISTS `carstore_user`;
CREATE TABLE `carstore_user`  (
  `cu_user_id` int(0) NOT NULL AUTO_INCREMENT,
  `cu_login_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cu_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cu_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cu_sex` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cu_birthday` datetime(0) NULL DEFAULT NULL,
  `cu_identity_code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cu_email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cu_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cu_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cu_status` decimal(6, 0) NOT NULL COMMENT '0表示未激活 1 表示账户正常 2 账户锁定 3 账户注销',
  `cu_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cu_role` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 表示管理员  2 普通用户',
  PRIMARY KEY (`cu_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carstore_user
-- ----------------------------
INSERT INTO `carstore_user` VALUES (1, '123456', '555', '123456', '男', '1994-01-10 00:03:00', '410100202011309999', 'm988@outlook.com', '10086', 'zzzzzzzzzz', 1, '', '1');

SET FOREIGN_KEY_CHECKS = 1;
