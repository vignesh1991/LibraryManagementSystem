
DROP TABLE IF EXISTS billionaires;
 
CREATE TABLE billionaires (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  career VARCHAR(250) DEFAULT NULL
);
 
INSERT INTO billionaires (first_name, last_name, career) VALUES
  ('Aliko', 'Dangote', 'Billionaire Industrialist'),
  ('Bill', 'Gates', 'Billionaire Tech Entrepreneur'),
  ('Folrunsho', 'Alakija', 'Billionaire Oil Magnate');

DROP TABLE IF EXISTS author;

CREATE TABLE author (
  author_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) DEFAULT NULL

) ;



DROP TABLE IF EXISTS book;

CREATE TABLE book (
  ISBN VARCHAR(13) NOT NULL   PRIMARY KEY ,
  title VARCHAR(1000) NOT NULL,
  cover VARCHAR(100) NOT NULL,
  publisher VARCHAR(100) NOT NULL,
  pages VARCHAR(10) NOT NULL


) ;


insert  into book(ISBN,title,cover,publisher,pages) values ('663','Kalil','Stoeck','kstoeckie@hhs.gov','663');


DROP TABLE IF EXISTS book_author;

CREATE TABLE book_author (
  author_id INT(10) NOT NULL PRIMARY KEY,
  isbn VARCHAR(200) NOT NULL

) ;



DROP TABLE IF EXISTS borrower;

CREATE TABLE borrower (
  card_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  ssn VARCHAR(20) NOT NULL,
  bname VARCHAR(100) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL
) ;



DROP TABLE IF EXISTS hibernate_sequence;

CREATE TABLE hibernate_sequence (
  next_val bigint(20) DEFAULT NULL
);


insert  into hibernate_sequence(next_val) values (1);


DROP TABLE IF EXISTS order_details;

CREATE TABLE order_details (
  booking_id VARCHAR(80) NOT NULL PRIMARY KEY,
  ISBN VARCHAR(10) NOT NULL,
  booking_date date NOT NULL,
  quantity VARCHAR(20) NOT NULL
) ;


insert  into order_details(booking_id,ISBN,booking_date,quantity) values ('ff80808162bf9a0d0162bf9c93490006','662','2018-04-13','662');


