/*
 Navicat PostgreSQL Data Transfer

 Source Server         : howhero
 Source Server Type    : PostgreSQL
 Source Server Version : 110002
 Source Host           : ec2-107-20-177-161.compute-1.amazonaws.com:5432
 Source Catalog        : dbmec8fob52so1
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110002
 File Encoding         : 65001

 Date: 29/03/2019 18:21:36
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
-- Table structure for t03growingrecord
-- ----------------------------
DROP TABLE IF EXISTS "public"."t03growingrecord";
CREATE TABLE "public"."t03growingrecord" (
  "serno" int4 NOT NULL,
  "babyno" int4,
  "recorddatetime" time(6),
  "height" float8,
  "weight" float8
)
;

-- ----------------------------
-- Table structure for t04forum
-- ----------------------------
DROP TABLE IF EXISTS "public"."t04forum";
CREATE TABLE "public"."t04forum" (
  "forumno" int4 NOT NULL,
  "typeno" int4 NOT NULL,
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "forum" varchar(255) COLLATE "pg_catalog"."default",
  "forumname" varchar(255) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default"
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
