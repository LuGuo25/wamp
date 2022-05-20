/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2022/01/02 17:58:21                          */
/*==============================================================*/

CREATE DATABASE IF NOT EXISTS shoeshop55122005125 DEFAULT CHARACTER SET utf8;
USE shoeshop55122005125;#打开数据库

DROP TABLE IF EXISTS account55122005125;

DROP TABLE IF EXISTS orders55122005125;

DROP TABLE IF EXISTS product55122005125;

DROP TABLE IF EXISTS category55122005125;

DROP TABLE IF EXISTS lineitem55122005125;

/*==============================================================*/
/* Table: account55122005125                                    */
/*==============================================================*/
CREATE TABLE account55122005125
(
   userid       INT NOT NULL AUTO_INCREMENT,

   fullname	VARCHAR(50) NOT NULL UNIQUE,
   upassword    VARCHAR(50) NOT NULL,
   sex          CHAR(1),
   uaddress	VARCHAR(40),
   email	VARCHAR(20),
   phone        VARCHAR(11),
   birthday	DATE,
   hobby	VARCHAR(100),
   imagefile	VARCHAR(50),
   PRIMARY KEY (userid)
);

/*==============================================================*/
/* Table: category55122005125                                    */
/*==============================================================*/
CREATE TABLE category55122005125
(
  catid		CHAR(2) NOT NULL,
  catname	VARCHAR(20),
  cades		TEXT,
  PRIMARY KEY (catid)
);

/*==============================================================*/
/* Table: products55122005125                                    */
/*==============================================================*/
CREATE TABLE products55122005125
(
  productid	CHAR(8) NOT NULL,
  catid		CHAR(2),
  NAME 		VARCHAR(30),
  descn		TEXT,
  listprice	DECIMAL(20,10),
  unitcost	DECIMAL(20,10),
  qty		INT DEFAULT 1,
  
  brand		VARCHAR(30),
  intradution	VARCHAR(30),
  color		VARCHAR(5),
  PRIMARY KEY (productid)
);

