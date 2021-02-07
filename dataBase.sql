
Create Table users(
  id int PRIMARY KEY AUTO_INCREMENT,
  createdAt datetime,
  lastUpdated datetime,
  userName varchar(255) not null,
  password varchar(255) not null);

CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `weight` double DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  KEY `userId` (`userId`),
  CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


Create Table activity(
  id int PRIMARY KEY AUTO_INCREMENT,
 name varchar(255) not null
);

Create Table activityHistory (
activityId int not null,
userId int not null,
caloriesBurnt int,
duration time,
date date

);


ALTER TABLE userInfo
ADD FOREIGN KEY (userId) REFERENCES users(id);

ALTER TABLE activityHistory
ADD FOREIGN KEY (activityId) REFERENCES activity(id);

ALTER TABLE foodHistory
ADD FOREIGN KEY (userId) REFERENCES users(id),
ADD FOREIGN KEY (foodId) REFERENCES food(id);

ALTER TABLE calorytracking
ADD FOREIGN KEY (userId) REFERENCES users(id);

ALTER TABLE apisettings
ADD FOREIGN KEY (userId) REFERENCES users(id),
ADD FOREIGN KEY (apiId) REFERENCES apiList(id);


Create Table food (
  id int PRIMARY KEY AUTO_INCREMENT,
  name  varchar(255) ,
  calories int
);

Create Table foodHistory(
  userId int,
  foodId int,
  quantity int,
  date datetime
);

Create Table caloryTracking(
 userId int,
 burnt int,
 taken int,
 suggested int
);

create table apiList(
 id int PRIMARY KEY AUTO_INCREMENT,
 name varchar(255)
 );


create table apiSettings(
userId int,
apiId int,
userKey varchar(255)

);
