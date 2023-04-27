-- CREATE DATABASE products;

-- -- desc title,img,id ,isSold

-- CREATE TABLE goods(
--   id  serial not null,
--   title text not null,
--   descs text not null,
--   img text default null ,
--   price int not null,
--   isSold boolen default false
-- );
 


-- INSERT INTO goods(title, descs,price)
--       VALUES('laptop', 'this is lorem picsum doler', 1200),
--         ('phone', ' if u buy this phone u will be happy', 400) ;

-- ALTER TABLE goods ADD COLUMN delevired boolen defauld false;


-- SELECT * FROM goods WHERE id = '1';



-- ->> --> json


-- user->group  course->group user->course     group ->room





-- create database 



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

SELECT * from UserCourse;

INSERT INTO Users (user_id, user_name, user_email) VALUES (1, 'John Doe', 'johndoe@example.com');

INSERT INTO Groups (group_id, group_name, room_id) VALUES (1, 'Group N74', 123);

INSERT INTO Course (course_id, course_name) VALUES (1, 'Full stack ');

INSERT INTO UserCourse (user_id, course_id) VALUES (1, 1);



INSERT INTO Users (user_id, user_name, user_email) VALUES (2, 'Johna Doe', 'johnadoe@example.com');

INSERT INTO Course (course_id, course_name) VALUES (2, 'Design ');

INSERT INTO Groups (group_id, group_name, room_id) VALUES (2, 'Group N20', 3);

INSERT INTO UserCourse (user_id, course_id) VALUES (2, 2);
