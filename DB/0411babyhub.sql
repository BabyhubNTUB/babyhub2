/*
 Navicat PostgreSQL Data Transfer

 Source Server         : babyhub
 Source Server Type    : PostgreSQL
 Source Server Version : 110002
 Source Host           : ec2-107-20-177-161.compute-1.amazonaws.com:5432
 Source Catalog        : d760avjlss7si7
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110002
 File Encoding         : 65001

 Date: 11/04/2019 23:28:54
*/


-- ----------------------------
-- Sequence structure for hub
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hub";
CREATE SEQUENCE "public"."hub" 
INCREMENT 1
MINVALUE  1
MAXVALUE 999999999999
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t0001member
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t0001member";
CREATE SEQUENCE "public"."t0001member" 
INCREMENT 1
MINVALUE  1
MAXVALUE 999999999999
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t01member_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t01member_id";
CREATE SEQUENCE "public"."t01member_id" 
INCREMENT 1
MINVALUE  1
MAXVALUE 999999999999
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t02baby_babyno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t02baby_babyno";
CREATE SEQUENCE "public"."t02baby_babyno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t03growingrecord_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t03growingrecord_serno";
CREATE SEQUENCE "public"."t03growingrecord_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t04forum_forumno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t04forum_forumno";
CREATE SEQUENCE "public"."t04forum_forumno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t05forumcomment_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t05forumcomment_serno";
CREATE SEQUENCE "public"."t05forumcomment_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t06pregnancyknowledge_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t06pregnancyknowledge_serno";
CREATE SEQUENCE "public"."t06pregnancyknowledge_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t07vaccination_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t07vaccination_serno";
CREATE SEQUENCE "public"."t07vaccination_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t08diary_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t08diary_serno";
CREATE SEQUENCE "public"."t08diary_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t09milestonedone_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t09milestonedone_serno";
CREATE SEQUENCE "public"."t09milestonedone_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t10education_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t10education_serno";
CREATE SEQUENCE "public"."t10education_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t11forumlike_serno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t11forumlike_serno";
CREATE SEQUENCE "public"."t11forumlike_serno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t13vaccine_vacno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t13vaccine_vacno";
CREATE SEQUENCE "public"."t13vaccine_vacno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t14milestone_msno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t14milestone_msno";
CREATE SEQUENCE "public"."t14milestone_msno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t15forumtype_typeno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t15forumtype_typeno";
CREATE SEQUENCE "public"."t15forumtype_typeno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t16hospital_hospitalno
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t16hospital_hospitalno";
CREATE SEQUENCE "public"."t16hospital_hospitalno" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for testincrement
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."testincrement";
CREATE SEQUENCE "public"."testincrement" 
INCREMENT 1
MINVALUE  1
MAXVALUE 999999999999
START 1
CACHE 1;

-- ----------------------------
-- Table structure for t01member
-- ----------------------------
DROP TABLE IF EXISTS "public"."t01member";
CREATE TABLE "public"."t01member" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL DEFAULT nextval('t01member_id'::regclass),
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "appellation" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "lineid" varchar(50) COLLATE "pg_catalog"."default",
  "code" char(6) COLLATE "pg_catalog"."default",
  "codetime" time(0),
  "photo" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t01member"."id" IS 'mail';
COMMENT ON COLUMN "public"."t01member"."username" IS '可用綽號';
COMMENT ON COLUMN "public"."t01member"."password" IS '加密';
COMMENT ON COLUMN "public"."t01member"."appellation" IS '‘爸爸’ ‘媽媽’';

-- ----------------------------
-- Records of t01member
-- ----------------------------
INSERT INTO "public"."t01member" VALUES ('10456005@ntub.edu.tw', '楊堺儱', '0987654321', '爸爸', NULL, NULL, NULL, NULL);
INSERT INTO "public"."t01member" VALUES ('10456023@ntub.edu.tw', '鄭心慈', '0923847372', '媽媽', NULL, NULL, NULL, NULL);
INSERT INTO "public"."t01member" VALUES ('10456048@ntub.edu.tw', '林++', '0983743732', '爸爸', NULL, NULL, NULL, NULL);
INSERT INTO "public"."t01member" VALUES ('10456004@ntub.edu.tw', '劉安', '0123456789', '爸爸', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t02baby
-- ----------------------------
DROP TABLE IF EXISTS "public"."t02baby";
CREATE TABLE "public"."t02baby" (
  "babyno" int8 NOT NULL DEFAULT nextval('t02baby_babyno'::regclass),
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "birthday" date NOT NULL,
  "gender" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "photo" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t02baby"."babyno" IS 'AI';
COMMENT ON COLUMN "public"."t02baby"."id" IS 'T01';
COMMENT ON COLUMN "public"."t02baby"."name" IS '可用綽號';
COMMENT ON COLUMN "public"."t02baby"."gender" IS '‘男孩’ ‘女孩’';

-- ----------------------------
-- Records of t02baby
-- ----------------------------
INSERT INTO "public"."t02baby" VALUES (2, '10456005@ntub.edu.tw', 'JJ', '2018-09-27', '男孩', NULL);
INSERT INTO "public"."t02baby" VALUES (3, '10456023@ntub.edu.tw', '嬌嬌', '2018-10-30', '女孩', NULL);
INSERT INTO "public"."t02baby" VALUES (4, '10456048@ntub.edu.tw', '羊佳', '2018-10-31', '女孩', NULL);
INSERT INTO "public"."t02baby" VALUES (1, '10456004@ntub.edu.tw', '小安', '2018-09-26', '男孩', NULL);

-- ----------------------------
-- Table structure for t03growingrecord
-- ----------------------------
DROP TABLE IF EXISTS "public"."t03growingrecord";
CREATE TABLE "public"."t03growingrecord" (
  "serno" int8 NOT NULL DEFAULT nextval('t03growingrecord_serno'::regclass),
  "babyno" int8 NOT NULL,
  "recorddatetime" time(0) NOT NULL,
  "height" float8,
  "weight" float8,
  "drinkmilk" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."t03growingrecord"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t03growingrecord"."babyno" IS 'T02';
COMMENT ON COLUMN "public"."t03growingrecord"."height" IS '50.34cm';
COMMENT ON COLUMN "public"."t03growingrecord"."weight" IS '7.05kg';
COMMENT ON COLUMN "public"."t03growingrecord"."drinkmilk" IS 'c.c.';

-- ----------------------------
-- Records of t03growingrecord
-- ----------------------------
INSERT INTO "public"."t03growingrecord" VALUES (2, 2, '11:57:11', 52, 3600, 600);
INSERT INTO "public"."t03growingrecord" VALUES (3, 3, '11:57:55', 60, 5000, 1000);
INSERT INTO "public"."t03growingrecord" VALUES (4, 4, '11:58:03', 56, 4300, 700);
INSERT INTO "public"."t03growingrecord" VALUES (1, 1, '11:54:55', 55, 4000, 500);

-- ----------------------------
-- Table structure for t04forum
-- ----------------------------
DROP TABLE IF EXISTS "public"."t04forum";
CREATE TABLE "public"."t04forum" (
  "forumno" int8 NOT NULL DEFAULT nextval('t04forum_forumno'::regclass),
  "typeno" int4 NOT NULL,
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "forumname" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "forumdatetime" time(6) NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t04forum"."forumno" IS 'AI';
COMMENT ON COLUMN "public"."t04forum"."typeno" IS 'T15';
COMMENT ON COLUMN "public"."t04forum"."id" IS 'T01';
COMMENT ON COLUMN "public"."t04forum"."content" IS 'rich editor';

-- ----------------------------
-- Records of t04forum
-- ----------------------------
INSERT INTO "public"."t04forum" VALUES (1, 1, '10456004@ntub.edu.tw', '', '11:59:00', '如果​​寶寶因吃奶後腹部脹氣，放下平躺時會打嗝。 這是因為奶瓶開口小，嬰兒在吸奶的時候，因用力吸而吞入太多的空氣，造成了脹氣現象，因此家長可以在寶寶喝完奶之後，多抱一會兒，輕輕拍寶寶背部，或是輕柔按摩腹部來幫助排氣，可以預防寶寶打嗝及溢奶。 2. 試著少量多餐的餵食法，或餵食後抱起寶寶拍背以加強排氣。');
INSERT INTO "public"."t04forum" VALUES (2, 6, '10456005@ntub.edu.tw', '', '12:15:43', '嬰兒的龜頭大多是被包皮所包覆（生理性包莖），如果可以看得到龜頭，可能需要考慮是不是尿道下裂等先天性的異常，在一出生身體檢查時就可以發現。一般的包莖可分為兩大種類，新生兒大約100%都是真性包莖。');
INSERT INTO "public"."t04forum" VALUES (3, 7, '10456023@ntub.edu.tw', '', '12:16:53', '女生的尿道短，如果大便後清潔不完全，很容易讓細菌感染到尿道、膀胱、或腎臟中。但是剛出生的女寶寶皮膚細緻，究竟要怎麼清洗女寶寶的會陰部才好呢？恩主公醫院兒科主治醫師兼加護病房主任許登欽，在診間常碰到女寶寶因為清潔不當，造成破皮、長疹子，甚至尿道感染。他針對不同年齡層的女寶寶，整理出清潔會陰部的要領。');
INSERT INTO "public"."t04forum" VALUES (4, 9, '10456048@ntub.edu.tw', '', '12:18:18', '偉大的媽媽辛苦生完之後,在醫院的前三天還算是天堂,寳寳有護士們幫忙打理和照顧,

寳寳餓了會幫忙推過來餵,還沒母奶的媽咪也沒關係,護士會幫忙餵配方奶。

若是寳寳哭了,護士會在育嬰室幫忙安撫寳寳,然後每天還會幫寳寳洗澡做臍帶護理~

如果媽媽乳線塞住了,還可以詢問護士如何解決,護士還會教你按摩跟其他衛教知識

但這所有一切的一切,等出院後,通通要自己面對了');

-- ----------------------------
-- Table structure for t05forumcomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t05forumcomment";
CREATE TABLE "public"."t05forumcomment" (
  "serno" int8 NOT NULL DEFAULT nextval('t05forumcomment_serno'::regclass),
  "forumno" int8 NOT NULL,
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "comdatetime" time(6) NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t05forumcomment"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t05forumcomment"."forumno" IS 'T04';
COMMENT ON COLUMN "public"."t05forumcomment"."id" IS 'T01';

-- ----------------------------
-- Records of t05forumcomment
-- ----------------------------
INSERT INTO "public"."t05forumcomment" VALUES (1, 1, '10456004@ntub.edu.tw', '12:05:00', '我覺得這篇很讚');
INSERT INTO "public"."t05forumcomment" VALUES (2, 2, '10456004@ntub.edu.tw', '15:15:00', '謝謝大大無私地分享');
INSERT INTO "public"."t05forumcomment" VALUES (3, 2, '10456005@ntub.edu.tw', '18:05:00', '當媽媽真的很辛苦');
INSERT INTO "public"."t05forumcomment" VALUES (4, 3, '10456023@ntub.edu.tw', '20:05:00', '這我認同');
INSERT INTO "public"."t05forumcomment" VALUES (5, 3, '10456048@ntub.edu.tw', '00:05:00', '哈哈哈哈哈哈');

-- ----------------------------
-- Table structure for t06pregnancyknowledge
-- ----------------------------
DROP TABLE IF EXISTS "public"."t06pregnancyknowledge";
CREATE TABLE "public"."t06pregnancyknowledge" (
  "serno" int8 NOT NULL DEFAULT nextval('t06pregnancyknowledge_serno'::regclass),
  "managerno" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "source" varchar(5000) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t06pregnancyknowledge"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t06pregnancyknowledge"."managerno" IS 'T12';

-- ----------------------------
-- Records of t06pregnancyknowledge
-- ----------------------------
INSERT INTO "public"."t06pregnancyknowledge" VALUES (1, 'J0903', '大唱喜歡的歌', '唱歌會使整個人放鬆。哼歌或是到卡拉OK唱歌都能改善心情，消除緊張。媽媽放鬆，寶寶自然會樂得自在了。', NULL);
INSERT INTO "public"."t06pregnancyknowledge" VALUES (2, 'H1022', '能放鬆的運動', '散步是最能讓人放鬆的運動。在天氣好，空氣清新的時候散步不只是一種享受，還能讓肚裡的寶寶享受太陽浴和輕微震盪帶來的按摩效果，他會和你一樣心情愉快的！', NULL);
INSERT INTO "public"."t06pregnancyknowledge" VALUES (3, 'V0124', '自己喜歡的事', '懷孕期間要經常投自己所好，做自己喜歡做的事也是最好的放鬆方式，媽媽心情愉悅，通過胎盤和臍帶輸送給胎兒的血液和氧氣就會格外地充足，寶寶也會感應得到。', NULL);
INSERT INTO "public"."t06pregnancyknowledge" VALUES (4, 'L0816', '讀書給寶寶聽', '和胎兒的交流非常有趣，唱唱歌、說說話、讀讀圖畫書等。按照發音順序一個字一個字地讀給他聽，把又有文字又有圖畫的頁面指給他看，跟肚裡的寶寶進行交流。媽媽的聲音給肚裡寶寶帶來的聲音刺激能使胎兒心情舒暢。', NULL);
INSERT INTO "public"."t06pregnancyknowledge" VALUES (5, 'L0816', '保護自己牙齒', '懷孕期間受激素分泌的影響，牙齦充血腫脹，容易引發牙周炎等。這些口腔疾患會引發牙齦出血、牙痛和發熱等症狀，影響孕婦進食及營養攝入，從而影響胎兒生長發育。', NULL);

-- ----------------------------
-- Table structure for t07vaccination
-- ----------------------------
DROP TABLE IF EXISTS "public"."t07vaccination";
CREATE TABLE "public"."t07vaccination" (
  "serno" int8 NOT NULL DEFAULT nextval('t07vaccination_serno'::regclass),
  "babyno" int8 NOT NULL,
  "vacno" int8 NOT NULL,
  "hospitalno" int8,
  "vaccination" char(3) COLLATE "pg_catalog"."default" NOT NULL,
  "vacdate" date
)
;
COMMENT ON COLUMN "public"."t07vaccination"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t07vaccination"."babyno" IS 'T02';
COMMENT ON COLUMN "public"."t07vaccination"."vacno" IS 'T13';
COMMENT ON COLUMN "public"."t07vaccination"."hospitalno" IS 'T16';
COMMENT ON COLUMN "public"."t07vaccination"."vaccination" IS '‘已接種’ ‘未接種’';

-- ----------------------------
-- Records of t07vaccination
-- ----------------------------
INSERT INTO "public"."t07vaccination" VALUES (1, 1, 1, NULL, '已接種', '2018-09-26');
INSERT INTO "public"."t07vaccination" VALUES (2, 1, 2, NULL, '已接種', '2018-10-26');
INSERT INTO "public"."t07vaccination" VALUES (3, 1, 3, NULL, '已接種', '2018-10-27');
INSERT INTO "public"."t07vaccination" VALUES (4, 1, 4, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (5, 1, 5, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (6, 1, 6, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (7, 1, 7, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (8, 1, 8, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (9, 1, 9, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (10, 1, 10, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (11, 1, 11, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (12, 1, 12, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (13, 1, 13, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (14, 1, 14, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (15, 1, 15, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (16, 1, 16, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (17, 1, 17, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (18, 1, 18, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (19, 1, 19, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (20, 1, 20, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (21, 1, 21, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (22, 2, 1, NULL, '已接種', '2018-09-27');
INSERT INTO "public"."t07vaccination" VALUES (23, 2, 2, NULL, '已接種', '2018-10-27');
INSERT INTO "public"."t07vaccination" VALUES (24, 2, 3, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (25, 2, 4, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (26, 2, 5, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (27, 2, 6, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (28, 2, 7, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (29, 2, 8, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (30, 2, 9, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (31, 2, 10, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (32, 2, 11, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (33, 2, 12, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (34, 2, 13, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (35, 2, 14, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (36, 2, 15, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (37, 2, 16, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (38, 2, 17, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (39, 2, 18, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (40, 2, 19, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (41, 2, 20, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (42, 2, 21, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (43, 3, 1, NULL, '已接種', '2018-10-30');
INSERT INTO "public"."t07vaccination" VALUES (44, 3, 2, NULL, '已接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (45, 3, 3, NULL, '已接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (46, 3, 4, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (47, 3, 5, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (48, 3, 6, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (49, 3, 7, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (50, 3, 8, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (51, 3, 9, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (52, 3, 10, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (53, 3, 11, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (54, 3, 12, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (55, 3, 13, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (56, 3, 14, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (57, 3, 15, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (58, 3, 16, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (59, 3, 17, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (60, 3, 18, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (61, 3, 19, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (62, 3, 20, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (63, 3, 21, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (64, 4, 1, NULL, '已接種', '2018-10-31');
INSERT INTO "public"."t07vaccination" VALUES (65, 4, 2, NULL, '已接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (66, 4, 3, NULL, '已接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (67, 4, 4, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (68, 4, 5, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (69, 4, 6, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (70, 4, 7, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (71, 4, 8, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (72, 4, 9, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (73, 4, 10, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (74, 4, 11, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (75, 4, 12, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (76, 4, 13, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (77, 4, 14, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (78, 4, 15, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (79, 4, 16, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (80, 4, 17, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (81, 4, 18, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (82, 4, 19, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (83, 4, 20, NULL, '未接種', NULL);
INSERT INTO "public"."t07vaccination" VALUES (84, 4, 21, NULL, '未接種', NULL);

-- ----------------------------
-- Table structure for t08diary
-- ----------------------------
DROP TABLE IF EXISTS "public"."t08diary";
CREATE TABLE "public"."t08diary" (
  "serno" int8 NOT NULL DEFAULT nextval('t08diary_serno'::regclass),
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "diarydate" date NOT NULL,
  "diary" text COLLATE "pg_catalog"."default" NOT NULL,
  "dvideo" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t08diary"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t08diary"."id" IS 'T01';
COMMENT ON COLUMN "public"."t08diary"."diary" IS 'rich editor';

-- ----------------------------
-- Records of t08diary
-- ----------------------------
INSERT INTO "public"."t08diary" VALUES (1, '10456004@ntub.edu.tw', '2018-10-26', '今天寶寶喝了很多的奶，大概有平常的10倍吧。', NULL);
INSERT INTO "public"."t08diary" VALUES (2, '10456004@ntub.edu.tw', '2018-10-27', '今天寶寶大便很臭。', NULL);
INSERT INTO "public"."t08diary" VALUES (3, '10456005@ntub.edu.tw', '2018-10-26', '今天寶寶亂哭，所以我打了他。', NULL);
INSERT INTO "public"."t08diary" VALUES (4, '10456023@ntub.edu.tw', '2018-10-31', '乖乖的。', NULL);
INSERT INTO "public"."t08diary" VALUES (5, '10456004@ntub.edu.tw', '2018-10-31', '寶寶發出像爸爸的聲音。', NULL);

-- ----------------------------
-- Table structure for t09milestonedone
-- ----------------------------
DROP TABLE IF EXISTS "public"."t09milestonedone";
CREATE TABLE "public"."t09milestonedone" (
  "serno" int8 NOT NULL DEFAULT nextval('t09milestonedone_serno'::regclass),
  "babyno" int8 NOT NULL,
  "msno" int8 NOT NULL,
  "reach" char(3) COLLATE "pg_catalog"."default" NOT NULL,
  "reachdate" date
)
;
COMMENT ON COLUMN "public"."t09milestonedone"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t09milestonedone"."babyno" IS 'T02';
COMMENT ON COLUMN "public"."t09milestonedone"."msno" IS 'T14';
COMMENT ON COLUMN "public"."t09milestonedone"."reach" IS '‘達成’ ‘未達成’';

-- ----------------------------
-- Records of t09milestonedone
-- ----------------------------
INSERT INTO "public"."t09milestonedone" VALUES (1, 1, 1, '達成 ', '2018-10-10');
INSERT INTO "public"."t09milestonedone" VALUES (2, 1, 2, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (3, 1, 3, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (4, 1, 4, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (5, 1, 5, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (6, 1, 6, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (7, 1, 7, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (8, 1, 8, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (9, 1, 9, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (10, 2, 1, '達成 ', '2018-10-17');
INSERT INTO "public"."t09milestonedone" VALUES (11, 2, 2, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (12, 2, 3, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (13, 2, 4, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (14, 2, 5, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (15, 2, 6, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (16, 2, 7, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (17, 2, 8, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (18, 2, 9, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (19, 3, 1, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (20, 3, 2, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (21, 3, 3, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (22, 3, 4, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (23, 3, 5, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (24, 3, 6, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (25, 3, 7, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (26, 3, 8, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (27, 3, 9, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (28, 4, 1, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (29, 4, 2, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (30, 4, 3, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (31, 4, 4, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (32, 4, 5, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (33, 4, 6, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (34, 4, 7, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (35, 4, 8, '未達成', NULL);
INSERT INTO "public"."t09milestonedone" VALUES (36, 4, 9, '未達成', NULL);

-- ----------------------------
-- Table structure for t10education
-- ----------------------------
DROP TABLE IF EXISTS "public"."t10education";
CREATE TABLE "public"."t10education" (
  "serno" int8 NOT NULL DEFAULT nextval('t10education_serno'::regclass),
  "managerno" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "source" varchar(5000) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t10education"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t10education"."managerno" IS 'T12';

-- ----------------------------
-- Records of t10education
-- ----------------------------
INSERT INTO "public"."t10education" VALUES (1, 'J0903', '想教育出成功的孩子？那就千萬別對他們做這 9 件事', '1.不鼓勵小孩獨立
根據美國範德堡大學在 1997 年做的一項研究顯示，父母若在小孩的成長過程中不斷的透過心理層面的方式掌控小孩，將有可能導致小孩在未來產生性格的偏差，像是較沒有自信心以及自力更生的能力。此外，青春期研究期刊（Journal of Research on Adolescence）也指出，鼓勵小孩獨立將可以加強他們處理衝突的能力，並且提升人際關係，更能抵抗同儕壓力。2.美國匹茲堡大學在 2013 年做的一項研究指出，長期嚴厲的言語教導方式有可能會對小孩的未來發展有害，小孩將有可能出現一些行為上的偏差或是憂鬱傾向。但這篇研究的作者也表示：「這對父母來說是非常困難的決定，因為這是一體兩面的，小孩若出現不好的行為，父母當然會想以嚴厲的言語教導方式教訓他，但這樣的管教方式卻又會導致他們再度出現類似的行為。」3.人們口中的「直升機家長」
參與度高的父母固然是好，但若成為想全面掌控小孩的一舉一動的「直升機家長（helicopter parents）」就會對小孩產生負面的影響，像是焦慮、憂慮等。在研究近 300 名大學生後，研究學者也指出有直升機家長的小孩比較會對人生感到不滿。此外，直升機家長比較不願意接受新的新法，自我感覺也比較良好，而且還可能把吃止痛藥當作一種消遣。4.讓小孩自己決定上床睡覺的時間 根據英國的研究指出，不規律的睡覺時間與不好的行為之間是有連結的，像是機能亢進、行為偏差、同儕相處困難以及情緒管理困難。更重要的是，不規律的睡覺時間更可能會影響小孩大腦的發展，這對於他們來說絕對是非常重要的。而研究學者 Yvonne Kelly 也表示，若他們在這成長的關鍵時刻沒有正常的睡眠，將可能會影響到他們未來的身體健康發展。5.讓他們從小就開始看電視 2007 年的研究指出，若讓小孩在 3 歲前就已養成重度觀看電視的習慣，將會影響到他們學習字彙和參與的能力，讓他們注意力無法集中，更可能讓他們在進入幼稚園的時候就學會如何霸凌其他同學。但也有研究表示若讓 2 歲半到 5 歲的小孩看《芝麻街》或是《小博士邦尼》的話的確是有益的。6.作風獨裁的父母
一般來說，父母大致可以分為下列 3 種：寬容、權威、獨裁，其中最可怕也最糟的就是獨裁父母。他們對小孩的要求甚高，也不願意與小孩溝通，舉例來說就像是那種不管怎麼樣，都要求小孩每科都一定要拿 100 分的父母。而根據研究學者在 2005 年的研究，有獨裁父母的小孩的表現會較為拘謹，但他也表示，這在不同文化與國家之間可能也會有不同的發展。7.小孩在旁邊時，常使用手機 智慧型手機當道，就連父母也無法抵抗它的魅力，但此舉卻有可能影響小孩的未來發展。許多研究都指出，時常分心的父母將有可能會對小孩的發展有著負面的影響，也有很多急診室的醫生表示，他們曾看過很多小孩是因為父母分心才受傷送來醫院的，而手機就很有可能是最大的罪魁禍首。8.與小孩之間的互動冷漠、有距離感 參與小孩的生活絕對有好無壞，不過要如何適時的控制對於家長來說也是一項難題，但讓小孩感到有距離感也絕對不是件好事。研究指出營造距離感的家長將有可能導致小孩的安全感下降，還有可能讓他們在青春期時出現一些情緒管理上的困難，更可能出現「社交退縮（social withdrawl）」的行為。9.用打的方式懲罰小孩
在對 16 萬名小孩做了長達 50 年的研究後，美國德州大學奧斯汀分校的研究團隊在 2016 年發表他們的研究成果，證實用打的方式育兒將有可能導致小孩出現心理健康層面與認知方面的問題。此外，也有研究顯示這些被打的小孩在長大後較愛搗亂，也可能會較有侵略性，出現偏差行為等。', 'http://technews.tw/2016/05/29/science-says-parents-of-unsuccessful-kids-could-have-these-9-things-in-common/');
INSERT INTO "public"."t10education" VALUES (2, 'H1022', '3歲、7歲、10歲決定孩子一生的競爭力', '人類在出生之後，大腦有一段腦神經細胞增加的時期，之後則會減少不必要的腦神經細胞，發展腦神經迴路。也就是說，兒童的腦部處於正在發育中的過程。從0歲開始大概三年之內，腦神經細胞不斷增生。腦神經細胞數量在3歲~4歲時達到高峰，之後到7歲左右會減少一些，這個現象非常奇妙，有些腦神經細胞增加之後，到了這個階段卻又死去，據說是因為在3歲~7歲這段時間，為了建立大腦資訊傳導迴路，所以會消除妨礙迴路網形成的細胞。像這種腦神經細胞減少的現象，也稱為「修剪」。修剪現象告一段落後，腦神經細胞的增減也趨於平緩。7歲~10歲之後，大腦進入腦神經細胞間的資訊傳導迴路的發達期，才逐漸成為成人大腦。從腦科學的角度來看，孩子的大腦在10歲以後就「定型」了，所以3歲、7歲、10歲不但是腦部發展的轉捩點，更是強化潛能的黃金期。一旦錯過孩子大腦發展的關鍵期，就算日後上再多的才藝班也補不回來！想要讓孩子變得更優秀，幫助孩子贏在起跑點上，就要好好把握這三個黃金時期，從小鍛鍊孩子的大腦潛能！', 'https://www.businessweekly.com.tw/article.aspx?id=2134&type=Blog');
INSERT INTO "public"."t10education" VALUES (3, 'V0124', '孩子的事交給他自己來！德式全方位優質小孩養成之道', '1. 養成一個快樂小孩是最重要的事
什麼樣的能力對於學齡前幼兒最為重要？是孩子的外語能力（如：從小開始學習英文）養成？還是各項才藝的培養？（如：鋼琴、繪畫、舞蹈……等）答案以上皆非，對於學齡前幼兒來說身心健康發展健全，才是他們現階段最應該被關注的一切。莊琳君表示在孩子尚未進入正規教育就讀前，確保他們是否有足夠的心理強度成為一個獨當一面的人，這對任何一個德國家長來說才是最重要的事。 相較於德國幼兒教育對這一塊的極為重視，在台灣我們對於孩子的身心健康發展，雖然不到毫無關注的程度，但重視程度卻不及才藝能力的追求，甚至很容易就忽略掉其對幼兒的重要影響性。莊琳君更進一步指出幼兒身心健康發展之所以重要，並不只關注於孩子的身體發展是否健全，它更攸關幼兒如何面對自己的情緒，以及建立良好的人際關係互動，學習如何與他人協調溝通，甚至是面對挫折時的態度……等，這些對幼兒來說除了是重要的能力培養，它們更在孩子未來的人生中扮演著舉足輕重的地位。 
2. 大膽嘗試才能夠學到真正的獨立
「讓一個年僅1～2 歲的孩子搖搖晃晃地拿起水瓶，試圖將瓶子裡頭的水倒進杯子裡面。」這是德國人培養孩子自理能力的日常練習。但這一切卻讓剛加入德國幼兒園工作的莊琳君嚇壞了，因為她擔心倘若孩子沒拿穩瓶子，裡頭的水不小心灑出來的話該如何是好呢？不過在一旁的德籍老師卻一派輕鬆地告訴她：「那就讓它灑出來吧！」然而不到一會兒的時間，孩子便順利地將水瓶裡的水倒進杯子裡，並且帶著滿是成就的神情拿起裝滿水的杯子喝水。 這一次的事件為莊琳君帶來了一些啟示，她表示在尚未進入德國的教育現場前，總覺得書中的教育理念皆是難以實踐的理想，但自己卻在德國見識到教育的一切可能性。也許我們都太習慣以成人的思考方式，評估或低估孩子能夠達到的可能，甚至擔憂孩子可能無法勝任哪些挑戰。只讓孩子在預設好的練習情境中，試著做對或完成一件事情（如：午餐時間到讓孩子乖乖坐在位子上吃飯），但卻忽略要讓孩子真正的獨立自主，並非是讓他們待在成人可預期的範圍內學習，而是要給足勇氣與時間放手讓孩子在生活中冒險嘗試，相信他們能夠面對或接受不同的挑戰與挫折，如此才會是真正的獨立自主，而非活在他人所設定的依賴屏障之中。 
3. 懂得做選擇比乖乖聽話來得重要
人生就是經由不斷地選擇而來，因此學會替自己做決定很重要，而它更是每一個人都必須具備的能力。對此德國早在孩子進入學齡前階段時，就已經開始讓他們練習為自己做決定。莊琳君表示台灣有不少的幼兒園，在新學期開始前都會給予家長一個學期計畫表，裡頭清楚說明了整個學期中所預定的課程及進度規劃，這樣的學習內容和進度制訂多半是校方和老師主導。但德國的多數幼兒園基本上並沒有教學進度這一件事，孩子可以自行決定學習內容和進度，每天孩子都在不斷的練習如何替自己做決定。比方說幼兒園每日會有15～30分鐘不等的晨間暖身時間（morning circle time），在台灣通常是老師決定今日要做些什麼事（如：選擇什麼樣的音樂、故事書），但在德國卻正好相反，老師從不硬性規定孩子一定要做什麼，而是扮演一個極具耐心的引導者，適時給予孩子不同的選項，讓他們自由決定今天想做哪些事。一般來說年齡較大的孩子只要給予他們選項，大多都能以清楚的口語表達其意願；而年紀較小的孩子由於表達能力有限，老師除了會透過他們的肢體動作猜測外，也會引導他們以貼貼紙……等方式進行表達，儘管他們一開始對於一切仍處於懵懂，甚至有時還會將貼紙亂貼，但這一切看在德國老師眼中並不太在意，因為他們深知孩子總會在幾次的練習後，逐漸搞懂究竟是怎麼一回事，然後做出他們心中所想要的決定。莊琳君表示讓孩子做決定的背後意義，不僅只是讓幼兒擁有足夠的機會，進行思考、表達自己的想法外，更能夠幫助他們在這樣的過程中，明瞭自己的意見是重要的，這能幫助孩子提升自信心，同時也學會為所做的決定負責。', 'https://www.mababy.com/knowledge-detail?id=5549');
INSERT INTO "public"."t10education" VALUES (4, 'L0816', '教育子女，怎樣才是最好的方法？', '在教育兒子的時候，我不會去管那些概念的東西。兒子七歲時，學校老師給他佈置了很多作業，他就對我說，爸爸，我不想寫這些家庭作業。我問他為什麼，他說，這些字我都會寫，但老師還要我們寫上二三十遍，純粹是浪費生命嘛，我還不如讀書。於是，我就給老師打電話，叫他不要給我的兒子佈置家庭作業。我的兒子很自覺，不做作業的時候，就會讀一些童話之類的書。初中的時候也是這樣，他又不想做學校作業了，想讀書，於是我又給老師打電話。高中的時候還是這樣，學校要求上晚自習，但他不想去，因為覺得晚自習非常愚蠢，我問他為什麼，他說，一起參加晚自習的人都非常愚昧，我還不如一個人讀讀書。於是，我又給學校打電話，叫他們別再要求我兒子去上晚自習了。我不是在放縱我的兒子，而是尊重他的選擇，教育他要為自己的人生做選擇，要自己去承擔選擇的結果。我的兒子提出這些要求，也不是在為自己的懶惰找理由，而是因為他選擇了另外一種生活方式。兒子高一那年，他每天早晨三點起床，六點去上學，中間的三個小時做什麼呢？他在寫一部長篇小說，小說中描述了人類尋找永恆時面臨的許多困境，他寫得非常好。就這樣一直寫到高二的時候，他突然提出要退學。我問他為什麼，他說，我要當作家，寫作太快樂了。於是我再次支持了他的選擇，我不但在他的退學申請上簽了字，還在上面寫了這樣一段話：我兒子決定退學，去實現他當作家的夢想，希望你們批准。後來學校批准了他的申請，他就退學了。還有一次，我看到他寫給女朋友的情書，上面寫著：親愛的，我將來要帶你去富士山下看櫻花。我說，好兒子，真有自信啊，你不僅要填飽你自己的肚子，還要帶老婆去看櫻花，有這樣的理想，我祝福你。那時他才讀初二，但是我沒有訓斥他，更沒有阻止他，而是讓他把女朋友帶來，我請她吃飯。後來，有個朋友告訴我，你兒子在談戀愛。我就對那朋友說，孩子長大了就是要談戀愛的，如果他不想談戀愛的話，我還得帶他去看醫生，因為不知道他是不是有病。朋友問我，你不怕出事嗎？我說，能出什麼事，最大的事情不過就是給我生個孫子嘛，生不了孫子的話將來也很糟糕，我又得帶他去看病。當然，我只是舉一個例子，他們現在還沒結婚，也沒給我生孫子。所以說，我從來不把自己的價值體系強加給孩子，看起來我很放縱他，但是他非常優秀。後來，他還在我的家鄉搞了一個文學院，教孩子們如何寫作，非常成功，在當地的影響很大，家喻戶曉，一年有幾十萬的收入。後來我到了廣州，就告訴兒子，你這輩子不是來教作文的，你還有更重要的事情要去做，能不能來這裡，跟我一塊兒實現你的夢想，一起做些事情呢？他聽了我的這番話，就毅然解散了自己的文學院，放棄了一年幾十萬的收入，帶著女朋友來到廣州，每天接受我的監督。我告訴大家，每天早晨五點之前，我兒子都必鬚髮短信給我，內容是：“自強不息，天道酬勤。”等於向我報到。每天我會獎勵他十元的起床補助。如果他不發短信的話，我就要一天扣他十塊錢的零花錢。他放棄了每年幾十萬的收入，來到廣州，為了什麼？為了實現他的夢想。我從小就告訴他：孩子，你做什麼都行，只要有一顆乾淨的心，你就是成功的，你就是我的兒子；如果沒有一顆乾淨的心，沒有完善的人格，你就不配做我的兒子。我的價值體系跟流行價值體係不一樣，我心中的價值與成功，就是做一個合格的人，做一個好人，做一個不被流行的社會價值體系所局限的好人。我永遠都不會把自己實現不了的夢想強加給孩子，逼著他為我的夢想奉獻一生。但是，現在好多家長都不是這樣。好多人自己當不了官，卻想讓孩子當總統；自己成不了科學家，卻想讓孩子當科學家；自己沒本事掙錢，卻想讓孩子當比爾•蓋茨。不要這樣對你的孩子。孩子不是家長的附屬品，不要認為你給了他生命，就有了支配他的權力，他就有了被支配的責任。不是這樣的。在每個人的生命當中，最珍貴的就是他的快樂、明白、健康、生命。你是這樣，你的孩子也是這樣。你不知道自己能在這個世界上存在多久，不知道孩子能在這個世界上存在多久，也不知道親人能在這個世界上存在多久，所以，存在的時候，你就要好好地愛他們，不要讓那些亂七八糟的東西把你的心干擾了，要放下一切。在這個世界上，只要活著，最重要的事情就是快樂和愛，此外再沒有什麼別的東西。
我有一個學生，從小就被父親逼著學這個學那個，而且父親老是揍她，給了她一個不愉快的童年。這個父親根本就不知道，自己的女兒二十多歲就會得絕症。陳亦新說：“如果她的父親知道自己的孩子二十多歲就會得絕症，當時肯定不會打她的，怎麼捨得打她呢？”是的。我們怎麼知道親人甚麼時候會離開自己呢？所以，能夠自主生命的時候，親人還在身邊的時候，我們就要好好地去愛，讓他們快樂、輕鬆、自在地活著，讓他們擁有自己的夢想，幫助他們實現自己的夢想。現在，我告訴我的兒子，你去實現你的夢想吧，我有工資，有稿費，肯定能讓你有尊嚴地活著，直到你實現自己的夢想。實現了夢想，你就是我的好兒子；實現不了，你也是我的好兒子，只要你能自強不息。
我們追求的東西，無論多麼輝煌，都只是一點記憶，為了這點可憐的、很快就會被遺忘的記憶，折磨自己的孩子，折磨自己的親人，不值得。所以，我們要悲憫地、明白地活著，要看破這種留不住的虛幻，享受生命的每一個當下，不要去管能不能改變別人，首先要改變自己，做個快樂的明白人。
一定要明白，佛教的真理不是為了叫我們來度世界的，它只能度你自己。但是，當我們每個人都能從煩惱與束縛中解脫出來的時候，世界也就被拯救了。因為，世界正是由一個又一個的人所組成的。
佛法主張通過拯救自己來拯救世界，通過救心來救世，而西方文化則大多依靠征服世界來滿足自己的慾望，包括西方的英雄教育也是這樣，它們都把快樂和解脫的希望寄託在外部世界的改變上。外部世界的改變，真的能帶給一個人幸福的生活嗎？不能。人類的慾望，就像用海水解渴一樣，越去滿足，就越不滿足。好多時候都是這樣。所以說，如果大手印文化能滲透到人們的生活當中，變成人們的生活理念，讓人們都去善待身邊的人，我的寫作、說話就有了意義。如果做不到這一點的話，我不管寫出多麼暢銷的東西，獲得多少掌聲和多高的聲譽，都沒有任何意義。', 'http://ezvivi2.com/article/266567.asp');

-- ----------------------------
-- Table structure for t11forumlike
-- ----------------------------
DROP TABLE IF EXISTS "public"."t11forumlike";
CREATE TABLE "public"."t11forumlike" (
  "serno" int8 NOT NULL DEFAULT nextval('t11forumlike_serno'::regclass),
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "forumno" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."t11forumlike"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t11forumlike"."id" IS 'T01';
COMMENT ON COLUMN "public"."t11forumlike"."forumno" IS 'T04';

-- ----------------------------
-- Records of t11forumlike
-- ----------------------------
INSERT INTO "public"."t11forumlike" VALUES (1, '10456004@ntub.edu.tw', 3);
INSERT INTO "public"."t11forumlike" VALUES (2, '10456005@ntub.edu.tw', 4);
INSERT INTO "public"."t11forumlike" VALUES (3, '10456023@ntub.edu.tw', 3);
INSERT INTO "public"."t11forumlike" VALUES (4, '10456048@ntub.edu.tw', 2);
INSERT INTO "public"."t11forumlike" VALUES (5, '10456004@ntub.edu.tw', 3);
INSERT INTO "public"."t11forumlike" VALUES (6, '10456005@ntub.edu.tw', 1);
INSERT INTO "public"."t11forumlike" VALUES (7, '10456004@ntub.edu.tw', 1);
INSERT INTO "public"."t11forumlike" VALUES (8, '10456005@ntub.edu.tw', 4);
INSERT INTO "public"."t11forumlike" VALUES (9, '10456004@ntub.edu.tw', 3);
INSERT INTO "public"."t11forumlike" VALUES (10, '10456005@ntub.edu.tw', 2);
INSERT INTO "public"."t11forumlike" VALUES (11, '10456023@ntub.edu.tw', 2);
INSERT INTO "public"."t11forumlike" VALUES (12, '10456048@ntub.edu.tw', 3);
INSERT INTO "public"."t11forumlike" VALUES (13, '10456005@ntub.edu.tw', 1);
INSERT INTO "public"."t11forumlike" VALUES (14, '10456023@ntub.edu.tw', 3);
INSERT INTO "public"."t11forumlike" VALUES (15, '10456048@ntub.edu.tw', 2);

-- ----------------------------
-- Table structure for t12manager
-- ----------------------------
DROP TABLE IF EXISTS "public"."t12manager";
CREATE TABLE "public"."t12manager" (
  "managerno" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "name" char(10) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t12manager"."password" IS '加密';

-- ----------------------------
-- Records of t12manager
-- ----------------------------
INSERT INTO "public"."t12manager" VALUES ('H1022', 'hhh3333', '林萬豪       ');
INSERT INTO "public"."t12manager" VALUES ('J0903', 'jjj1111', '沈冠廷       ');
INSERT INTO "public"."t12manager" VALUES ('L0816', 'l5252', '許佑綺       ');
INSERT INTO "public"."t12manager" VALUES ('V0124', 'v1515', '廖翊晴       ');

-- ----------------------------
-- Table structure for t13vaccine
-- ----------------------------
DROP TABLE IF EXISTS "public"."t13vaccine";
CREATE TABLE "public"."t13vaccine" (
  "vacno" int8 NOT NULL DEFAULT nextval('t13vaccine_vacno'::regclass),
  "managerno" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "vacname" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "vacage" int4 NOT NULL,
  "vacreaction" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t13vaccine"."vacno" IS 'AI';
COMMENT ON COLUMN "public"."t13vaccine"."managerno" IS 'T12';
COMMENT ON COLUMN "public"."t13vaccine"."vacage" IS '出生後幾天';

-- ----------------------------
-- Records of t13vaccine
-- ----------------------------
INSERT INTO "public"."t13vaccine" VALUES (1, 'J0903', 'B 型肝炎疫苗(第一劑)', 0, '一般少有特別反應');
INSERT INTO "public"."t13vaccine" VALUES (2, 'H1022', 'B 型肝炎疫苗(第二劑)', 30, '一般少有特別反應');
INSERT INTO "public"."t13vaccine" VALUES (3, 'V0124', '白喉破傷風非細胞性百日咳、b 型嗜血桿菌及不活化小兒麻痺五合一疫苗(第一劑)', 61, '＊注射部位紅腫、酸痛，偶爾有哭鬧不安、疲倦、食慾不振或嘔吐等症狀
＊不停啼哭或發高燒之症狀則較為少見；而嚴重不良反應如嚴重過敏、昏睡或痙攣則極為罕見。
＊如接種部位紅腫持續擴大、接種後持續高燒超過48小時或發生嚴重過敏反應及嚴重不適症狀，應儘速請醫師處理。');
INSERT INTO "public"."t13vaccine" VALUES (4, 'V0124', '結合型肺炎鏈球菌疫苗(第一劑)', 61, '可能發生注射部位疼痛、紅腫的反應，一般於接種2天內恢復。發燒、倦怠等嚴重副作用則極少發生');
INSERT INTO "public"."t13vaccine" VALUES (5, 'H1022', '白喉破傷風非細胞性百日咳、b 型嗜血桿菌及不活化小兒麻痺五合一疫苗(第二劑)', 122, '＊注射部位紅腫、酸痛，偶爾有哭鬧不安、疲倦、食慾不振或嘔吐等症狀
＊不停啼哭或發高燒之症狀則較為少見；而嚴重不良反應如嚴重過敏、昏睡或痙攣則極為罕見。
＊如接種部位紅腫持續擴大、接種後持續高燒超過48小時或發生嚴重過敏反應及嚴重不適症狀，應儘速請醫師處理。');
INSERT INTO "public"."t13vaccine" VALUES (6, 'J0903', '結合型肺炎鏈球菌疫苗(第二劑)', 122, '可能發生注射部位疼痛、紅腫的反應，一般於接種2天內恢復。發燒、倦怠等嚴重副作用則極少發生');
INSERT INTO "public"."t13vaccine" VALUES (7, 'L0816', '卡介苗(BCG)', 132, '小紅結節期、膿泡或潰爛期、癒合結痂');
INSERT INTO "public"."t13vaccine" VALUES (8, 'L0816', 'B 型肝炎疫苗(第三劑)', 183, '一般少有特別反應');
INSERT INTO "public"."t13vaccine" VALUES (9, 'J0903', '白喉破傷風非細胞性百日咳、b 型嗜血桿菌及不活化小兒麻痺五合一疫苗(第三劑)', 183, '＊注射部位紅腫、酸痛，偶爾有哭鬧不安、疲倦、食慾不振或嘔吐等症狀');
INSERT INTO "public"."t13vaccine" VALUES (10, 'J0903', '流感疫苗(Influenza)', 183, '有注射部位疼痛、紅腫，少數的人則會有全身性的輕微反應，如：發燒、頭痛、肌肉酸痛、噁心、皮膚搔癢、蕁麻疹或紅疹等，ㄧ般會在發生後1-2天內自然恢復。嚴重的副作用，如立即型過敏反應，甚至過敏性休克等不適情況');
INSERT INTO "public"."t13vaccine" VALUES (11, 'L0816', '麻疹腮腺炎德國麻疹混合疫苗', 365, '局部反應很少，與麻疹疫苗一樣在接種後5-12天，偶有疹子、咳嗽、鼻炎或發燒等症狀。');
INSERT INTO "public"."t13vaccine" VALUES (12, 'H1022', '水痘疫苗(Varicella)', 365, '＊接種部位可能有發紅、疼痛或腫脹等局部反應。');
INSERT INTO "public"."t13vaccine" VALUES (13, 'L0816', '結合型肺炎鏈球菌疫苗', 365, '可能發生注射部位疼痛、紅腫的反應，一般於接種2天內恢復。發燒、倦怠等嚴重副作用則極少發生');
INSERT INTO "public"."t13vaccine" VALUES (14, 'L0816', 'A 型肝炎疫苗(第一劑)', 365, '偶有注射部位疼痛、紅腫、熱感、輕微發燒、倦怠等反應，通常2-3天會恢復，如症狀持續或有其他不良反應，應請醫師診治。');
INSERT INTO "public"."t13vaccine" VALUES (15, 'H1022', '日本腦炎疫苗(第一劑)', 457, '一般為注射部位疼痛、紅、腫；少數於接種後3-7天可能出現輕微或中度全身無力、肌痛、易怒、食慾不振、發燒、頭痛等症狀，會在數天內恢復。至於嚴重過敏、昏睡或痙攣等症狀則極為罕見。');
INSERT INTO "public"."t13vaccine" VALUES (16, 'H1022', '白喉破傷風非細胞性百日咳、b 型嗜血桿菌及不活化小兒麻痺五合一疫苗(第四劑)', 548, '＊注射部位紅腫、酸痛，偶爾有哭鬧不安、疲倦、食慾不振或嘔吐等症狀');
INSERT INTO "public"."t13vaccine" VALUES (17, 'V0124', 'A 型肝炎疫苗(第二劑)', 548, '偶有注射部位疼痛、紅腫、熱感、輕微發燒、倦怠等反應，通常2-3天會恢復，如症狀持續或有其他不良反應，應請醫師診治。');
INSERT INTO "public"."t13vaccine" VALUES (18, 'V0124', '日本腦炎疫苗(第二劑)', 822, '一般為注射部位疼痛、紅、腫；少數於接種後3-7天可能出現輕微或中度全身無力、肌痛、易怒、食慾不振、發燒、頭痛等症狀，會在數天內恢復。至於嚴重過敏、昏睡或痙攣等症狀則極為罕見。');
INSERT INTO "public"."t13vaccine" VALUES (19, 'J0903', '麻疹腮腺炎德國麻疹混合疫苗(第二劑) ', 1825, '局部反應很少，與麻疹疫苗一樣在接種後5-12天，偶有疹子、咳嗽、鼻炎或發燒等症狀。');
INSERT INTO "public"."t13vaccine" VALUES (20, 'V0124', '日本腦炎疫苗(一劑)', 1825, '一般為注射部位疼痛、紅、腫；少數於接種後3-7天可能出現輕微或中度全身無力、肌痛、易怒、食慾不振、發燒、頭痛等症狀，會在數天內恢復。至於嚴重過敏、昏睡或痙攣等症狀則極為罕見。');
INSERT INTO "public"."t13vaccine" VALUES (21, 'J0903', '白喉破傷風非細胞性百日咳及不活化小兒麻痺混合疫苗(一劑)', 1825, '接種部位可能有紅腫、疼痛現象，偶爾有食慾不振、嘔吐、發燒等症狀。上述反應，通常都是短暫的，會在數日內恢復，請勿揉、抓注射部位。');

-- ----------------------------
-- Table structure for t14milestone
-- ----------------------------
DROP TABLE IF EXISTS "public"."t14milestone";
CREATE TABLE "public"."t14milestone" (
  "msno" int8 NOT NULL DEFAULT nextval('t14milestone_msno'::regclass),
  "managerno" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t14milestone"."msno" IS 'AI';
COMMENT ON COLUMN "public"."t14milestone"."managerno" IS 'T12';

-- ----------------------------
-- Records of t14milestone
-- ----------------------------
INSERT INTO "public"."t14milestone" VALUES (1, 'H1022', '反射應抓握', '一碰觸手掌心就會抓住');
INSERT INTO "public"."t14milestone" VALUES (2, 'V0124', '翻身', '不須靠外力即可翻身');
INSERT INTO "public"."t14milestone" VALUES (3, 'V0124', '玩躲貓貓', '蓋手帕在寶寶臉上，寶寶會用手抓開');
INSERT INTO "public"."t14milestone" VALUES (4, 'H1022', '爬行', '可從床頭爬到床尾');
INSERT INTO "public"."t14milestone" VALUES (5, 'J0903', '坐姿', '可坐穩不會倒下');
INSERT INTO "public"."t14milestone" VALUES (6, 'L0816', '認識媽媽', '可清楚判斷媽媽是哪一位');
INSERT INTO "public"."t14milestone" VALUES (7, 'L0816', '吃副食品', '已經長牙開始吃副食品');
INSERT INTO "public"."t14milestone" VALUES (8, 'J0903', '丟玩具', '喜歡拿到東西就亂丟');
INSERT INTO "public"."t14milestone" VALUES (9, 'J0903', '長牙', '長出第一顆牙');

-- ----------------------------
-- Table structure for t15forumtype
-- ----------------------------
DROP TABLE IF EXISTS "public"."t15forumtype";
CREATE TABLE "public"."t15forumtype" (
  "typeno" int4 NOT NULL DEFAULT nextval('t15forumtype_typeno'::regclass),
  "managerno" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t15forumtype"."typeno" IS 'AI';
COMMENT ON COLUMN "public"."t15forumtype"."managerno" IS 'T12';

-- ----------------------------
-- Records of t15forumtype
-- ----------------------------
INSERT INTO "public"."t15forumtype" VALUES (1, 'J0903', '新生兒(0-3歲)');
INSERT INTO "public"."t15forumtype" VALUES (2, 'H1022', '幼兒(3-6歲)');
INSERT INTO "public"."t15forumtype" VALUES (3, 'V0124', '特殊疾病照護');
INSERT INTO "public"."t15forumtype" VALUES (4, 'L0816', '二手嬰兒用品');
INSERT INTO "public"."t15forumtype" VALUES (5, 'V0124', '睡前故事');
INSERT INTO "public"."t15forumtype" VALUES (6, 'J0903', '男孩');
INSERT INTO "public"."t15forumtype" VALUES (7, 'H1022', '女孩');
INSERT INTO "public"."t15forumtype" VALUES (8, 'J0903', '雙胞胎');
INSERT INTO "public"."t15forumtype" VALUES (9, 'H1022', '新手媽媽');
INSERT INTO "public"."t15forumtype" VALUES (10, 'V0124', '懷孕中');

-- ----------------------------
-- Table structure for t16hospital
-- ----------------------------
DROP TABLE IF EXISTS "public"."t16hospital";
CREATE TABLE "public"."t16hospital" (
  "hospitalno" int8 NOT NULL DEFAULT nextval('t16hospital_hospitalno'::regclass),
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "longitude" float8 NOT NULL,
  "latitude" float8 NOT NULL,
  "address" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t16hospital"."hospitalno" IS 'AI';

-- ----------------------------
-- Records of t16hospital
-- ----------------------------
INSERT INTO "public"."t16hospital" VALUES (1, '醫療財團法人辜公亮基金會和信治癌中心醫院', 121.47201, 25.128495, '臺北市北投區立德路125號', '02-28970011');
INSERT INTO "public"."t16hospital" VALUES (2, '民生承安診所', 121.543485, 25.057454, '臺北市中山區民生東路3段90號1、2樓', '02-25032633');
INSERT INTO "public"."t16hospital" VALUES (3, '康明哲小兒科內科診所', 121.564104, 25.060661, '臺北市松山區三民路136巷15號', '02-27675941');
INSERT INTO "public"."t16hospital" VALUES (4, '蔡恭禮內兒科診所', 121.566091, 25.059293, '臺北市松山區新東街28號之2', '02-27600208');
INSERT INTO "public"."t16hospital" VALUES (5, '黎博彥診所', 121.565715, 25.05881, '臺北市松山區民生東路五段230號', '02-27682802');
INSERT INTO "public"."t16hospital" VALUES (6, '佳祐內兒科診所', 121.56076, 25.048917, '臺北市松山區八德路四段91巷1號', '02-27687617');
INSERT INTO "public"."t16hospital" VALUES (7, '劉內兒科診所', 121.56221, 25.058507, '臺北市松山區民生東路五段148號', '02-27603922');
INSERT INTO "public"."t16hospital" VALUES (8, '松山內兒科診所', 121.565052, 25.04908, '臺北市松山區八德路四段255號', '27658676  27674262');
INSERT INTO "public"."t16hospital" VALUES (9, '張芳杰內兒科診所', 121.561748, 25.058159, '臺北市松山區民生東路五段138巷7號', '227644400');
INSERT INTO "public"."t16hospital" VALUES (10, '林當淳內兒科診所', 121.553908, 25.030986, '臺北市大安區通化街38巷7號', '227090191');
INSERT INTO "public"."t16hospital" VALUES (11, '大安林內科診所', 121.549231, 25.034595, '臺北市大安區敦化南路一段321號5樓', '227083703');
INSERT INTO "public"."t16hospital" VALUES (12, '蔡國仁內兒科診所', 121.540617, 25.042929, '臺北市大安區忠孝東路三段217巷4弄21號', '227511916');
INSERT INTO "public"."t16hospital" VALUES (13, '陳重熙內科小兒科診所', 121.513944, 25.059378, '臺北市大同區保安街3之4號', '225535505');
INSERT INTO "public"."t16hospital" VALUES (14, '柏泉內科小兒科診所', 121.547618, 25.081855, '臺北市中山區北安路595巷20弄5號', '225331730');
INSERT INTO "public"."t16hospital" VALUES (15, '李堯?內兒科診所', 121.529119, 25.062845, '臺北市中山區民權東路二段23號', '225961172');
INSERT INTO "public"."t16hospital" VALUES (16, '振興內兒科診所', 121.590945, 25.080451, '臺北市內湖區成功路三段193號', '227906179');
INSERT INTO "public"."t16hospital" VALUES (17, '劉淦華診所', 121.59389, 25.084931, '臺北市內湖區金龍路43號', '227905374');
INSERT INTO "public"."t16hospital" VALUES (18, '惠周內兒科診所', 121.524529, 25.090362, '臺北市士林區大北路96號1樓', '228812962');
INSERT INTO "public"."t16hospital" VALUES (19, '忠誠聯合診所', 121.529143, 25.110815, '臺北市士林區德行東路109巷102弄6號', '288661176');
INSERT INTO "public"."t16hospital" VALUES (20, '李世澤小兒科內科診所', 121.506704, 25.087485, '臺北市士林區社子街67號', '228111472');
INSERT INTO "public"."t16hospital" VALUES (21, '元順診所', 121.520984, 25.103964, '臺北市士林區德行西路106號', '228340633');
INSERT INTO "public"."t16hospital" VALUES (22, '石牌李診所', 121.516324, 25.111511, '臺北市北投區西安街一段二八一巷十五號', '228342849');
INSERT INTO "public"."t16hospital" VALUES (23, '吉安診所', 121.516146, 25.111558, '臺北市北投區西安街一段281巷18號', '228231832');
INSERT INTO "public"."t16hospital" VALUES (24, '富陽劉內兒科診所', 121.556525, 25.022682, '臺北市信義區富陽街43號1Ｆ', '227325132');
INSERT INTO "public"."t16hospital" VALUES (25, '連小兒科診所', 121.578717, 25.039847, '臺北市信義區松山路465巷11號1Ｆ', '227285487');
INSERT INTO "public"."t16hospital" VALUES (26, '怡安診所', 121.566887, 25.04464, '臺北市信義區基隆路一段125號', '227670514');
INSERT INTO "public"."t16hospital" VALUES (27, '翁內兒科診所', 121.56204, 25.02962, '臺北市信義區莊敬路234號1Ｆ', '227222925');
INSERT INTO "public"."t16hospital" VALUES (28, '紹毅內兒科診所', 121.531117, 25.043608, '臺北市中正區八德路一段50號、50 號2樓、52號、52號(實際營業地址2樓)', '223930080');
INSERT INTO "public"."t16hospital" VALUES (29, '林小兒科內科診所', 121.512301, 25.042746, '臺北市中正區沅陵街26之2號', '223311152');
INSERT INTO "public"."t16hospital" VALUES (30, '黃水根診所', 121.502187, 25.036437, '臺北市萬華區廣州街104號之1', '223060569');
INSERT INTO "public"."t16hospital" VALUES (31, '顏克文診所', 121.503477, 25.039945, '臺北市萬華區貴陽街二段103號', '223310413');
INSERT INTO "public"."t16hospital" VALUES (32, '鄭內兒科診所', 121.495979, 25.032459, '臺北市萬華區艋舺大道430號', '223067992');
INSERT INTO "public"."t16hospital" VALUES (33, '天恩診所', 121.49865, 25.021203, '臺北市萬華區萬大路433號', '23016712');
INSERT INTO "public"."t16hospital" VALUES (34, '林進雄診所', 121.50012, 25.038348, '臺北市萬華區桂林路102號1樓', '223040998');
INSERT INTO "public"."t16hospital" VALUES (35, '天心診所', 121.499846, 25.025555, '臺北市萬華區德昌街10巷4號', '223059684');
INSERT INTO "public"."t16hospital" VALUES (36, '天恩診所', 121.49865, 25.021203, '臺北市萬華區萬大路433號', '23016712');
INSERT INTO "public"."t16hospital" VALUES (37, '保順診所', 121.567739, 24.983747, '臺北市文山區木新路二段206號', '229396868');
INSERT INTO "public"."t16hospital" VALUES (38, '興隆內科小兒科診所', 121.545417, 24.99891, '臺北市文山區興隆路二段17號', '229311736');
INSERT INTO "public"."t16hospital" VALUES (39, '鍾內兒科診所', 121.568324, 24.988973, '臺北市文山區木柵路三段119號', '229399632');
INSERT INTO "public"."t16hospital" VALUES (40, '興隆李內兒科診所', 121.539344, 25.004106, '臺北市文山區興隆路一段12號', '229314537');
INSERT INTO "public"."t16hospital" VALUES (41, '安禾聯合診所', 121.549556, 25.061553, '臺北市松山區民權東路三段一七八號三樓', '27137889');
INSERT INTO "public"."t16hospital" VALUES (42, '啟誠聯合診所', 121.542934, 25.02473, '臺北市大安區和平東路二段120號1樓、2樓、3樓、4樓', '223784380');
INSERT INTO "public"."t16hospital" VALUES (43, '敏聖內兒科診所', 121.57875, 25.079552, '臺北市內湖區內湖路一段737巷27號', '227987856');
INSERT INTO "public"."t16hospital" VALUES (44, '梅約診所', 121.518941, 25.050383, '臺北市大同區長安西路88號1、2、3樓', '25557728');
INSERT INTO "public"."t16hospital" VALUES (45, '台灣基督長老教會馬偕醫療財團法人馬偕兒童醫院', 121.522367, 25.058832, '臺北市中山區中山北路2段92號', '02-25433535');
INSERT INTO "public"."t16hospital" VALUES (46, '禾馨內湖婦幼診所', 121.581672, 25.067496, '臺北市內湖區民權東路六段42號5樓(之1、之2、之3)、6樓(之1、之2、之3)', '87921103');
INSERT INTO "public"."t16hospital" VALUES (47, '向安婦產科外科診所', 121.534002, 25.026371, '臺北市大安區和平東路一段197號、197號2樓、197號2樓之3', '223952633');
INSERT INTO "public"."t16hospital" VALUES (48, '弘光耳鼻喉科診所', 121.553279, 25.058252, '臺北市松山區民生東路四段117號', '02-27181177');
INSERT INTO "public"."t16hospital" VALUES (49, '謝耳鼻喉科診所', 121.56221, 25.058507, '臺北市松山區民生東路五段148號2樓', '227697891');
INSERT INTO "public"."t16hospital" VALUES (50, '吳耳鼻喉科診所', 121.563351, 25.057876, '臺北市松山區三民路113巷1－1號', '227679897');
INSERT INTO "public"."t16hospital" VALUES (51, '延壽耳鼻喉科診所', 121.56514, 25.057098, '臺北市松山區延壽街113號', '87878431');
INSERT INTO "public"."t16hospital" VALUES (52, '王俊彰耳鼻喉科診所', 121.555942, 25.058454, '臺北市松山區民生東路五段17號', '227665698');
INSERT INTO "public"."t16hospital" VALUES (53, '民生翁耳鼻喉科診所', 121.559074, 25.058339, '臺北市松山區民生東路五段78號1樓', '227625922');
INSERT INTO "public"."t16hospital" VALUES (54, '澄東耳鼻喉科診所', 121.563558, 25.055836, '臺北市松山區三民路37號', '27420552');
INSERT INTO "public"."t16hospital" VALUES (55, '陳大昕耳鼻喉科診所', 121.560808, 25.048401, '臺北市松山區八德路四段100號', '227676349');
INSERT INTO "public"."t16hospital" VALUES (56, '康瑞耳鼻喉科診所', 121.554952, 25.047966, '臺北市松山區八德路三段154號1樓', '225790045');
INSERT INTO "public"."t16hospital" VALUES (57, '趙耳鼻喉科診所', 121.575355, 25.050207, '臺北市松山區八德路四段649號一樓', '227568572');
INSERT INTO "public"."t16hospital" VALUES (58, '陳泰安耳鼻喉科診所', 121.558024, 25.050877, '臺北市松山區光復北路97號', '227605036');
INSERT INTO "public"."t16hospital" VALUES (59, '大安黃耳鼻喉科診所', 121.55477, 25.021986, '臺北市大安區和平東路3段234號', '227327331');
INSERT INTO "public"."t16hospital" VALUES (60, '頂好林耳鼻喉科診所', 121.546916, 25.04351, '臺北市大安區敦化南路一段160巷50號', '227783142');
INSERT INTO "public"."t16hospital" VALUES (61, '陳建銓耳鼻喉科診所', 121.552272, 25.025557, '臺北市大安區樂利路93號1Ｆ', '227365811');
INSERT INTO "public"."t16hospital" VALUES (62, '萬通耳鼻喉科診所', 121.553851, 25.043354, '臺北市大安區延吉街64－2號1樓', '227518909');
INSERT INTO "public"."t16hospital" VALUES (63, '大安黃耳鼻喉科診所', 121.55477, 25.021986, '臺北市大安區和平東路3段234號', '227327331');
INSERT INTO "public"."t16hospital" VALUES (64, '蘇仁和耳鼻喉科診所', 121.549827, 25.039716, '臺北市大安區安和路一段十一號四樓之一', '27410843');
INSERT INTO "public"."t16hospital" VALUES (65, '黃清浩耳鼻喉科診所', 121.557315, 25.036186, '臺北市大安區光復南路430號', '227085413');
INSERT INTO "public"."t16hospital" VALUES (66, '陳柏豪耳鼻喉科診所', 121.523231, 25.02685, '臺北市大安區和平東路一段10號', '223625458');
INSERT INTO "public"."t16hospital" VALUES (67, '佳立得耳鼻喉科診所', 121.533256, 25.034319, '臺北市大安區新生南路一段165巷1號', '27847399');
INSERT INTO "public"."t16hospital" VALUES (68, '楊懷卿耳鼻喉科診所', 121.555413, 25.038874, '臺北市大安區光復南路308巷55號', '227214882');
INSERT INTO "public"."t16hospital" VALUES (69, '博恩妍診所', 121.550626, 25.041723, '臺北市大安區忠孝東路四段177號12樓', '27315770');
INSERT INTO "public"."t16hospital" VALUES (70, '李翔耳鼻喉科診所', 121.536813, 25.025527, '臺北市大安區和平東路二段30號1Ｆ', '223697877');
INSERT INTO "public"."t16hospital" VALUES (71, '大安耳鼻喉科診所', 121.54371, 25.028022, '臺北市大安區復興南路二段163號', '02-27005855');
INSERT INTO "public"."t16hospital" VALUES (72, '夏爾診所', 121.555732, 25.035149, '臺北市大安區信義路4段265巷54號', '02-2325-5508');
INSERT INTO "public"."t16hospital" VALUES (73, '君綺忠孝診所', 121.544587, 25.041531, '臺北市大安區忠孝東路4段30號5樓、6樓', '27313808');
INSERT INTO "public"."t16hospital" VALUES (74, '鄭耳鼻喉科診所', 121.556687, 25.033378, '臺北市大安區信義路四段341號', '227036670');
INSERT INTO "public"."t16hospital" VALUES (75, '景德耳鼻喉科診所', 121.542183, 25.025267, '臺北市大安區和平東路二段191號', '227091363');
INSERT INTO "public"."t16hospital" VALUES (76, '詹耳鼻喉科診所', 121.529095, 25.032703, '臺北市大安區永康街六巷十六號二樓', '23969521');
INSERT INTO "public"."t16hospital" VALUES (77, '尚行美耳鼻喉專科診所', 121.556926, 25.039465, '臺北市大安區光復南路288號3樓之1', '27115859');
INSERT INTO "public"."t16hospital" VALUES (78, '劉耳鼻喉科診所', 121.544709, 25.028535, '臺北市大安區復興南路2段151巷27號、27之1號', '27546060');
INSERT INTO "public"."t16hospital" VALUES (79, '新鑫耳鼻喉科診所', 121.529111, 25.022617, '臺北市大安區師大路105巷13號1樓', '223621201');
INSERT INTO "public"."t16hospital" VALUES (80, '施崇仁耳鼻喉科診所', 121.545238, 25.025187, '臺北市大安區和平東路二段311巷13號1Ｆ', '227091592');
INSERT INTO "public"."t16hospital" VALUES (81, '簡萬居耳鼻喉科診所', 121.529784, 25.019698, '臺北市大安區辛亥路一段28號', '223680279');
INSERT INTO "public"."t16hospital" VALUES (82, '安吉耳鼻喉科診所', 121.55448, 25.022351, '臺北市大安區和平東路三段226號', '27385008');
INSERT INTO "public"."t16hospital" VALUES (83, '張國麟耳鼻喉科診所', 121.55266, 25.024775, '臺北市大安區和平東路三段一四七號一樓', '27338386');
INSERT INTO "public"."t16hospital" VALUES (84, '寧夏診所', 121.51444, 25.056877, '臺北市大同區民生西路236號', '25586060');
INSERT INTO "public"."t16hospital" VALUES (85, '延平耳鼻喉科診所', 121.513785, 25.062108, '臺北市大同區重慶北路二段二三五之四號一樓', '25536612');
INSERT INTO "public"."t16hospital" VALUES (86, '大同耳鼻喉科診所', 121.513536, 25.071098, '臺北市大同區重慶北路三段250之3、250之4號', '2597-5833');
INSERT INTO "public"."t16hospital" VALUES (87, '光庭耳鼻喉科診所', 121.515509, 25.068753, '臺北市大同區民族西路167號', '25957315');
INSERT INTO "public"."t16hospital" VALUES (88, '大橋張耳鼻喉科診所', 121.511168, 25.061978, '臺北市大同區延平北路二段270號', '225956102');
INSERT INTO "public"."t16hospital" VALUES (89, '大龍峒耳鼻喉科診所', 121.513128, 25.068826, '臺北市大同區民族西路223之5號', '02-25951475');
INSERT INTO "public"."t16hospital" VALUES (90, '周承良耳鼻喉科診所', 121.511867, 25.050575, '臺北市大同區延平北路一段二十二號', '225590862');
INSERT INTO "public"."t16hospital" VALUES (91, '祥恩耳鼻喉科診所', 121.516706, 25.057289, '臺北市大同區民生西路195號', '02-25535185');
INSERT INTO "public"."t16hospital" VALUES (92, '保春安耳鼻喉科診所', 121.51194, 25.053164, '臺北市大同區延平北路一段135號', '25590352');
INSERT INTO "public"."t16hospital" VALUES (93, '龍安莊耳鼻喉科診所', 121.515991, 25.07083, '臺北市大同區大龍街227號', '25991439');
INSERT INTO "public"."t16hospital" VALUES (94, '朱世輝耳鼻喉科診所', 121.517271, 25.062683, '臺北市大同區民權西路106號2樓', '225535016');
INSERT INTO "public"."t16hospital" VALUES (95, '麗安耳鼻喉科診所', 121.540927, 25.06053, '臺北市中山區龍江路289號', '25068080');
INSERT INTO "public"."t16hospital" VALUES (96, '長春耳鼻喉科診所', 121.530779, 25.054753, '臺北市中山區長春路128之1號', '25235575');
INSERT INTO "public"."t16hospital" VALUES (97, '莊宇龍診所', 121.549022, 25.08373, '臺北市中山區北安路637號', '02-25319998');
INSERT INTO "public"."t16hospital" VALUES (98, '蔡國賢耳鼻喉科診所', 121.535451, 25.048336, '臺北市中山區長安東路二段108之2號', '25178178');
INSERT INTO "public"."t16hospital" VALUES (99, '英政耳鼻喉科診所', 121.541487, 25.048415, '臺北市中山區長安東路二段169之9號', '27512758');
INSERT INTO "public"."t16hospital" VALUES (100, '林錦祥耳鼻喉科診所', 121.541218, 25.064499, '臺北市中山區五常街91號1樓', '02 25053069');
INSERT INTO "public"."t16hospital" VALUES (101, '江得信耳鼻喉科診所', 121.529212, 25.058139, '臺北市中山區民生東路二段43號', '225616835');
INSERT INTO "public"."t16hospital" VALUES (102, '周賢章耳鼻喉科診所', 121.520931, 25.061244, '臺北市中山區天祥路26號', '225213101');
INSERT INTO "public"."t16hospital" VALUES (103, '極緻醫美診所', 121.531288, 25.051793, '臺北市中山區南京東路二段96號5樓', '02-25222168');
INSERT INTO "public"."t16hospital" VALUES (104, '綺麗嘉美型診所', 121.532888, 25.061323, '臺北市中山區松江路338號(實際營業樓層:2、3樓)', '25210010');
INSERT INTO "public"."t16hospital" VALUES (105, '中山民權王耳鼻喉科診所', 121.522257, 25.06334, '臺北市中山區中山北路二段166號之2', '25948759');
INSERT INTO "public"."t16hospital" VALUES (106, '英政耳鼻喉科診所', 121.541487, 25.048415, '臺北市中山區長安東路二段169之9號', '27512758');
INSERT INTO "public"."t16hospital" VALUES (107, '大倉美學診所', 121.523226, 25.052027, '臺北市中山區南京東路一段16號7樓之5、7樓之6', '25116177');
INSERT INTO "public"."t16hospital" VALUES (108, '芯慈耳鼻喉科診所', 121.542482, 25.054424, '臺北市中山區長春路364號', '225048803');
INSERT INTO "public"."t16hospital" VALUES (109, '楊光榮嗓音耳鼻喉科診所', 121.530836, 25.062348, '臺北市中山區民權東路二段56號(實際開業地址：1樓及2樓)', '225631398');
INSERT INTO "public"."t16hospital" VALUES (110, '陳正熹耳鼻喉科診所', 121.523279, 25.064082, '臺北市中山區雙城街10巷18號1樓', '225857518');
INSERT INTO "public"."t16hospital" VALUES (111, '正恩耳鼻喉科診所', 121.538599, 25.060353, '臺北市中山區錦州街321號', '225052293');
INSERT INTO "public"."t16hospital" VALUES (112, '詹益偉耳鼻喉科診所', 121.548759, 25.08253, '臺北市中山區北安路611號', '2533-4711');
INSERT INTO "public"."t16hospital" VALUES (113, '東湖張耳鼻喉科診所', 121.611838, 25.070204, '臺北市內湖區康寧路三段169號', '226331864');
INSERT INTO "public"."t16hospital" VALUES (114, '成功耳鼻喉科診所', 121.591303, 25.081553, '臺北市內湖區成功路四段16號1樓', '227940064');
INSERT INTO "public"."t16hospital" VALUES (115, '成安耳鼻喉科診所', 121.594016, 25.083156, '臺北市內湖區成功路四段153號', '27935940');
INSERT INTO "public"."t16hospital" VALUES (116, '西湖安康診所', 121.567982, 25.084574, '臺北市內湖區內湖路一段285巷65弄18號1樓', '226580838');
INSERT INTO "public"."t16hospital" VALUES (117, '施耳鼻喉科診所', 121.614867, 25.068469, '臺北市內湖區東湖路90號2樓', '26331018');
INSERT INTO "public"."t16hospital" VALUES (118, '禾安耳鼻喉科診所', 121.592776, 25.080005, '臺北市內湖區康寧路一段75號', '87918066');
INSERT INTO "public"."t16hospital" VALUES (119, '加安耳鼻喉科診所', 121.570496, 25.081862, '臺北市內湖區內湖路1段401號1樓', '26277869');
INSERT INTO "public"."t16hospital" VALUES (120, '東湖謝耳鼻喉科診所', 121.617143, 25.067918, '臺北市內湖區東湖路148號', '26332605');
INSERT INTO "public"."t16hospital" VALUES (121, '思維診所', 121.580587, 25.078664, '臺北市內湖區文德路25號', '02-26574559');
INSERT INTO "public"."t16hospital" VALUES (122, '杜耳鼻喉科診所', 121.596213, 25.084643, '臺北市內湖區成功路四段222號', '27906738');
INSERT INTO "public"."t16hospital" VALUES (123, '林登山耳鼻喉科診所', 121.582585, 25.078305, '臺北市內湖區文德路96號', '26596638');
INSERT INTO "public"."t16hospital" VALUES (124, '仁弘耳鼻喉科診所', 121.578475, 25.08074, '臺北市內湖區內湖路一段737巷50弄37號', '02-26596360');
INSERT INTO "public"."t16hospital" VALUES (125, '文德耳鼻喉科診所', 121.579944, 25.078256, '臺北市內湖區文德路32號', '87971942');
INSERT INTO "public"."t16hospital" VALUES (126, '翊群耳鼻喉科診所', 121.612526, 25.055822, '臺北市南港區興東街29之1號', '226512156');
INSERT INTO "public"."t16hospital" VALUES (127, '冠德耳鼻喉科診所', 121.616642, 25.054069, '臺北市南港區研究院路一段17號1樓', '226519569');
INSERT INTO "public"."t16hospital" VALUES (128, '中坡耳鼻喉科診所', 121.583321, 25.043324, '臺北市南港區中坡南路29號', '27850329');
INSERT INTO "public"."t16hospital" VALUES (129, '泓安耳鼻喉科診所', 121.606113, 25.055184, '臺北市南港區興華路75號', '27831083');
INSERT INTO "public"."t16hospital" VALUES (130, '希文耳鼻喉科診所', 121.587748, 25.048732, '臺北市南港區忠孝東路六段234號', '27854868');
INSERT INTO "public"."t16hospital" VALUES (131, '中研耳鼻喉科診所', 121.617179, 25.037406, '臺北市南港區研究院路二段3之9號1樓', '02-27883861');
INSERT INTO "public"."t16hospital" VALUES (132, '天母雙合耳鼻喉科診所', 121.526519, 25.119761, '臺北市士林區天母北路21號1樓', '28711813');
INSERT INTO "public"."t16hospital" VALUES (133, '謝宏基耳鼻喉科診所', 121.525183, 25.094991, '臺北市士林區中正路249之3號1樓', '228819168');
INSERT INTO "public"."t16hospital" VALUES (134, '陳剛朗耳鼻喉科診所', 121.525319, 25.090167, '臺北市士林區大北路64號', '228827909');
INSERT INTO "public"."t16hospital" VALUES (135, '洪楷義耳鼻喉科診所', 121.530978, 25.112734, '臺北市士林區忠誠路二段88號1樓', '228731386');
INSERT INTO "public"."t16hospital" VALUES (136, '天母耳鼻喉科診所', 121.528215, 25.115583, '臺北市士林區中山北路六段744號', '228738873');
INSERT INTO "public"."t16hospital" VALUES (137, '陳彥銘耳鼻喉科診所', 121.526657, 25.111753, '臺北市士林區士東路12號之1壹樓', '228381770');
INSERT INTO "public"."t16hospital" VALUES (138, '粱耳鼻喉科診所', 121.509292, 25.088489, '臺北市士林區社正路12之1號', '228168456');
INSERT INTO "public"."t16hospital" VALUES (139, '柯耳鼻喉科診所', 121.525478, 25.092078, '臺北市士林區大東路144號', '228828825');
INSERT INTO "public"."t16hospital" VALUES (140, '得安耳鼻喉科診所', 121.530659, 25.108732, '臺北市士林區忠誠路二段3號', '228382032');
INSERT INTO "public"."t16hospital" VALUES (141, '葉耳鼻喉科診所', 121.510107, 25.083992, '臺北市士林區延平北路五段218號', '228167277');
INSERT INTO "public"."t16hospital" VALUES (142, '榮清耳鼻喉科診所', 121.524205, 25.096158, '臺北市士林區文林路483號(1樓)', '02-28316878');
INSERT INTO "public"."t16hospital" VALUES (143, '健原診所', 121.508705, 25.086248, '臺北市士林區中正路627號', '228116409');
INSERT INTO "public"."t16hospital" VALUES (144, '翰譽耳鼻喉科診所', 121.501255, 25.128873, '臺北市北投區中央南路一段189號', '28959986');
INSERT INTO "public"."t16hospital" VALUES (145, '林文正耳鼻喉科診所', 121.519925, 25.109875, '臺北市北投區明德路一一七號', '228261087');
INSERT INTO "public"."t16hospital" VALUES (146, '洪耳鼻喉科診所', 121.501456, 25.132201, '臺北市北投區中央南路一段43號', '28928769');
INSERT INTO "public"."t16hospital" VALUES (147, '尤亮惠耳鼻喉科診所', 121.467669, 25.127721, '臺北市北投區中央北路4段543號', '28942339');
INSERT INTO "public"."t16hospital" VALUES (148, '大順耳鼻喉科診所', 121.501508, 25.139349, '臺北市北投區中和街二三六號一樓', '02-28964588');
INSERT INTO "public"."t16hospital" VALUES (149, '紀耳鼻喉科診所', 121.515995, 25.116562, '臺北市北投區石牌路2段55號2樓.57號.57號2樓', '28214485');
INSERT INTO "public"."t16hospital" VALUES (150, '保康耳鼻喉科診所', 121.498701, 25.135466, '臺北市北投區中央北路一段一四八號', '02-28953343');
INSERT INTO "public"."t16hospital" VALUES (151, '台北欣安耳鼻喉科診所', 121.513147, 25.114226, '臺北市北投區石牌路一段152號', '02-28210501');
INSERT INTO "public"."t16hospital" VALUES (152, '鄭宇廷耳鼻喉科診所', 121.49978, 25.134772, '臺北市北投區中央北路一段94號', '02-28916835');
INSERT INTO "public"."t16hospital" VALUES (153, '陽光耳鼻喉科診所', 121.577824, 25.039116, '臺北市信義區松山路484之8號', '27279529');
INSERT INTO "public"."t16hospital" VALUES (154, '信義耳鼻喉科診所', 121.565799, 25.027953, '臺北市信義區莊敬路391巷4號', '23450288');
INSERT INTO "public"."t16hospital" VALUES (155, '松山陳耳鼻喉科診所', 121.578069, 25.039093, '臺北市信義區松山路483號－1、1Ｆ', '227271229');
INSERT INTO "public"."t16hospital" VALUES (156, '松仁耳鼻喉科診所', 121.568768, 25.026229, '臺北市信義區松仁路231號', '87808580');
INSERT INTO "public"."t16hospital" VALUES (157, '福德郭耳鼻喉科診所', 121.580633, 25.036943, '臺北市信義區福德街62號', '2759-1051');
INSERT INTO "public"."t16hospital" VALUES (158, '永吉羅耳鼻喉科診所', 121.574005, 25.045316, '臺北市信義區永吉路272號', '02-27656079');
INSERT INTO "public"."t16hospital" VALUES (159, '陳威璋耳鼻喉科診所', 121.576344, 25.038767, '臺北市信義區松德路58號', '227273272');
INSERT INTO "public"."t16hospital" VALUES (160, '朱耳鼻喉科診所', 121.576326, 25.040672, '臺北市信義區忠孝東路五段452號1Ｆ', '227209172');
INSERT INTO "public"."t16hospital" VALUES (161, '劉彥煌耳鼻喉專科診所', 121.56774, 25.026772, '臺北市信義區莊敬路462號1Ｆ', '227229173');
INSERT INTO "public"."t16hospital" VALUES (162, '春田耳鼻喉科診所', 121.557578, 25.031265, '臺北市信義區光復南路555號1樓', '227297135');
INSERT INTO "public"."t16hospital" VALUES (163, '董耳鼻喉科診所', 121.574376, 25.045372, '臺北市信義區永吉路二八四號一Ｆ', '227643502');
INSERT INTO "public"."t16hospital" VALUES (164, '蕭耳鼻喉科診所', 121.523512, 25.022816, '臺北市中正區汀州路二段二六一號', '2  3653284');
INSERT INTO "public"."t16hospital" VALUES (165, '李世輝耳鼻喉科診所', 121.517804, 25.030632, '臺北市中正區南昌路一段79號', '23979639/0982168019');
INSERT INTO "public"."t16hospital" VALUES (166, '李世輝耳鼻喉科診所', 121.517804, 25.030632, '臺北市中正區南昌路一段79號', '23979639/0982168019');
INSERT INTO "public"."t16hospital" VALUES (167, '奕康耳鼻喉科診所', 121.529939, 25.034524, '臺北市中正區連雲街72號2樓', '23212788');
INSERT INTO "public"."t16hospital" VALUES (168, '古亭中心耳鼻喉科診所', 121.504266, 25.030949, '臺北市中正區中華路二段161號', '223064652');
INSERT INTO "public"."t16hospital" VALUES (169, '慕顏時尚美學診所', 121.513707, 25.042436, '臺北市中正區衡陽路7號14樓', '23826480');
INSERT INTO "public"."t16hospital" VALUES (170, '雙合耳鼻喉科聯合診所', 121.507456, 25.030215, '臺北市中正區汀州路一段96號', '223055690');
INSERT INTO "public"."t16hospital" VALUES (171, '丞泰耳鼻喉科診所', 121.517267, 25.030983, '臺北市中正區南昌路一段78號', '23973668');
INSERT INTO "public"."t16hospital" VALUES (172, '鄭文宗耳鼻喉科診所', 121.531829, 25.033831, '臺北市中正區信義路二段267號', '223917458');
INSERT INTO "public"."t16hospital" VALUES (173, '池振坤耳鼻喉科診所', 121.517409, 25.030793, '臺北市中正區南昌路一段88號2樓', '23972684');
INSERT INTO "public"."t16hospital" VALUES (174, '盧漢隆耳鼻喉科診所', 121.491834, 25.032256, '臺北市萬華區環河南路二段197號', '223361363');
INSERT INTO "public"."t16hospital" VALUES (175, '君怡耳鼻喉科診所', 121.503864, 25.039719, '臺北市萬華區貴陽街二段七十六號一樓', '23891191');
INSERT INTO "public"."t16hospital" VALUES (176, '賴耳鼻喉科診所', 121.495712, 25.0293, '臺北市萬華區西園路二段194－1號', '223049026');
INSERT INTO "public"."t16hospital" VALUES (177, '樺昌耳鼻喉科診所', 121.508324, 25.025419, '臺北市萬華區中華路二段524號', '223091791');
INSERT INTO "public"."t16hospital" VALUES (178, '萬華蔡耳鼻喉科診所', 121.503319, 25.035995, '臺北市萬華區昆明街312之1號', '223063897');
INSERT INTO "public"."t16hospital" VALUES (179, '周耳鼻喉科診所', 121.499871, 25.038214, '臺北市萬華區西園路一段109號', '223367675');
INSERT INTO "public"."t16hospital" VALUES (180, '長泰耳鼻喉科診所', 121.500286, 25.025808, '臺北市萬華區萬大路270號', '02 23076869');
INSERT INTO "public"."t16hospital" VALUES (181, '萬嘉耳鼻喉科診所', 121.500366, 25.028889, '臺北市萬華區萬大路144號1樓', '23010228');
INSERT INTO "public"."t16hospital" VALUES (182, '李明儒耳鼻喉科診所', 121.506074, 25.026133, '臺北市萬華區青年路10號', '23038181');
INSERT INTO "public"."t16hospital" VALUES (183, '維恩耳鼻喉科診所', 121.497812, 25.02055, '臺北市萬華區萬大路446號', '23056936');
INSERT INTO "public"."t16hospital" VALUES (184, '益銓診所', 121.500705, 25.026446, '臺北市萬華區萬大路233號', '2333-1323');
INSERT INTO "public"."t16hospital" VALUES (185, '光耳鼻喉科診所', 121.502586, 25.023096, '臺北市萬華區青年路90號', '23077565');
INSERT INTO "public"."t16hospital" VALUES (186, '林坤霖耳鼻喉科診所', 121.539573, 25.000058, '臺北市文山區羅斯福路六段14號', '86633288');
INSERT INTO "public"."t16hospital" VALUES (187, '楊向榮耳鼻喉科診所', 121.539195, 25.002025, '臺北市文山區羅斯福路五段223號', '229314554');
INSERT INTO "public"."t16hospital" VALUES (188, '樂群耳鼻喉科家醫科診所', 121.560023, 24.981726, '臺北市文山區木新路三段202號', '22340158');
INSERT INTO "public"."t16hospital" VALUES (189, '平安耳鼻喉科診所', 121.562749, 24.982301, '臺北市文山區木新路三段106號1樓', '86611963');
INSERT INTO "public"."t16hospital" VALUES (190, '德康耳鼻喉科診所', 121.540124, 24.99174, '臺北市文山區羅斯福路六段260號', '29305866');
INSERT INTO "public"."t16hospital" VALUES (191, '世誠耳鼻喉科診所', 121.559416, 24.984261, '臺北市文山區忠順街一段107號1樓', '23343618');
INSERT INTO "public"."t16hospital" VALUES (192, '許至文耳鼻喉科診所', 121.568807, 24.987598, '臺北市文山區指南路一段2號', '86614918');
INSERT INTO "public"."t16hospital" VALUES (193, '陳建業診所', 121.540994, 24.99049, '臺北市文山區景文街86號、90巷1號', '29358181');
INSERT INTO "public"."t16hospital" VALUES (194, '閎新耳鼻喉科皮膚科聯合診所', 121.551044, 25.048, '臺北市松山區八德路三段20之2號', '25779898');
INSERT INTO "public"."t16hospital" VALUES (195, '邱耳鼻喉科診所', 121.511727, 25.113753, '臺北市北投區石牌路一段二十三號一、二樓', '228279222');
INSERT INTO "public"."t16hospital" VALUES (196, '米蘭時尚診所', 121.535636, 25.042434, '臺北市中正區忠孝東路1段43號、45號、45號2樓之1、45號2樓之2、45號2樓之3、45號2樓之5、47號、47之1號、45號10樓之1、45號10樓之2', '23222298');
INSERT INTO "public"."t16hospital" VALUES (197, '李聯合診所', 121.538622, 25.004442, '臺北市文山區羅斯福路五段170巷1－3號2樓', '229343881');
INSERT INTO "public"."t16hospital" VALUES (198, '邱楠超診所', 121.553325, 25.046782, '臺北市松山區延吉街20號1樓', '2570-2296');
INSERT INTO "public"."t16hospital" VALUES (199, '景升診所', 121.546984, 24.999393, '臺北市文山區興隆路二段93之1號(實際營業事實為1樓及地下1樓）、95巷1號2樓、95巷3號2樓', '229356632');
INSERT INTO "public"."t16hospital" VALUES (200, '安美診所', 121.546586, 25.04802, '臺北市松山區八德路二段400號3樓', '0935365707、27214153');
INSERT INTO "public"."t16hospital" VALUES (201, '詹前俊小兒科診所', 121.560044, 25.058897, '臺北市松山區民生東路五段105號', '227653039');
INSERT INTO "public"."t16hospital" VALUES (202, '車參薇小兒科診所', 121.556213, 25.04817, '臺北市松山區八德路三段195號1樓', '225770101');
INSERT INTO "public"."t16hospital" VALUES (203, '華南小兒科診所', 121.552649, 25.04587, '臺北市松山區延吉街30巷15號', '225786018');
INSERT INTO "public"."t16hospital" VALUES (204, '江崇萍小兒科診所', 121.564354, 25.052339, '臺北市松山區南京東路五段251巷24弄27號', '227632260');
INSERT INTO "public"."t16hospital" VALUES (205, '洪小兒科診所', 121.564597, 25.048111, '臺北市松山區市民大道五段165號1樓', '227480630');
INSERT INTO "public"."t16hospital" VALUES (206, '洪小兒科診所', 121.564597, 25.048111, '臺北市松山區市民大道五段165號1樓', '227480630');
INSERT INTO "public"."t16hospital" VALUES (207, '林忠志診所', 121.565957, 25.052498, '臺北市松山區南京東路五段291巷20弄3之3號', '227689577');
INSERT INTO "public"."t16hospital" VALUES (208, '陳志明診所', 121.545633, 25.02498, '臺北市大安區和平東路二段337號', '227549558');
INSERT INTO "public"."t16hospital" VALUES (209, '小禾馨小兒專科診所', 121.534532, 25.025664, '臺北市大安區新生南路三段4號', '23698833');
INSERT INTO "public"."t16hospital" VALUES (210, '許靜瑛小兒科診所', 121.548166, 25.024961, '臺北市大安區和平東路1段230號1樓', '23629088');
INSERT INTO "public"."t16hospital" VALUES (211, '葉明憲小兒科診所', 121.528109, 25.021088, '臺北市大安區羅斯福路三段191號2Ｆ', '223691688');
INSERT INTO "public"."t16hospital" VALUES (212, '黃文香兒科診所', 121.554163, 25.041149, '臺北市大安區忠孝東路4段250號2樓之1', '27313305');
INSERT INTO "public"."t16hospital" VALUES (213, '柯嘉音小兒科診所', 121.553259, 25.034578, '臺北市大安區安和路一段127巷12號', '27080337');
INSERT INTO "public"."t16hospital" VALUES (214, '呂小兒科診所', 121.553568, 25.031727, '臺北市大安區通化街二十四巷六號一樓', '27000708');
INSERT INTO "public"."t16hospital" VALUES (215, '劉建宏診所', 121.546177, 25.02855, '臺北市大安區大安路二段139號', '02-2700-2368');
INSERT INTO "public"."t16hospital" VALUES (216, '黃博裕小兒科診所', 121.520307, 25.055779, '臺北市大同區赤峰街49巷21號', '225592440');
INSERT INTO "public"."t16hospital" VALUES (217, '羅源彰診所', 121.515086, 25.051448, '臺北市大同區長安西路137號', '25552500');
INSERT INTO "public"."t16hospital" VALUES (218, '施小兒科診所', 121.513422, 25.065009, '臺北市大同區重慶北路三段28號', '225941935');
INSERT INTO "public"."t16hospital" VALUES (219, '臺北市立聯合醫院附設中山門診部', 121.533568, 25.064444, '臺北市中山區松江路367號1樓', '225014614');
INSERT INTO "public"."t16hospital" VALUES (220, '陳?輝診所', 121.531132, 25.05808, '臺北市中山區民生東路二段103號', '225221796');
INSERT INTO "public"."t16hospital" VALUES (221, '十全小兒科診所', 121.541751, 25.054718, '臺北市中山區長春路285－2號', '25026347');
INSERT INTO "public"."t16hospital" VALUES (222, '慶恩小兒科診所', 121.530305, 25.056715, '臺北市中山區吉林路一一七號', '225683199');
INSERT INTO "public"."t16hospital" VALUES (223, '鄭志誠小兒科診所', 121.523281, 25.057823, '臺北市中山區民生東路一段八號', '02-25512246');
INSERT INTO "public"."t16hospital" VALUES (224, '黃喜祥小兒科診所', 121.530545, 25.057834, '臺北市中山區民生東路二段84號', '225616368');
INSERT INTO "public"."t16hospital" VALUES (225, '龍江小兒科診所', 121.54074, 25.05521, '臺北市中山區龍江路181－1號1樓', '225152433');
INSERT INTO "public"."t16hospital" VALUES (226, '明誠診所', 121.543188, 25.060034, '臺北市中山區錦州街446號', '25013380');
INSERT INTO "public"."t16hospital" VALUES (227, '愛鄰診所', 121.546404, 25.079747, '臺北市中山區北安路520之1號', '25322333');
INSERT INTO "public"."t16hospital" VALUES (228, '藍曾小兒科診所', 121.616659, 25.067991, '臺北市內湖區東湖路132號', '226335225');
INSERT INTO "public"."t16hospital" VALUES (229, '謝小兒科診所', 121.617221, 25.068172, '臺北市內湖區東湖路147號2樓', '226334535');
INSERT INTO "public"."t16hospital" VALUES (230, '立安診所', 121.592296, 25.08384, '臺北市內湖區內湖路二段365號1樓', '227933632');
INSERT INTO "public"."t16hospital" VALUES (231, '東湖內兒科診所', 121.612386, 25.068693, '臺北市內湖區東湖路4號', '226311616');
INSERT INTO "public"."t16hospital" VALUES (232, '焉醫師診所', 121.579518, 25.078903, '臺北市內湖區內湖路二段21號', '27932008');
INSERT INTO "public"."t16hospital" VALUES (233, '小禾馨民權小兒專科診所', 121.581775, 25.067381, '臺北市內湖區行忠路191號', '27910233');
INSERT INTO "public"."t16hospital" VALUES (234, '魏之明小兒科診所', 121.609802, 25.071286, '臺北市內湖區康寧路三段54之6號1樓', '26306968');
INSERT INTO "public"."t16hospital" VALUES (235, '天仁小兒科診所', 121.586729, 25.044816, '臺北市南港區成福路21號', '27862687');
INSERT INTO "public"."t16hospital" VALUES (236, '李文珍小兒科診所', 121.615103, 25.045549, '臺北市南港區研究院路2段74號', '26511871');
INSERT INTO "public"."t16hospital" VALUES (237, '義仁兒科診所', 121.583205, 25.045003, '臺北市南港區玉成街138號1樓', '26515929');
INSERT INTO "public"."t16hospital" VALUES (238, '原德小兒科診所', 121.505095, 25.089505, '臺北市士林區延平北路六段206號2樓', '228112966');
INSERT INTO "public"."t16hospital" VALUES (239, '林佳宏小兒科診所', 121.527661, 25.11456, '臺北市士林區中山北路六段462號', '228744591');
INSERT INTO "public"."t16hospital" VALUES (240, '蕭雨青小兒科診所', 121.509771, 25.085676, '臺北市士林區延平北路五段292號1樓', '228126415');
INSERT INTO "public"."t16hospital" VALUES (241, '張虔熙小兒科診所', 121.525606, 25.110106, '臺北市士林區中山北路六段282號', '02-28361368');
INSERT INTO "public"."t16hospital" VALUES (242, '上品小兒科診所', 121.526841, 25.09536, '臺北市士林區中正路203號', '2883-7273');
INSERT INTO "public"."t16hospital" VALUES (243, '周怡宏小兒科診所', 121.52172, 25.090329, '臺北市士林區基河路200號', '28825200');
INSERT INTO "public"."t16hospital" VALUES (244, '何啟溫診所', 121.526905, 25.107299, '臺北市士林區德行東路63號1樓', '228373890');
INSERT INTO "public"."t16hospital" VALUES (245, '柯佑民小兒科診所', 121.532122, 25.117553, '臺北市士林區天母東路8巷19弄5號1樓', '228766955');
INSERT INTO "public"."t16hospital" VALUES (246, '士林小兒科診所', 121.525183, 25.094991, '臺北市士林區中正路249號', '28812485');
INSERT INTO "public"."t16hospital" VALUES (247, '嘉櫻小兒科診所', 121.520539, 25.103938, '臺北市士林區德行西路119號1樓', '88666202');
INSERT INTO "public"."t16hospital" VALUES (248, '何小兒科診所', 121.517654, 25.086616, '臺北市士林區福港街176號', '228827401');
INSERT INTO "public"."t16hospital" VALUES (249, '樹爸爸親子診所', 121.536012, 25.109978, '臺北市士林區德行東路286號', '28381838');
INSERT INTO "public"."t16hospital" VALUES (250, '李伯匯小兒科診所', 121.511753, 25.113984, '臺北市北投區石牌路一段93號', '228221212');
INSERT INTO "public"."t16hospital" VALUES (251, '蔡秉勳小兒科診所', 121.516327, 25.11169, '臺北市北投區中和街二八一號一樓', '02-28966525');
INSERT INTO "public"."t16hospital" VALUES (252, '陳獻明小兒科診所', 121.511044, 25.113496, '臺北市北投區中央南路一段六十九號1樓', '28928950');
INSERT INTO "public"."t16hospital" VALUES (253, '陳柏宏親子診所', 121.520454, 25.110072, '臺北市北投區明德路124號', '28225257');
INSERT INTO "public"."t16hospital" VALUES (254, '何叔芳小兒科診所', 121.515865, 25.11545, '臺北市北投區裕民四路4號', '28206886');
INSERT INTO "public"."t16hospital" VALUES (255, '黃浩魁小兒科診所', 121.498289, 25.135683, '臺北市北投區中央北路一段168號', '02-28983256');
INSERT INTO "public"."t16hospital" VALUES (256, '陳信方小兒科診所', 121.520037, 25.109738, '臺北市北投區明德路106號', '28201068');
INSERT INTO "public"."t16hospital" VALUES (257, '黃正宏診所', 121.515333, 25.114248, '臺北市北投區西安街1段359號', '02-28217076');
INSERT INTO "public"."t16hospital" VALUES (258, '宏恩兒科診所', 121.512937, 25.112919, '臺北市北投區致遠一路2段99號', '28271110');
INSERT INTO "public"."t16hospital" VALUES (259, '美康診所', 121.499456, 25.131618, '臺北市北投區光明路2巷9-2號', '28953663');
INSERT INTO "public"."t16hospital" VALUES (260, '長風小兒科診所', 121.564547, 25.027912, '臺北市信義區莊敬路351號1樓', '02-27227943');
INSERT INTO "public"."t16hospital" VALUES (261, '鄭光志小兒科診所', 121.577901, 25.038804, '臺北市信義區松山路484號1Ｆ', '227266132');
INSERT INTO "public"."t16hospital" VALUES (262, '王寬仁診所', 121.577267, 25.040363, '臺北市信義區虎林街121巷11號1樓', '227204952');
INSERT INTO "public"."t16hospital" VALUES (263, '松展診所', 121.569419, 25.044581, '臺北市信義區松隆路88號', '27631373');
INSERT INTO "public"."t16hospital" VALUES (264, '林應然小兒科診所', 121.581203, 25.036853, '臺北市信義區福德街75號', '27595328');
INSERT INTO "public"."t16hospital" VALUES (265, '宏安診所', 121.569427, 25.04124, '臺北市信義區忠孝東路5段191號', '02-27611271');
INSERT INTO "public"."t16hospital" VALUES (266, '黃啟彰診所', 121.578018, 25.043801, '臺北市信義區松山路261－1號1樓', '227696218');
INSERT INTO "public"."t16hospital" VALUES (267, '明輝診所', 121.575369, 25.04835, '臺北市信義區松隆路282之3號', '87871235');
INSERT INTO "public"."t16hospital" VALUES (268, '吳小兒科診所', 121.515034, 25.029612, '臺北市中正區寧波西街96之1號5樓', '02-23035590');
INSERT INTO "public"."t16hospital" VALUES (269, '劉瑞聰診所', 121.509197, 25.028103, '臺北市中正區汀州路一段194號', '223038125');
INSERT INTO "public"."t16hospital" VALUES (270, '周正成小兒科診所', 121.527466, 25.043564, '臺北市中正區台北市忠孝東路2段22號1樓', '223516830');
INSERT INTO "public"."t16hospital" VALUES (271, '小禾馨懷寧小兒專科診所', 121.513371, 25.043041, '臺北市中正區重慶南路一段99號2樓', '02-23110353');
INSERT INTO "public"."t16hospital" VALUES (272, '悅心診所', 121.521366, 25.029085, '臺北市中正區羅斯福路2段7之2號、7之3號', '02-23961008');
INSERT INTO "public"."t16hospital" VALUES (273, '朱小兒科診所', 121.524006, 25.022098, '臺北市中正區汀州路二段220號1樓', '223651810');
INSERT INTO "public"."t16hospital" VALUES (274, '臺北市立聯合醫院附設中正門診部', 121.51592, 25.030414, '臺北市中正區牯嶺街24號', '02 23210168');
INSERT INTO "public"."t16hospital" VALUES (275, '漢宗小兒科診所', 121.506422, 25.027076, '臺北市萬華區中華路2段434號', '23039022');
INSERT INTO "public"."t16hospital" VALUES (276, '許孟權小兒科診所', 121.503422, 25.029652, '臺北市萬華區西藏路107之2號', '02-23393331');
INSERT INTO "public"."t16hospital" VALUES (277, '快樂兒童診所', 121.494848, 25.025216, '臺北市萬華區寶興街121、125、127號', '02-23328610');
INSERT INTO "public"."t16hospital" VALUES (278, '青年診所', 121.506199, 25.027491, '臺北市萬華區中華路二段四二四號', '23032450');
INSERT INTO "public"."t16hospital" VALUES (279, '佳安診所', 121.504549, 25.025656, '臺北市萬華區青年路34號', '23320898');
INSERT INTO "public"."t16hospital" VALUES (280, '屈銘軒小兒科診所', 121.553517, 25.001777, '臺北市文山區興隆路二段301巷4-2號', '29308518');
INSERT INTO "public"."t16hospital" VALUES (281, '洪佑承小兒專科診所', 121.56133, 24.984968, '臺北市文山區興隆路四段64之2號', '229364708');
INSERT INTO "public"."t16hospital" VALUES (282, '黃偉志小兒科診所', 121.540093, 24.992418, '臺北市文山區萬慶街12號1樓', '29354556');
INSERT INTO "public"."t16hospital" VALUES (283, '房國堂小兒專科診所', 121.566219, 24.982939, '臺北市文山區木新路二段269號', '86616527');
INSERT INTO "public"."t16hospital" VALUES (284, '林建輝小兒科診所', 121.54798, 24.999661, '臺北市文山區興隆路二段70號', '229334933');
INSERT INTO "public"."t16hospital" VALUES (285, '德安小兒科診所', 121.55958, 24.989604, '臺北市文山區興隆路四段6－10號', '229396454');
INSERT INTO "public"."t16hospital" VALUES (286, '震杰小兒科診所', 121.544909, 24.994448, '臺北市文山區景興路129號1樓', '89351869');
INSERT INTO "public"."t16hospital" VALUES (287, '陳建焜小兒科診所', 121.546532, 24.986975, '臺北市文山區木柵路一段75號', '222364318');
INSERT INTO "public"."t16hospital" VALUES (288, '葉洪小兒科診所', 121.559008, 24.997731, '臺北市文山區興隆路三段二Ｏ二號一樓', '222300055');
INSERT INTO "public"."t16hospital" VALUES (289, '秀心診所', 121.568241, 24.988339, '臺北市文山區保儀路26巷1號2樓之1', '29383838');
INSERT INTO "public"."t16hospital" VALUES (290, '榮恩耳鼻喉科小兒科聯合診所', 121.566488, 25.051146, '臺北市松山區南京東路五段258號', '02 27688749');
INSERT INTO "public"."t16hospital" VALUES (291, '寧康聯合診所', 121.540873, 25.056483, '臺北市中山區龍江路209巷6之1號', '25013862');
INSERT INTO "public"."t16hospital" VALUES (292, '慈田耳鼻喉科診所', 121.509967, 25.083249, '臺北市士林區延平北路五段185號1樓', '228123595');
INSERT INTO "public"."t16hospital" VALUES (293, '黃蓉聯合診所', 121.507928, 25.087519, '臺北市士林區社子街26號', '228111572');
INSERT INTO "public"."t16hospital" VALUES (294, '慈恩耳鼻喉科診所', 121.50153, 25.132843, '臺北市北投區中央南路一段十三號', '28978787');
INSERT INTO "public"."t16hospital" VALUES (295, '禾馨新生婦幼診所', 121.534531, 25.025746, '臺北市大安區新生南路三段2號、2號2樓、2號3樓', '02-23682333');
INSERT INTO "public"."t16hospital" VALUES (296, '紘成診所', 121.519695, 25.050401, '臺北市大同區長安西路35號2樓', '25492000');
INSERT INTO "public"."t16hospital" VALUES (297, '木生婦產科診所', 121.534528, 25.048369, '臺北市中山區長安東路二段90號1-4樓、88號4樓', '02-25012312');
INSERT INTO "public"."t16hospital" VALUES (298, '雙連婦產科小兒科診所', 121.52181, 25.057674, '臺北市中山區民生西路30號4樓', '25502381');
INSERT INTO "public"."t16hospital" VALUES (299, '四季和安婦幼診所', 121.525192, 25.06076, '臺北市中山區林森北路452號地下1樓、458號及458號3樓、460號及460號2樓、錦州街23巷3號3樓', '02-25677310');
INSERT INTO "public"."t16hospital" VALUES (300, '禾馨民權婦幼診所', 121.581672, 25.067496, '臺北市內湖區民權東路六段42號2樓(之1、之2、之3)、3樓(之1、之2、之3)、4樓(之1、之2、之3)', '55713333');
INSERT INTO "public"."t16hospital" VALUES (301, '王慶森診所', 121.578326, 25.081187, '臺北市內湖區港墘路65號', '227986052');
INSERT INTO "public"."t16hospital" VALUES (302, '宋小兒科診所', 121.579608, 25.078885, '臺北市內湖區內湖路二段25號', '227999366');
INSERT INTO "public"."t16hospital" VALUES (303, '臺北市立聯合醫院附設大同門診部', 121.51627, 25.065787, '臺北市大同區昌吉街五十二號一、二樓', '225948971');
INSERT INTO "public"."t16hospital" VALUES (304, '尹書田醫療財團法人書田泌尿科眼科診所', 121.537463, 25.028106, '臺北市大安區建國南路2段276號1樓、2樓、4樓、4樓之1、B1、B1之1、278號1樓', '23690211');
INSERT INTO "public"."t16hospital" VALUES (305, '國泰醫療財團法人內湖國泰診所', 121.567732, 25.079447, '臺北市內湖區瑞光路504、506號1、2樓', '02-87972121');
INSERT INTO "public"."t16hospital" VALUES (306, '中國醫藥大學附設醫院臺北分院', 121.590705, 25.082127, '臺北市內湖區內湖路二段360號', '02-27919696');
INSERT INTO "public"."t16hospital" VALUES (307, '北安聯合診所', 121.548247, 25.080915, '臺北市中山區北安路569之2號 569之3號  569之4號 569之1號二 樓 569之2號二 樓 569之3號二 樓 569之4號二 樓', '25337777');
INSERT INTO "public"."t16hospital" VALUES (308, '永康診所', 121.504304, 25.038037, '臺北市萬華區桂林路47號1樓2樓及地下1樓', '23123455');
INSERT INTO "public"."t16hospital" VALUES (309, '仁德聯合診所', 121.589285, 25.078642, '臺北市內湖區成功路三段90號1樓', '227904056');
INSERT INTO "public"."t16hospital" VALUES (310, '英田耳鼻喉科診所', 121.544427, 25.059676, '臺北市松山區復興北路331號2樓', '27170695');
INSERT INTO "public"."t16hospital" VALUES (311, '杏安診所', 121.585405, 25.045681, '臺北市南港區同德路74號、76號', '02-27892008');
INSERT INTO "public"."t16hospital" VALUES (312, '和謙耳鼻喉科診所', 121.50412, 25.092519, '臺北市士林區社中街362號', '28165678');
INSERT INTO "public"."t16hospital" VALUES (313, '德泰耳鼻喉科診所', 121.521456, 25.080451, '臺北市士林區通河街42之1號', '28851570');
INSERT INTO "public"."t16hospital" VALUES (314, '昱德聯合診所', 121.501212, 25.133084, '臺北市北投區光明路102號', '228975050');
INSERT INTO "public"."t16hospital" VALUES (315, '林繼國診所', 121.539119, 25.042468, '臺北市大安區忠孝東路三段217巷1弄12號1樓', '227315568');
INSERT INTO "public"."t16hospital" VALUES (316, '黃禎祥診所', 121.528584, 25.023697, '臺北市大安區師大路71號', '223626607');
INSERT INTO "public"."t16hospital" VALUES (317, '健華診所', 121.543788, 25.025065, '臺北市大安區和平東路2段255號、257號4樓', '27072990');
INSERT INTO "public"."t16hospital" VALUES (318, '中崙聯合診所', 121.542574, 25.047355, '臺北市中山區八德路二段303號1樓、305號1樓及2樓、307號1樓及2樓', '227711501');
INSERT INTO "public"."t16hospital" VALUES (319, '葉小兒科診所', 121.538813, 25.054887, '臺北市中山區長春路227號', '250548333');
INSERT INTO "public"."t16hospital" VALUES (320, '臺北市立聯合醫院附設士林門診部', 121.519559, 25.092762, '臺北市士林區中正路439號', '228813039');
INSERT INTO "public"."t16hospital" VALUES (321, '邱世昌診所', 121.520771, 25.102484, '臺北市士林區文林路718號', '228343565');
INSERT INTO "public"."t16hospital" VALUES (322, '貝爾聯合診所', 121.532436, 25.121385, '臺北市士林區中山北路七段82巷9號1樓', '28729980');
INSERT INTO "public"."t16hospital" VALUES (323, '存德小兒科診所', 121.52462, 25.095643, '臺北市士林區文林路460號', '228342567');
INSERT INTO "public"."t16hospital" VALUES (324, '愛林診所', 121.521475, 25.088437, '臺北市士林區承德路四段222號、222之1號、222之2號', '28836881');
INSERT INTO "public"."t16hospital" VALUES (325, '鄭素珠診所', 121.516564, 25.111001, '臺北市北投區自強街一五四號', '228235400');
INSERT INTO "public"."t16hospital" VALUES (326, '悠亞診所', 121.58068, 25.043021, '臺北市信義區忠孝東路5段727號', '87851233');
INSERT INTO "public"."t16hospital" VALUES (327, '萬華劉小兒科診所', 121.50178, 25.039582, '臺北市萬華區康定路158號', '223813156');
INSERT INTO "public"."t16hospital" VALUES (328, '魏穀年診所', 121.570579, 25.081836, '臺北市內湖區內湖路一段403號', '226572691');
INSERT INTO "public"."t16hospital" VALUES (329, '陳惠章婦產科家庭醫學科診所', 121.530342, 25.018986, '臺北市大安區羅斯福路三段二六一號二樓', '83695026');
INSERT INTO "public"."t16hospital" VALUES (330, '聖心婦產科診所', 121.512054, 25.059224, '臺北市大同區保安街一之一號', '25531346');
INSERT INTO "public"."t16hospital" VALUES (331, '王三郎婦產科診所', 121.522257, 25.06334, '臺北市中山區中山北路二段166號之2', '225948758');
INSERT INTO "public"."t16hospital" VALUES (332, '劉聖亞診所', 121.605703, 25.055836, '臺北市南港區興華路82號1樓', '227880713');
INSERT INTO "public"."t16hospital" VALUES (333, '清田婦產科家醫科診所', 121.500704, 25.140165, '臺北市北投區中和街二六八號', '02-28931323');
INSERT INTO "public"."t16hospital" VALUES (334, '吉星診所', 121.521587, 25.043849, '臺北市中正區青島東路4－5號1樓', '223911907');
INSERT INTO "public"."t16hospital" VALUES (335, '同泰診所', 121.520925, 25.024463, '臺北市中正區汀州路二段136號', '223678511');
INSERT INTO "public"."t16hospital" VALUES (336, '益生婦產科診所', 121.498392, 25.021506, '臺北市萬華區萬大路406－1號', '223031112');
INSERT INTO "public"."t16hospital" VALUES (337, '聖約翰婦產科診所', 121.49739, 25.024182, '臺北市萬華區東園街175號', '223098502');
INSERT INTO "public"."t16hospital" VALUES (338, '木新診所', 121.56148, 24.982037, '臺北市文山區木新路三段146號', '229390392');
INSERT INTO "public"."t16hospital" VALUES (339, '傳芳婦產科診所', 121.575656, 25.050209, '臺北市松山區八德路四段659號661號一樓二樓', '227631678');
INSERT INTO "public"."t16hospital" VALUES (340, '美人魚時尚婦產科診所', 121.547459, 25.052039, '臺北市松山區南京東路三段331號9樓', '27191212');
INSERT INTO "public"."t16hospital" VALUES (341, '林聰賢婦產科診所', 121.567936, 25.04936, '臺北市松山區八德路四段345號2Ｆ', '227625290');
INSERT INTO "public"."t16hospital" VALUES (342, '潘安然婦產科診所', 121.565703, 25.051002, '臺北市松山區南京東路五段230號3樓之8', '227681111');
INSERT INTO "public"."t16hospital" VALUES (343, '高國隆婦產科診所', 121.56518, 25.04908, '臺北市松山區八德路四段257號2樓', '02-27630047');
INSERT INTO "public"."t16hospital" VALUES (344, '林正宗婦產科診所', 121.551423, 25.02417, '臺北市大安區和平東路三段100號2樓', '227337008');
INSERT INTO "public"."t16hospital" VALUES (345, '李婦產科診所', 121.527864, 25.032993, '臺北市大安區金山南路2段31巷9號、9號5樓', '23218879');
INSERT INTO "public"."t16hospital" VALUES (346, '劉賢平婦產科診所', 121.555381, 25.038332, '臺北市大安區延吉街175號2樓', '227216133');
INSERT INTO "public"."t16hospital" VALUES (347, '吳坤光婦產科診所', 121.545462, 25.0335, '臺北市大安區信義路四段59號', '227059320');
INSERT INTO "public"."t16hospital" VALUES (348, '劉志鴻婦產專科診所', 121.544788, 25.038241, '臺北市大安區仁愛路四段25號10樓Ｃ棟', '227785580');
INSERT INTO "public"."t16hospital" VALUES (349, '張尚哲婦產科診所', 121.552635, 25.041231, '臺北市大安區忠孝東路四段210號4Ｆ', '227721222');
INSERT INTO "public"."t16hospital" VALUES (350, '林慧雯婦產科診所', 121.5525, 25.041253, '臺北市大安區忠孝東路4段210之1號2樓', '27117111');
INSERT INTO "public"."t16hospital" VALUES (351, '陳秀鳳婦產科診所', 121.542183, 25.025267, '臺北市大安區和平東路二段191號2樓', '227050661');
INSERT INTO "public"."t16hospital" VALUES (352, '莊國豐婦產科診所', 121.548166, 25.024961, '臺北市大安區和平東路1段8號2樓', '23688206');
INSERT INTO "public"."t16hospital" VALUES (353, '和平婦產科診所', 121.52958, 25.026261, '臺北市大安區和平東路1段180號5樓', '02-23621113');
INSERT INTO "public"."t16hospital" VALUES (354, '謝婦產科診所', 121.555789, 25.041615, '臺北市大安區忠孝東路四段311號3樓之1', '27728300');
INSERT INTO "public"."t16hospital" VALUES (355, '許世賓婦產科診所', 121.5318, 25.026464, '臺北市大安區和平東路一段169號2、4樓，171號2樓', '33932211');
INSERT INTO "public"."t16hospital" VALUES (356, '忠孝安媞婦產科診所', 121.546135, 25.041937, '臺北市大安區忠孝東路四段59號7樓之4', '27114998');
INSERT INTO "public"."t16hospital" VALUES (357, '杏立博全診所', 121.557461, 25.039028, '臺北市大安區光復南路304號、306號、318號、318號2樓、318號3樓之2、318號13樓', '02-27722138');
INSERT INTO "public"."t16hospital" VALUES (358, '安和婦產科診所', 121.552393, 25.034707, '臺北市大安區安和路一段86號2樓', '02-27556088');
INSERT INTO "public"."t16hospital" VALUES (359, '陳瑞鵬婦產科診所', 121.550642, 25.033564, '臺北市大安區信義路四段177號2樓', '227541639');
INSERT INTO "public"."t16hospital" VALUES (360, '博全婦產科診所', 121.546083, 25.044126, '臺北市大安區大安路一段18號、16巷1、1-1、3、3-1、5、5-1號2樓', '227774437');
INSERT INTO "public"."t16hospital" VALUES (361, '同心婦產科診所', 121.545394, 25.035914, '臺北市大安區東豐街26號', '27010020');
INSERT INTO "public"."t16hospital" VALUES (362, '馬大勳婦產科診所', 121.549827, 25.039716, '臺北市大安區安和路一段11號2樓－1', '227527321');
INSERT INTO "public"."t16hospital" VALUES (363, '金郁婦產科診所', 121.550626, 25.041723, '臺北市大安區忠孝東路四段177號7樓之4', '87716117');
INSERT INTO "public"."t16hospital" VALUES (364, '張少萌婦產科診所', 121.551501, 25.03362, '臺北市大安區信義路四段199巷2號4樓之1之2', '227000101');
INSERT INTO "public"."t16hospital" VALUES (365, '君蔚婦產科診所', 121.543666, 25.025177, '臺北市大安區基隆路2段172之1號5樓、5樓之1、5樓之2、5樓之3、5樓之4', '02-27320323');
INSERT INTO "public"."t16hospital" VALUES (366, '薇娜時尚美學診所', 121.54547, 25.041808, '臺北市大安區忠孝東路4段53之2號', '87715328');
INSERT INTO "public"."t16hospital" VALUES (367, '愛群婦產科診所', 121.542277, 25.033204, '臺北市大安區信義路三段178號2樓、7樓', '27083011');
INSERT INTO "public"."t16hospital" VALUES (368, '滿意婦產科診所', 121.530688, 25.018635, '臺北市大安區羅斯福路三段二七一號三樓及三樓之一', '23659191');
INSERT INTO "public"."t16hospital" VALUES (369, '周大中婦產科診所', 121.548382, 25.031212, '臺北市大安區敦化南路二段四十六號二樓', '27552757');
INSERT INTO "public"."t16hospital" VALUES (370, '康婕婦產科診所', 121.556531, 25.040638, '臺北市大安區光復南路240巷23號2樓', '27036718');
INSERT INTO "public"."t16hospital" VALUES (371, '忠孝世賓婦產科診所', 121.551292, 25.041292, '臺北市大安區忠孝東路四段176號4樓', '27116500');
INSERT INTO "public"."t16hospital" VALUES (372, '華育婦產科診所', 121.549211, 25.031707, '臺北市大安區敦化南路二段39號12樓之1', '27099966');
INSERT INTO "public"."t16hospital" VALUES (373, '張?瑞婦產科診所', 121.508539, 25.052862, '臺北市大同區西寧北路9號(實際營業地址：1樓)', '225523175');
INSERT INTO "public"."t16hospital" VALUES (374, '林國昭婦產科診所', 121.513861, 25.058697, '臺北市大同區重慶北路二段165號', '225571789');
INSERT INTO "public"."t16hospital" VALUES (375, '黃隆慶婦產科診所', 121.513121, 25.058278, '臺北市大同區歸綏街181號2樓之1', '25573289');
INSERT INTO "public"."t16hospital" VALUES (376, '送子鳥11診所', 121.558521, 25.079966, '臺北市中山區樂群二路187號、189號、189號2樓、189號2樓之1', '2532-3357');
INSERT INTO "public"."t16hospital" VALUES (377, '高添富婦產科診所', 121.525142, 25.06298, '臺北市中山區民權東路一段63號7樓之1', '225955575');
INSERT INTO "public"."t16hospital" VALUES (378, '蕭繁雄婦產科診所', 121.522737, 25.059972, '臺北市中山區中山北路二段100號', '225416967');
INSERT INTO "public"."t16hospital" VALUES (379, '生基婦產科診所', 121.535451, 25.048336, '臺北市中山區長安東路二段108號2樓、2樓之1、2樓之2、2樓之3、2樓之4', '02-25181388');
INSERT INTO "public"."t16hospital" VALUES (380, '生泉婦產科診所', 121.524169, 25.057861, '臺北市中山區民生東路一段30號3、4、5樓', '225235566');
INSERT INTO "public"."t16hospital" VALUES (381, '趙素芳婦產科診所', 121.540528, 25.048194, '臺北市中山區長安東路二段一七八之六號二樓', '227512482');
INSERT INTO "public"."t16hospital" VALUES (382, '黃建榮婦產科診所', 121.531989, 25.0518, '臺北市中山區南京東路二段100號11樓、11樓之1、11樓之2、11樓之3、11樓之4及11樓之5', '25679066');
INSERT INTO "public"."t16hospital" VALUES (383, '康心美婦診所', 121.524432, 25.064852, '臺北市中山區農安街14號2樓、雙城街17之4號2樓', '25971069');
INSERT INTO "public"."t16hospital" VALUES (384, '曾婦產科診所', 121.538242, 25.048196, '臺北市中山區長安東路二段11之1號〈實際營業場所在一樓〉', '225376712');
INSERT INTO "public"."t16hospital" VALUES (385, '吳輝明婦產科診所', 121.526571, 25.054812, '臺北市中山區長春路78號2Ｆ', '225511234');
INSERT INTO "public"."t16hospital" VALUES (386, '李義男婦產科診所', 121.523049, 25.057363, '臺北市中山區中山北路二段71號4樓', '225239923');
INSERT INTO "public"."t16hospital" VALUES (387, '黃大倫婦產科診所', 121.536107, 25.048475, '臺北市中山區長安東路二段一三一之三號一樓二樓', '25006032');
INSERT INTO "public"."t16hospital" VALUES (388, '蔡明賢婦產科診所', 121.525605, 25.067818, '臺北市中山區林森北路640號', '225925855');
INSERT INTO "public"."t16hospital" VALUES (389, '黃中豪婦產科診所', 121.530337, 25.057759, '臺北市中山區吉林路131號2Ｆ', '225516815');
INSERT INTO "public"."t16hospital" VALUES (390, '賴國良婦產科診所', 121.521111, 25.060489, '臺北市中山區錦西街1之5號', '225816624');
INSERT INTO "public"."t16hospital" VALUES (391, '富生婦產科診所', 121.530361, 25.05882, '臺北市中山區吉林路157號', '225812285');
INSERT INTO "public"."t16hospital" VALUES (392, '歐婦產科診所', 121.530416, 25.057844, '臺北市中山區民生東路二段80號', '225631711');
INSERT INTO "public"."t16hospital" VALUES (393, '蘇宋儒婦產科診所', 121.549167, 25.082685, '臺北市中山區北安路624號2樓', '225323833');
INSERT INTO "public"."t16hospital" VALUES (394, '世珍婦產診所', 121.54276, 25.0498, '臺北市中山區朱崙街四十六號', '227212501');
INSERT INTO "public"."t16hospital" VALUES (395, '信義婦產科診所', 121.52314, 25.059657, '臺北市中山區中山北路二段99號6樓之2', '25376991');
INSERT INTO "public"."t16hospital" VALUES (396, '鴻文婦產科診所', 121.59224, 25.082339, '臺北市內湖區成功路四段52號2樓', '227945909');
INSERT INTO "public"."t16hospital" VALUES (397, '顏鳳麟婦產科診所', 121.591469, 25.08154, '臺北市內湖區成功路四段28號2樓', '87929756');
INSERT INTO "public"."t16hospital" VALUES (398, '鍾兆智婦產科診所', 121.589223, 25.086343, '臺北市內湖區東湖路65號1Ｆ，2Ｆ及地下室', '226333356');
INSERT INTO "public"."t16hospital" VALUES (399, '陳德駿婦產科診所', 121.578966, 25.078455, '臺北市內湖區文德路8號2樓', '227974455');
INSERT INTO "public"."t16hospital" VALUES (400, '余正俊婦產科診所', 121.614788, 25.069043, '臺北市內湖區東湖路113巷5弄12－1號1樓及12號3樓', '226332072');
INSERT INTO "public"."t16hospital" VALUES (401, '梓成婦產科診所', 121.577579, 25.080049, '臺北市內湖區港墘路107號', '27996262');
INSERT INTO "public"."t16hospital" VALUES (402, '天慈婦產科診所', 121.584329, 25.045466, '臺北市南港區同德路37號1樓', '27855176');
INSERT INTO "public"."t16hospital" VALUES (403, '何英世婦產科診所', 121.524443, 25.096165, '臺北市士林區文林路482號1樓', '228317152');
INSERT INTO "public"."t16hospital" VALUES (404, '黃金喜婦產科診所', 121.509918, 25.083612, '臺北市士林區延平北路五段201號', '228118236');
INSERT INTO "public"."t16hospital" VALUES (405, '盧金成婦產科診所', 121.530536, 25.108039, '臺北市士林區忠誠路一段179號2樓', '228349704');
INSERT INTO "public"."t16hospital" VALUES (406, '李文達婦產科診所', 121.524629, 25.095592, '臺北市士林區文林路458號', '228321171');
INSERT INTO "public"."t16hospital" VALUES (407, '鄭福山婦產科診所', 121.525567, 25.109444, '臺北市士林區中山北路六段256號', '28385428');
INSERT INTO "public"."t16hospital" VALUES (408, '士林仁愛婦產科診所', 121.524045, 25.09506, '臺北市士林區中正路272號', '228326658');
INSERT INTO "public"."t16hospital" VALUES (409, '佳韻婦產科診所', 121.501239, 25.13229, '臺北市北投區中央南路一段42號2樓', '28923210');
INSERT INTO "public"."t16hospital" VALUES (410, '台北安媞婦產科診所', 121.500948, 25.129404, '臺北市北投區中央南路一段162號(實際使用：1樓)', '28939998');
INSERT INTO "public"."t16hospital" VALUES (411, '蔡賡禧婦產科診所', 121.511406, 25.113508, '臺北市北投區石牌路一段72號', '228202030');
INSERT INTO "public"."t16hospital" VALUES (412, '張智郁婦產科診所', 121.524466, 25.12245, '臺北市北投區石牌路二段三三二之二號一樓', '228740401');
INSERT INTO "public"."t16hospital" VALUES (413, '王家瑋婦產科診所', 121.558365, 25.031339, '臺北市信義區基隆路二段56號、56號地下層、58號、60號、62號', '27586966');
INSERT INTO "public"."t16hospital" VALUES (414, '彭婦產科診所', 121.572497, 25.045794, '臺北市信義區永吉路185之4號、185之1號2樓', '227666207');
INSERT INTO "public"."t16hospital" VALUES (415, '王知行婦產科診所', 121.575159, 25.045372, '臺北市信義區永吉路308號', '227624962');
INSERT INTO "public"."t16hospital" VALUES (416, '信義邱婦產科診所', 121.576858, 25.038425, '臺北市信義區虎林街198號', '02-27278275');
INSERT INTO "public"."t16hospital" VALUES (417, '柯滄銘婦產科診所', 121.518347, 25.032211, '臺北市中正區林森南路10號、10號2樓、12號2樓', '3393-3939');
INSERT INTO "public"."t16hospital" VALUES (418, '蕙瑛婦產科診所', 121.515846, 25.045969, '臺北市中正區忠孝西路一段五十號二十四樓之二十四', '23886731');
INSERT INTO "public"."t16hospital" VALUES (419, '大佳婦產科診所', 121.516604, 25.044772, '臺北市中正區信陽街9號2樓', '23888686/0928256630');
INSERT INTO "public"."t16hospital" VALUES (420, '禾馨婦產科診所', 121.51395, 25.043096, '臺北市中正區懷寧街78號、78號2樓', '23612323');
INSERT INTO "public"."t16hospital" VALUES (421, '宏孕診所', 121.532468, 25.041164, '臺北市中正區新生南路1段56號14、15樓', '25681269');
INSERT INTO "public"."t16hospital" VALUES (422, '祈新婦產科診所', 121.51395, 25.043096, '臺北市中正區懷寧街78號9、10樓', '23612323');
INSERT INTO "public"."t16hospital" VALUES (423, '江恩婦產科診所', 121.516955, 25.045425, '臺北市中正區許昌街8號', '02-23881980');
INSERT INTO "public"."t16hospital" VALUES (424, '中山婦產科診所', 121.499871, 25.038361, '臺北市萬華區桂林路114號', '223080316');
INSERT INTO "public"."t16hospital" VALUES (425, '城中瑪麗安婦產科診所', 121.506016, 25.042605, '臺北市萬華區成都路4號2樓、中華路一段158號(實際開業地址2樓)', '23813500');
INSERT INTO "public"."t16hospital" VALUES (426, '大元婦產科診所', 121.495893, 25.030491, '臺北市萬華區西園路二段140巷8號', '223088830');
INSERT INTO "public"."t16hospital" VALUES (427, '長欣婦產科診所', 121.560875, 24.986623, '臺北市文山區興隆路四段六十號一樓', '29367898');
INSERT INTO "public"."t16hospital" VALUES (428, '景美蔡登元婦產科診所', 121.549393, 25.000834, '臺北市文山區興隆路二段189號', '229331453');
INSERT INTO "public"."t16hospital" VALUES (429, '愛文診所', 121.556768, 25.000629, '臺北市文山區興隆路三段79巷3號', '29309998');
INSERT INTO "public"."t16hospital" VALUES (430, '麗心診所', 121.592665, 25.082752, '臺北市內湖區成功路四段2號3樓、6號3樓', '02-27944939');
INSERT INTO "public"."t16hospital" VALUES (431, '永恆美診所', 121.52714, 25.10468, '臺北市士林區忠誠路一段58號(實際使用：1樓及地下1、2層)', '28313107');
INSERT INTO "public"."t16hospital" VALUES (432, '台灣地區婦幼衛生中心醫療財團法人婦幼保健診所', 121.544018, 25.035442, '臺北市大安區復興南路1段285號9樓', '27056156');
INSERT INTO "public"."t16hospital" VALUES (433, '劉明真皮膚科診所', 121.517168, 25.117759, '臺北市北投區石牌路二段116號2樓', '28224735');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."hub"', 2, false);
SELECT setval('"public"."t0001member"', 2, false);
SELECT setval('"public"."t01member_id"', 2, false);
SELECT setval('"public"."t02baby_babyno"', 8, true);
SELECT setval('"public"."t03growingrecord_serno"', 5, true);
SELECT setval('"public"."t04forum_forumno"', 2, false);
SELECT setval('"public"."t05forumcomment_serno"', 2, false);
SELECT setval('"public"."t06pregnancyknowledge_serno"', 2, false);
SELECT setval('"public"."t07vaccination_serno"', 2, false);
SELECT setval('"public"."t08diary_serno"', 2, false);
SELECT setval('"public"."t09milestonedone_serno"', 2, false);
SELECT setval('"public"."t10education_serno"', 2, false);
SELECT setval('"public"."t11forumlike_serno"', 2, false);
SELECT setval('"public"."t13vaccine_vacno"', 2, false);
SELECT setval('"public"."t14milestone_msno"', 2, false);
SELECT setval('"public"."t15forumtype_typeno"', 2, false);
SELECT setval('"public"."t16hospital_hospitalno"', 2, false);
SELECT setval('"public"."testincrement"', 32, true);

-- ----------------------------
-- Primary Key structure for table t01member
-- ----------------------------
ALTER TABLE "public"."t01member" ADD CONSTRAINT "t001member_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t02baby
-- ----------------------------
ALTER TABLE "public"."t02baby" ADD CONSTRAINT "t002baby_pkey" PRIMARY KEY ("babyno");

-- ----------------------------
-- Primary Key structure for table t03growingrecord
-- ----------------------------
ALTER TABLE "public"."t03growingrecord" ADD CONSTRAINT "t003growingrecord_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t04forum
-- ----------------------------
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t004forum_pkey" PRIMARY KEY ("forumno");

-- ----------------------------
-- Primary Key structure for table t05forumcomment
-- ----------------------------
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t005forumcomment_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t06pregnancyknowledge
-- ----------------------------
ALTER TABLE "public"."t06pregnancyknowledge" ADD CONSTRAINT "t006pregnancyknowledge_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t07vaccination
-- ----------------------------
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t007vaccination_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t08diary
-- ----------------------------
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t008diary_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t09milestonedone
-- ----------------------------
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t009milestonedone_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t10education
-- ----------------------------
ALTER TABLE "public"."t10education" ADD CONSTRAINT "t010education_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t11forumlike
-- ----------------------------
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t011forumlike_pkey1" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t12manager
-- ----------------------------
ALTER TABLE "public"."t12manager" ADD CONSTRAINT "t012manager_pkey" PRIMARY KEY ("managerno");

-- ----------------------------
-- Primary Key structure for table t13vaccine
-- ----------------------------
ALTER TABLE "public"."t13vaccine" ADD CONSTRAINT "t013vaccine_pkey1" PRIMARY KEY ("vacno");

-- ----------------------------
-- Primary Key structure for table t14milestone
-- ----------------------------
ALTER TABLE "public"."t14milestone" ADD CONSTRAINT "t014milestone_pkey1" PRIMARY KEY ("msno");

-- ----------------------------
-- Primary Key structure for table t15forumtype
-- ----------------------------
ALTER TABLE "public"."t15forumtype" ADD CONSTRAINT "t015forumtype_pkey1" PRIMARY KEY ("typeno");

-- ----------------------------
-- Primary Key structure for table t16hospital
-- ----------------------------
ALTER TABLE "public"."t16hospital" ADD CONSTRAINT "t016hospital_pkey1" PRIMARY KEY ("hospitalno");

-- ----------------------------
-- Foreign Keys structure for table t02baby
-- ----------------------------
ALTER TABLE "public"."t02baby" ADD CONSTRAINT "t01id" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t03growingrecord
-- ----------------------------
ALTER TABLE "public"."t03growingrecord" ADD CONSTRAINT "t03babyno" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t04forum
-- ----------------------------
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t01" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t15" FOREIGN KEY ("typeno") REFERENCES "public"."t15forumtype" ("typeno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t05forumcomment
-- ----------------------------
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t01" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t04" FOREIGN KEY ("forumno") REFERENCES "public"."t04forum" ("forumno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t06pregnancyknowledge
-- ----------------------------
ALTER TABLE "public"."t06pregnancyknowledge" ADD CONSTRAINT "t12" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t07vaccination
-- ----------------------------
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t02" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t13" FOREIGN KEY ("vacno") REFERENCES "public"."t13vaccine" ("vacno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t16" FOREIGN KEY ("hospitalno") REFERENCES "public"."t16hospital" ("hospitalno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t08diary
-- ----------------------------
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t01" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t09milestonedone
-- ----------------------------
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t02" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t14" FOREIGN KEY ("msno") REFERENCES "public"."t14milestone" ("msno") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table t10education
-- ----------------------------
ALTER TABLE "public"."t10education" ADD CONSTRAINT "t12" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t11forumlike
-- ----------------------------
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t01" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t04" FOREIGN KEY ("forumno") REFERENCES "public"."t04forum" ("forumno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t13vaccine
-- ----------------------------
ALTER TABLE "public"."t13vaccine" ADD CONSTRAINT "t12" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t14milestone
-- ----------------------------
ALTER TABLE "public"."t14milestone" ADD CONSTRAINT "t12" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t15forumtype
-- ----------------------------
ALTER TABLE "public"."t15forumtype" ADD CONSTRAINT "t12" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE RESTRICT ON UPDATE RESTRICT;
