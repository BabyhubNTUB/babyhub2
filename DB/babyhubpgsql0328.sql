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

 Date: 29/03/2019 12:51:21
*/


-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS "member";
CREATE TABLE "member" (
  "no" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table member
-- ----------------------------
ALTER TABLE "member" ADD CONSTRAINT "member_pkey" PRIMARY KEY ("no");
