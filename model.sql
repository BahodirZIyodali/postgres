
-- NEVER FORGOT THIS ;
      
--if is not  exist it'll create
DROP DATABASE IF EXISTS product_db;
-- or just create like that
CREATE DATABASE product_db;
--  change database name
ALTER DATABASE product_db RENAME TO product;
--  delete database
DROP DATABASE product_db or product;

  
--  create table 

CREATE TABLE goods(
  goods_id SERIAL NOT NULL,
  goods_title VARCHAR(50) NOT NULL,
  goods_descs TEXT NOT NULL,
  goods_price INT NOT NULL,
);

-- change a table name 
ALTER TABLE goods RENAME TO smth;
-- delate a table
DROP TABLE goods;
--  add column 
ALTER TABLE goods ADD COLUMN  goods_is_new   BOOLEAN DEFAULT TRUE;
--   raname column
ALTER TABLE goods RENAME COLUMN smth TO smths;
-- delete column
ALTER TABLE goods DROP COLUMN smth ;

--  verify column type
ALTER TABLE goods ALTER COLUMN  goods_id TYPE SERIAL USING (goods_id::SERIAL);

-- add column type 
ALTER TABLE goods ALTER COLUMN   goods_is_new SET NOT NULL;
--  delete column type
ALTER TABLE goods ALTER COLUMN goods_is_new DROP NOT NULL;



--  CRUD 

-- create
INSERT INTO goods( goods_title, goods_descs, goods_price)
-- '' 1 "" not two ""  
          VALUES('iphone 15 pro','if u buy this phone u will liked it', 1200);
  
  --  add more values
      -- VALUES('11bf5b37-e0b8-42e0-8dcf-dc8c4aefc000', 'Damenic', 'user1234', 'user2@gmail.com', 12, 'user'),('11bf5b37-e0b8-42e0-8dcf-dc8c4aefc000', 'Damenic', 'user1234', 'user2@gmail.com', 12, 'user')


--  get all
SELECT * FROM goods;

--  get one list by id
SELECT * FROM  goods WHERE goods_id = 1;
-- update
UPDATE goods SET goods_title ='iphone 14 pro ',goods_descs ='if u buy this phone u will happy' ,goods_price=900 WHERE  goods_id = 1;

-- delete
DELETE FROM goods WHERE goods_id=1;




CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  user_name VARCHAR(50),
  user_email VARCHAR(50)
);

CREATE TABLE Room (
  room_id INT PRIMARY KEY,
  room_name VARCHAR(50)
);

CREATE TABLE Groups (
  group_id INT PRIMARY KEY,
  group_name VARCHAR(50),
  room_id INT,
  FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

CREATE TABLE Course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50)
);

CREATE TABLE UserCourse (
  user_id INT,
  course_id INT,
  PRIMARY KEY (user_id, course_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

INSERT INTO Users (user_id, user_name, user_email) VALUES (1, 'Eshmat ', 'TOSHMATOV@example.com');

INSERT INTO Course (course_id, course_name) VALUES (1, 'Full stack ');

  INSERT INTO Groups (group_id, group_name, room_id) VALUES (1, 'Group N74', 1);

INSERT INTO UserCourse (user_id, course_id) VALUES (1, 1);





INSERT INTO Users (user_id, user_name, user_email) VALUES (2, 'John Doe', 'johndoe@example.com');

INSERT INTO Course (course_id, course_name) VALUES (2, 'Design');

INSERT INTO Groups (group_id, group_name, room_id) VALUES (2, 'Group N20', 2);

INSERT INTO UserCourse (user_id, course_id) VALUES (2, 2);
