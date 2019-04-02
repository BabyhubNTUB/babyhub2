/*
 Navicat PostgreSQL Data Transfer

 Source Server         : test
 Source Server Type    : PostgreSQL
 Source Server Version : 110002
 Source Host           : ec2-107-20-177-161.compute-1.amazonaws.com:5432
 Source Catalog        : d760avjlss7si7
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110002
 File Encoding         : 65001

 Date: 29/03/2019 19:25:02
*/


-- ----------------------------
-- Table structure for t01member
-- ----------------------------
DROP TABLE IF EXISTS "public"."t01member";
CREATE TABLE "public"."t01member" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "displayname" varchar(50) COLLATE "pg_catalog"."default",
  "password" varchar(20) COLLATE "pg_catalog"."default",
  "appellation" varchar(20) COLLATE "pg_catalog"."default",
  "lineid" varchar(50) COLLATE "pg_catalog"."default",
  "code" char(6) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t01member
-- ----------------------------
INSERT INTO "public"."t01member" VALUES ('10456004@ntub.edu.tw', '劉安', '0123456789', '爸爸', NULL, NULL);
INSERT INTO "public"."t01member" VALUES ('10456005@ntub.edu.tw', '楊堺儱', '0987654321', '爸爸', NULL, NULL);
INSERT INTO "public"."t01member" VALUES ('10456023@ntub.edu.tw', '鄭心慈', '0923847372', '媽媽', NULL, NULL);
INSERT INTO "public"."t01member" VALUES ('10456048@ntub.edu.tw', '林++', '0983743732', '爸爸', NULL, NULL);

-- ----------------------------
-- Table structure for t02baby
-- ----------------------------
DROP TABLE IF EXISTS "public"."t02baby";
CREATE TABLE "public"."t02baby" (
  "babyno" int2 NOT NULL,
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "birthday" date,
  "gender" char(2) COLLATE "pg_catalog"."default",
  "photo" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t02baby"."babyno" IS 'AI';

-- ----------------------------
-- Records of t02baby
-- ----------------------------
INSERT INTO "public"."t02baby" VALUES (1, '10456004@ntub.edu.tw', '小安', '2018-09-26', '男孩', NULL);
INSERT INTO "public"."t02baby" VALUES (2, '10456005@ntub.edu.tw', 'JJ', '2018-09-27', '男孩', NULL);
INSERT INTO "public"."t02baby" VALUES (3, '10456023@ntub.edu.tw', '嬌嬌', '2018-10-30', '女孩', NULL);
INSERT INTO "public"."t02baby" VALUES (4, '10456048@ntub.edu.tw', '羊佳', '2018-10-31', '女孩', NULL);

-- ----------------------------
-- Table structure for t03growingrecord
-- ----------------------------
DROP TABLE IF EXISTS "public"."t03growingrecord";
CREATE TABLE "public"."t03growingrecord" (
  "serno" int4 NOT NULL,
  "babyno" int4,
  "recorddatetime" time(6),
  "height" float8,
  "weight" float8,
  "drinkmilk" int4
)
;

-- ----------------------------
-- Records of t03growingrecord
-- ----------------------------
INSERT INTO "public"."t03growingrecord" VALUES (1, 1, '00:00:00', 55, 4000, 150);
INSERT INTO "public"."t03growingrecord" VALUES (2, 2, '00:00:00', 52, 3600, 120);
INSERT INTO "public"."t03growingrecord" VALUES (3, 3, '00:00:00', 60, 5000, 220);
INSERT INTO "public"."t03growingrecord" VALUES (4, 4, '00:00:00', 56, 4300, 200);

-- ----------------------------
-- Table structure for t04forum
-- ----------------------------
DROP TABLE IF EXISTS "public"."t04forum";
CREATE TABLE "public"."t04forum" (
  "forumno" int4 NOT NULL,
  "typeno" int4 NOT NULL,
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "forumname" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fourmdatetime" time(0) NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t04forum"."forumno" IS 'ai';

-- ----------------------------
-- Table structure for t05forumcomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t05forumcomment";
CREATE TABLE "public"."t05forumcomment" (
  "serno" int4 NOT NULL,
  "forumno" int4,
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "comdatetime" time(6),
  "content" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for t06pregnancyknowledge
-- ----------------------------
DROP TABLE IF EXISTS "public"."t06pregnancyknowledge";
CREATE TABLE "public"."t06pregnancyknowledge" (
  "serno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "source" varchar(255) COLLATE "pg_catalog"."default"
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
  "serno" int4 NOT NULL,
  "babyno" int4,
  "vacno" int4,
  "vaccination" int4,
  "hospitalno" int4,
  "vacdate" date
)
;
COMMENT ON COLUMN "public"."t07vaccination"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t07vaccination"."babyno" IS 'T02';
COMMENT ON COLUMN "public"."t07vaccination"."vacno" IS 'T13';
COMMENT ON COLUMN "public"."t07vaccination"."hospitalno" IS 'T16';

-- ----------------------------
-- Table structure for t08diary
-- ----------------------------
DROP TABLE IF EXISTS "public"."t08diary";
CREATE TABLE "public"."t08diary" (
  "serno" int4 NOT NULL,
  "babyno" int4 NOT NULL,
  "id" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "diarydate" date NOT NULL,
  "diary" text COLLATE "pg_catalog"."default" NOT NULL,
  "dvideo" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t08diary"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t08diary"."babyno" IS 'T02';
COMMENT ON COLUMN "public"."t08diary"."id" IS 'T01';
COMMENT ON COLUMN "public"."t08diary"."diary" IS 'rich editor';

-- ----------------------------
-- Table structure for t09milestonedone
-- ----------------------------
DROP TABLE IF EXISTS "public"."t09milestonedone";
CREATE TABLE "public"."t09milestonedone" (
  "serno" int4 NOT NULL,
  "babyno" int4 NOT NULL,
  "msno" int4 NOT NULL,
  "reach" char(10) COLLATE "pg_catalog"."default" NOT NULL,
  "reachdate" date
)
;
COMMENT ON COLUMN "public"."t09milestonedone"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t09milestonedone"."babyno" IS 'T02';
COMMENT ON COLUMN "public"."t09milestonedone"."msno" IS 'T14';

-- ----------------------------
-- Table structure for t10education
-- ----------------------------
DROP TABLE IF EXISTS "public"."t10education";
CREATE TABLE "public"."t10education" (
  "serno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "source" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."t10education"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t10education"."managerno" IS 'T12';

-- ----------------------------
-- Table structure for t11forumlike
-- ----------------------------
DROP TABLE IF EXISTS "public"."t11forumlike";
CREATE TABLE "public"."t11forumlike" (
  "serno" int4 NOT NULL,
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "forumno" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."t11forumlike"."serno" IS 'AI';
COMMENT ON COLUMN "public"."t11forumlike"."id" IS 'T01';
COMMENT ON COLUMN "public"."t11forumlike"."forumno" IS 'T04';

-- ----------------------------
-- Table structure for t12manager
-- ----------------------------
DROP TABLE IF EXISTS "public"."t12manager";
CREATE TABLE "public"."t12manager" (
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "cellphone" char(10) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t12manager"."password" IS '加密';

-- ----------------------------
-- Records of t12manager
-- ----------------------------
INSERT INTO "public"."t12manager" VALUES ('H1022', 'hhh3333', '林萬豪', '0983960930');
INSERT INTO "public"."t12manager" VALUES ('J0903', 'jjj1111', '沈冠廷', '0978176065');
INSERT INTO "public"."t12manager" VALUES ('L0816', 'l5252', '許佑綺', '0973447185');
INSERT INTO "public"."t12manager" VALUES ('V0124', 'v1515', '廖翊晴', '0975023609');

-- ----------------------------
-- Table structure for t13vaccine
-- ----------------------------
DROP TABLE IF EXISTS "public"."t13vaccine";
CREATE TABLE "public"."t13vaccine" (
  "vacno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "varname" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "varage" int2,
  "vacreaction" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t13vaccine"."vacno" IS 'AI';
COMMENT ON COLUMN "public"."t13vaccine"."managerno" IS 'T12';
COMMENT ON COLUMN "public"."t13vaccine"."varage" IS '出生後幾天';

-- ----------------------------
-- Table structure for t14milestone
-- ----------------------------
DROP TABLE IF EXISTS "public"."t14milestone";
CREATE TABLE "public"."t14milestone" (
  "msno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
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
INSERT INTO "public"."t14milestone" VALUES (0, 'J0903', '長牙', '長出第一顆牙');

-- ----------------------------
-- Table structure for t15forumtype
-- ----------------------------
DROP TABLE IF EXISTS "public"."t15forumtype";
CREATE TABLE "public"."t15forumtype" (
  "typeno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t15forumtype"."typeno" IS 'AI';
COMMENT ON COLUMN "public"."t15forumtype"."managerno" IS 'T12';

-- ----------------------------
-- Table structure for t16hospital
-- ----------------------------
DROP TABLE IF EXISTS "public"."t16hospital";
CREATE TABLE "public"."t16hospital" (
  "hospitalno" int4 NOT NULL,
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "longitude" float4 NOT NULL,
  "latitude" float4 NOT NULL,
  "address" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(10) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."t16hospital"."hospitalno" IS 'AI';

-- ----------------------------
-- Primary Key structure for table t01member
-- ----------------------------
ALTER TABLE "public"."t01member" ADD CONSTRAINT "t01member_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t02baby
-- ----------------------------
ALTER TABLE "public"."t02baby" ADD CONSTRAINT "t02baby_pkey" PRIMARY KEY ("babyno");

-- ----------------------------
-- Primary Key structure for table t03growingrecord
-- ----------------------------
ALTER TABLE "public"."t03growingrecord" ADD CONSTRAINT "t03growingrecord_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t04forum
-- ----------------------------
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t04forum_pkey" PRIMARY KEY ("forumno");

-- ----------------------------
-- Primary Key structure for table t06pregnancyknowledge
-- ----------------------------
ALTER TABLE "public"."t06pregnancyknowledge" ADD CONSTRAINT "t06pregnancyknowledge_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t07vaccination
-- ----------------------------
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t07vaccination_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t08diary
-- ----------------------------
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t08diary_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t09milestonedone
-- ----------------------------
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t09milestonedone_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t10education
-- ----------------------------
ALTER TABLE "public"."t10education" ADD CONSTRAINT "t10education_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t11forumlike
-- ----------------------------
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t11forumlike_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Primary Key structure for table t12manager
-- ----------------------------
ALTER TABLE "public"."t12manager" ADD CONSTRAINT "t12manager_pkey" PRIMARY KEY ("managerno");

-- ----------------------------
-- Primary Key structure for table t13vaccine
-- ----------------------------
ALTER TABLE "public"."t13vaccine" ADD CONSTRAINT "t13vaccine_pkey" PRIMARY KEY ("vacno");

-- ----------------------------
-- Primary Key structure for table t14milestone
-- ----------------------------
ALTER TABLE "public"."t14milestone" ADD CONSTRAINT "t14milestone_pkey" PRIMARY KEY ("msno");

-- ----------------------------
-- Primary Key structure for table t15forumtype
-- ----------------------------
ALTER TABLE "public"."t15forumtype" ADD CONSTRAINT "t15forumtype_pkey" PRIMARY KEY ("typeno");

-- ----------------------------
-- Primary Key structure for table t16hospital
-- ----------------------------
ALTER TABLE "public"."t16hospital" ADD CONSTRAINT "t16hospital_pkey" PRIMARY KEY ("hospitalno");

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
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t04" FOREIGN KEY ("serno") REFERENCES "public"."t04forum" ("forumno") ON DELETE RESTRICT ON UPDATE RESTRICT;

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
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t02" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table t09milestonedone
-- ----------------------------
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t02" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t14" FOREIGN KEY ("msno") REFERENCES "public"."t14milestone" ("msno") ON DELETE RESTRICT ON UPDATE RESTRICT;

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
