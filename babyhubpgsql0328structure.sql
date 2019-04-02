/*
rvarbkqmsjkzkfQL Backup
Database: dbmec8fob52so1/public
Backup Time: 2019-03-28 22:06:36
*/

DROP TABLE IF EXISTS "public"."t01member";
DROP TABLE IF EXISTS "public"."t02baby";
DROP TABLE IF EXISTS "public"."t03growingrecord";
DROP TABLE IF EXISTS "public"."t04forum";
DROP TABLE IF EXISTS "public"."t05forumcomment";
DROP TABLE IF EXISTS "public"."t06pregnancyknowledge";
DROP TABLE IF EXISTS "public"."t07vaccination";
DROP TABLE IF EXISTS "public"."t08diary";
DROP TABLE IF EXISTS "public"."t09milestonedone";
DROP TABLE IF EXISTS "public"."t10education";
DROP TABLE IF EXISTS "public"."t11forumlike";
DROP TABLE IF EXISTS "public"."t12manager";
DROP TABLE IF EXISTS "public"."t13vaccine";
DROP TABLE IF EXISTS "public"."t14milestone";
DROP TABLE IF EXISTS "public"."t15forumtype";
DROP TABLE IF EXISTS "public"."t16hospital";
CREATE TABLE "public"."t01member" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "displayname" varchar(50) COLLATE "pg_catalog"."default",
  "password" varchar(20) COLLATE "pg_catalog"."default",
  "appellation" varchar(20) COLLATE "pg_catalog"."default",
  "lineid" varchar(50) COLLATE "pg_catalog"."default",
  "code" char(6) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t01member" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t02baby" (
  "babyno" int2 NOT NULL,
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "birthday" date,
  "gender" char(2) COLLATE "pg_catalog"."default",
  "photo" varchar(500) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t02baby" OWNER TO "rvarbkqmsjkzkf";COMMENT ON COLUMN "public"."t02baby"."babyno" IS 'AI';
CREATE TABLE "public"."t03growingrecord" (
  "serno" int4 NOT NULL,
  "babyno" int4,
  "recorddatetime" time(6),
  "height" float8,
  "weight" float8
)
;ALTER TABLE "public"."t03growingrecord" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t04forum" (
  "forumno" int4 NOT NULL,
  "typeno" int4,
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "forum" varchar(255) COLLATE "pg_catalog"."default",
  "forumname" varchar(255) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t04forum" OWNER TO "rvarbkqmsjkzkf";COMMENT ON COLUMN "public"."t04forum"."forumno" IS 'ai';
CREATE TABLE "public"."t05forumcomment" (
  "serno" int4 NOT NULL,
  "forumno" int4,
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "comdatetime" time(6),
  "content" text COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t05forumcomment" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t06pregnancyknowledge" (
  "serno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default",
  "title" varchar(20) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "source" varchar(255) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t06pregnancyknowledge" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t07vaccination" (
  "serno" int4 NOT NULL,
  "babyno" int4,
  "vacno" int4,
  "hospitalno" int4,
  "vaccination" varchar(10) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t07vaccination" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t08diary" (
  "serno" int4 NOT NULL,
  "babyno" int4,
  "id" varchar(10) COLLATE "pg_catalog"."default",
  "diarydate" date,
  "diary" text COLLATE "pg_catalog"."default",
  "dvideo" varchar(500) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t08diary" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t09milestonedone" (
  "serno" int4 NOT NULL,
  "babyno" int4,
  "msno" int4,
  "reach" char(10) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t09milestonedone" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t10education" (
  "serno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default",
  "title" varchar(20) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t10education" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t11forumlike" (
  "serno" int4 NOT NULL,
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "forumno" int4
)
;ALTER TABLE "public"."t11forumlike" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t12manager" (
  "managerno" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(20) COLLATE "pg_catalog"."default",
  "name" varchar(10) COLLATE "pg_catalog"."default",
  "cellphone" char(10) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t12manager" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t13vaccine" (
  "vacno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default",
  "varname" varchar(50) COLLATE "pg_catalog"."default",
  "varage" int2,
  "vacreaction" text COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t13vaccine" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t14milestone" (
  "msno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default",
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "mvideo" varchar(500) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t14milestone" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t15forumtype" (
  "typeno" int4 NOT NULL,
  "managerno" varchar(20) COLLATE "pg_catalog"."default",
  "name" varchar(20) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t15forumtype" OWNER TO "rvarbkqmsjkzkf";
CREATE TABLE "public"."t16hospital" (
  "hospitalno" int4 NOT NULL,
  "name" varchar(20) COLLATE "pg_catalog"."default",
  "longitude" float4,
  "latitude" float4,
  "address" varchar(50) COLLATE "pg_catalog"."default",
  "phone" varchar(10) COLLATE "pg_catalog"."default"
)
;ALTER TABLE "public"."t16hospital" OWNER TO "rvarbkqmsjkzkf";
BEGIN;
LOCK TABLE "public"."t01member" IN SHARE MODE;
DELETE FROM "public"."t01member";
COMMIT;
BEGIN;
LOCK TABLE "public"."t02baby" IN SHARE MODE;
DELETE FROM "public"."t02baby";
COMMIT;
BEGIN;
LOCK TABLE "public"."t03growingrecord" IN SHARE MODE;
DELETE FROM "public"."t03growingrecord";
COMMIT;
BEGIN;
LOCK TABLE "public"."t04forum" IN SHARE MODE;
DELETE FROM "public"."t04forum";
COMMIT;
BEGIN;
LOCK TABLE "public"."t05forumcomment" IN SHARE MODE;
DELETE FROM "public"."t05forumcomment";
COMMIT;
BEGIN;
LOCK TABLE "public"."t06pregnancyknowledge" IN SHARE MODE;
DELETE FROM "public"."t06pregnancyknowledge";
COMMIT;
BEGIN;
LOCK TABLE "public"."t07vaccination" IN SHARE MODE;
DELETE FROM "public"."t07vaccination";
COMMIT;
BEGIN;
LOCK TABLE "public"."t08diary" IN SHARE MODE;
DELETE FROM "public"."t08diary";
COMMIT;
BEGIN;
LOCK TABLE "public"."t09milestonedone" IN SHARE MODE;
DELETE FROM "public"."t09milestonedone";
COMMIT;
BEGIN;
LOCK TABLE "public"."t10education" IN SHARE MODE;
DELETE FROM "public"."t10education";
COMMIT;
BEGIN;
LOCK TABLE "public"."t11forumlike" IN SHARE MODE;
DELETE FROM "public"."t11forumlike";
COMMIT;
BEGIN;
LOCK TABLE "public"."t12manager" IN SHARE MODE;
DELETE FROM "public"."t12manager";
COMMIT;
BEGIN;
LOCK TABLE "public"."t13vaccine" IN SHARE MODE;
DELETE FROM "public"."t13vaccine";
COMMIT;
BEGIN;
LOCK TABLE "public"."t14milestone" IN SHARE MODE;
DELETE FROM "public"."t14milestone";
COMMIT;
BEGIN;
LOCK TABLE "public"."t15forumtype" IN SHARE MODE;
DELETE FROM "public"."t15forumtype";
COMMIT;
BEGIN;
LOCK TABLE "public"."t16hospital" IN SHARE MODE;
DELETE FROM "public"."t16hospital";
COMMIT;
ALTER TABLE "public"."t01member" ADD CONSTRAINT "t01member_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t02baby" ADD CONSTRAINT "t02baby_pkey" PRIMARY KEY ("babyno");
ALTER TABLE "public"."t02baby" ADD CONSTRAINT "t01id" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t03growingrecord" ADD CONSTRAINT "t03growingrecord_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t03growingrecord" ADD CONSTRAINT "t02babyno" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t04forum_pkey" PRIMARY KEY ("forumno");
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t01id" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t04forum" ADD CONSTRAINT "t15forumtype" FOREIGN KEY ("typeno") REFERENCES "public"."t15forumtype" ("typeno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t05forumcomment_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t01id" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t05forumcomment" ADD CONSTRAINT "t04forumno" FOREIGN KEY ("forumno") REFERENCES "public"."t04forum" ("forumno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t06pregnancyknowledge" ADD CONSTRAINT "t06pregnancyknowledge_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t06pregnancyknowledge" ADD CONSTRAINT "t12managerno" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t07vaccination_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t02babyno" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t13vacno" FOREIGN KEY ("vacno") REFERENCES "public"."t13vaccine" ("vacno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t07vaccination" ADD CONSTRAINT "t16hospitalno" FOREIGN KEY ("hospitalno") REFERENCES "public"."t16hospital" ("hospitalno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t08diary_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t01id" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t08diary" ADD CONSTRAINT "t02babyno" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t09milestonedone_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t02babyno" FOREIGN KEY ("babyno") REFERENCES "public"."t02baby" ("babyno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t09milestonedone" ADD CONSTRAINT "t14msno" FOREIGN KEY ("msno") REFERENCES "public"."t14milestone" ("msno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t10education" ADD CONSTRAINT "t10education_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t10education" ADD CONSTRAINT "t12managerno" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t11forumlike_pkey" PRIMARY KEY ("serno");
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t01id" FOREIGN KEY ("id") REFERENCES "public"."t01member" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t11forumlike" ADD CONSTRAINT "t04forumno" FOREIGN KEY ("forumno") REFERENCES "public"."t04forum" ("forumno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t12manager" ADD CONSTRAINT "t12manager_pkey" PRIMARY KEY ("managerno");
ALTER TABLE "public"."t13vaccine" ADD CONSTRAINT "t13vaccine_pkey" PRIMARY KEY ("vacno");
ALTER TABLE "public"."t13vaccine" ADD CONSTRAINT "t12managerno" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t14milestone" ADD CONSTRAINT "t14milestone_pkey" PRIMARY KEY ("msno");
ALTER TABLE "public"."t14milestone" ADD CONSTRAINT "t12managerno" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t15forumtype" ADD CONSTRAINT "t15forumtype_pkey" PRIMARY KEY ("typeno");
ALTER TABLE "public"."t15forumtype" ADD CONSTRAINT "t12managerno" FOREIGN KEY ("managerno") REFERENCES "public"."t12manager" ("managerno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t16hospital" ADD CONSTRAINT "t16hospital_pkey" PRIMARY KEY ("hospitalno");
