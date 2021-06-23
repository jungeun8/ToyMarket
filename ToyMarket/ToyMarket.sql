
/* Drop Tables */

DROP TABLE TOY_BESTSELLER_PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE TOY_CART CASCADE CONSTRAINTS;
DROP TABLE TOY_NEW_ARRIVAL_PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE TOY_REVIEW_LIKE_CUSTOMERS CASCADE CONSTRAINTS;
DROP TABLE TOY_PRODUCT_REVIEWS CASCADE CONSTRAINTS;
DROP TABLE TOY_ORDER_ITEMS CASCADE CONSTRAINTS;
DROP TABLE TOY_PRODUCT_INQUIRY CASCADE CONSTRAINTS;
DROP TABLE TOY_SPECIAL_DISCOUNT_PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE TOY_PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE TOY_CATEGORIES CASCADE CONSTRAINTS;
DROP TABLE TOY_CUSTOMER_POINT_HISTORY CASCADE CONSTRAINTS;
DROP TABLE TOY_ORDER CASCADE CONSTRAINTS;
DROP TABLE TOY_CUSTOMER CASCADE CONSTRAINTS;

/* Drop Sequence */

DROP SEQUENCE CART_SEQ;
DROP SEQUENCE CATEGORIES_SEQ;
DROP SEQUENCE CUSTOMER_SEQ;
DROP SEQUENCE CUSTOMER_POINT_HISTORY_SEQ;
DROP SEQUENCE ORDER_SEQ;
DROP SEQUENCE ORDER_ITEMS_SEQ;
DROP SEQUENCE PRODUCTS_SEQ;
DROP SEQUENCE PRODUCT_INQUIRY_SEQ;
DROP SEQUENCE PRODUCT_REVIEWS_SEQ;


/* Create Tables */

CREATE TABLE TOY_BESTSELLER_PRODUCTS
(
	PRODUCT_NO number(8) NOT NULL
);


CREATE TABLE TOY_CART
(
	CART_NO number(8) NOT NULL,
	PRODUCT_NO number(8) NOT NULL,
	PRODUCT_BUY_PRICE number(8),
	PRODUCT_AMOUNT number(8),
	CUSTOMER_NO number(8) NOT NULL,
	CART_CREATED_DATE date,
	PRIMARY KEY (CART_NO)
);


CREATE TABLE TOY_CATEGORIES
(
	CATEGORY_NO number(3,0) NOT NULL,
	CATEGORY_NAME varchar2(255) NOT NULL,
	PRIMARY KEY (CATEGORY_NO)
);


CREATE TABLE TOY_CUSTOMER
(
	CUSTOMER_NO number(8) NOT NULL,
	CUSTOMER_ID varchar2(255) NOT NULL UNIQUE,
	CUSTOMER_PASSWORD char(64) NOT NULL,
	CUSTOMER_NAME varchar2(255) NOT NULL,
	CUSTOMER_EMAIL varchar2(255) NOT NULL UNIQUE,
	CUSTOMER_PHONE varchar2(255) NOT NULL,
	CUSTOMER_POSTAL_CODE char(5),
	CUSTOMER_ADDRESS1 varchar2(255),
	CUSTOMER_ADDRESS2 varchar2(255),
	CUSTOMER_GENDER char(6),
	CUSTOMER_AGREEMENT char(1),
	CUSTOMER_POINT number(9) DEFAULT 0,
	CUSTOMER_BIRTH char(10),
	CUSTOMER_EXPIRED char DEFAULT 'N',
	CUSTOMER_CREATED_DATE date DEFAULT sysdate,
	CUSTOMER_DELETED_DATE date,
	PRIMARY KEY (CUSTOMER_NO)
);


CREATE TABLE TOY_CUSTOMER_POINT_HISTORY
(
	POINT_NO number(8) NOT NULL,
	CUSTOMER_NO number(8) NOT NULL,
	POINT_DESCRIPTION varchar2(255),
	POINT_AMOUNT number(8),
	POINT_CREATED_DATE date DEFAULT SYSDATE,
	PRIMARY KEY (POINT_NO)
);


CREATE TABLE TOY_NEW_ARRIVAL_PRODUCTS
(
	PRODUCT_NO number(8) NOT NULL
);


CREATE TABLE TOY_ORDER
(
	ORDER_NO number(8) NOT NULL,
	TOTAL_ORDER_PRICE number(8),
	TOTAL_ORDER_AMOUNT number(8),
	TOTAL_USED_POINT number(8),
	ORDER_PAY_TYPE varchar2(255),
	TOTAL_PAY_PRICE number(8),
	TOTAL_DEPOSIT_POINT number(8),
	ORDER_STATUS varchar2(255),
	ORDER_CREATED_DATE date,
	CUSTOMER_NO number(8) NOT NULL,
	ORDER_ADDRESS1 varchar2(255) NOT NULL,
	ORDER_ADDRESS2 varchar2(255) NOT NULL,
	PRIMARY KEY (ORDER_NO)
);


CREATE TABLE TOY_ORDER_ITEMS
(
	ORDER_ITEM_NO number(8) NOT NULL,
	ORDER_NO number(8) NOT NULL,
	PRODUCT_NO number(8) NOT NULL,
	PRICE_PRICE number(8),
	ORDER_AMOUNT number(8),
	ORDER_PRICE number(8),
	PRIMARY KEY (ORDER_ITEM_NO)
);


CREATE TABLE TOY_PRODUCTS
(
	PRODUCT_NO number(8) NOT NULL,
	CATEGORY_NO number(3,0) NOT NULL,
	PRODUCT_BRAND varchar2(20) NOT NULL,
	PRODUCT_NAME varchar2(20) NOT NULL,
	PRODUCT_PRICE number(8) NOT NULL,
	PRODUCT_DISCOUNT_RATE number(3,3) DEFAULT 0,
	PRODUCT_DISCOUNT_YN char(1) DEFAULT 'N',
	PRODUCT_LIKE_COUNT number(8) DEFAULT 0,
	PRODUCT_SELL_UNIT varchar2(20) NOT NULL,
	PRODUCT_WEIGHT varchar2(40) NOT NULL,
	PRODUCT_MORNING_DELIVERY_YN char(1) DEFAULT 'N',
	PRODUCT_DESCRIPTION varchar2(2000) NOT NULL,
	PRODUCT_STOCK number(8) DEFAULT 0,
	PRODUCT_CREATED_DATE date DEFAULT sysdate,
	PRODUCT_STATUS varchar2(10) DEFAULT '판매',
	PRODUCT_IMAGE varchar2(4000),
	PRODUCT_SUB_TITLE varchar2(255),
	PRIMARY KEY (PRODUCT_NO)
);


CREATE TABLE TOY_PRODUCT_INQUIRY
(
	INQUIRY_NO number(8) NOT NULL,
	INQUIRY_TITLE varchar2(255) NOT NULL,
	INQUIRY_CONTENT varchar2(2000) NOT NULL,
	INQUIRY_REPLY_CONTENT varchar2(2000),
	INQUIRY_STATUS varchar2(255),
	INQUIRY_CREATED_DATE date DEFAULT SYSDATE,
	INQUIRY_REPLY_CREATED_DATE date,
	PRODUCT_NO number(8) NOT NULL,
	CUSTOMER_NO number(8) NOT NULL,
	INQUIRY_SECRET_YN char(1) DEFAULT 'N',
	PRIMARY KEY (INQUIRY_NO)
);


CREATE TABLE TOY_PRODUCT_REVIEWS
(
	REVIEW_NO number(8) NOT NULL,
	REVIEW_TITLE varchar2(40) NOT NULL,
	REVIEW_CONTENT varchar2(2000) NOT NULL,
	REVIEW_LIKE_COUNT number(8) DEFAULT 0,
	REVIEW_CREATED_DATE date DEFAULT sysdate,
	ORDER_ITEM_NO number(8) NOT NULL,
	PRIMARY KEY (REVIEW_NO)
);


CREATE TABLE TOY_REVIEW_LIKE_CUSTOMERS
(
	REVIEW_NO number(8) NOT NULL,
	CUSTOMER_NO number(8) NOT NULL
);


CREATE TABLE TOY_SPECIAL_DISCOUNT_PRODUCTS
(
	PRODUCT_NO number(8) NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE TOY_PRODUCTS
	ADD FOREIGN KEY (CATEGORY_NO)
	REFERENCES TOY_CATEGORIES (CATEGORY_NO)
;


ALTER TABLE TOY_CART
	ADD FOREIGN KEY (CUSTOMER_NO)
	REFERENCES TOY_CUSTOMER (CUSTOMER_NO)
;


ALTER TABLE TOY_CUSTOMER_POINT_HISTORY
	ADD FOREIGN KEY (CUSTOMER_NO)
	REFERENCES TOY_CUSTOMER (CUSTOMER_NO)
;


ALTER TABLE TOY_ORDER
	ADD FOREIGN KEY (CUSTOMER_NO)
	REFERENCES TOY_CUSTOMER (CUSTOMER_NO)
;


ALTER TABLE TOY_PRODUCT_INQUIRY
	ADD FOREIGN KEY (CUSTOMER_NO)
	REFERENCES TOY_CUSTOMER (CUSTOMER_NO)
;


ALTER TABLE TOY_REVIEW_LIKE_CUSTOMERS
	ADD FOREIGN KEY (CUSTOMER_NO)
	REFERENCES TOY_CUSTOMER (CUSTOMER_NO)
;


ALTER TABLE TOY_ORDER_ITEMS
	ADD FOREIGN KEY (ORDER_NO)
	REFERENCES TOY_ORDER (ORDER_NO)
;


ALTER TABLE TOY_PRODUCT_REVIEWS
	ADD FOREIGN KEY (ORDER_ITEM_NO)
	REFERENCES TOY_ORDER_ITEMS (ORDER_ITEM_NO)
;


ALTER TABLE TOY_BESTSELLER_PRODUCTS
	ADD FOREIGN KEY (PRODUCT_NO)
	REFERENCES TOY_PRODUCTS (PRODUCT_NO)
;


ALTER TABLE TOY_CART
	ADD FOREIGN KEY (PRODUCT_NO)
	REFERENCES TOY_PRODUCTS (PRODUCT_NO)
;


ALTER TABLE TOY_NEW_ARRIVAL_PRODUCTS
	ADD FOREIGN KEY (PRODUCT_NO)
	REFERENCES TOY_PRODUCTS (PRODUCT_NO)
;


ALTER TABLE TOY_ORDER_ITEMS
	ADD FOREIGN KEY (PRODUCT_NO)
	REFERENCES TOY_PRODUCTS (PRODUCT_NO)
;


ALTER TABLE TOY_PRODUCT_INQUIRY
	ADD FOREIGN KEY (PRODUCT_NO)
	REFERENCES TOY_PRODUCTS (PRODUCT_NO)
;


ALTER TABLE TOY_SPECIAL_DISCOUNT_PRODUCTS
	ADD FOREIGN KEY (PRODUCT_NO)
	REFERENCES TOY_PRODUCTS (PRODUCT_NO)
;


ALTER TABLE TOY_REVIEW_LIKE_CUSTOMERS
	ADD FOREIGN KEY (REVIEW_NO)
	REFERENCES TOY_PRODUCT_REVIEWS (REVIEW_NO)
;

/* Create Sequence */
CREATE SEQUENCE CART_SEQ NOCACHE;
CREATE SEQUENCE CATEGORIES_SEQ NOCACHE;
CREATE SEQUENCE CUSTOMER_SEQ NOCACHE;
CREATE SEQUENCE CUSTOMER_POINT_HISTORY_SEQ NOCACHE;
CREATE SEQUENCE ORDER_SEQ NOCACHE;
CREATE SEQUENCE ORDER_ITEMS_SEQ NOCACHE;
CREATE SEQUENCE PRODUCTS_SEQ NOCACHE;
CREATE SEQUENCE PRODUCT_INQUIRY_SEQ NOCACHE;
CREATE SEQUENCE PRODUCT_REVIEWS_SEQ NOCACHE;

