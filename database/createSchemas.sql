-- creating the database QuizBase
CREATE DATABASE quizbase;

-- changing the database to Quizbase
use quizbase;

-- creating School table
CREATE TABLE School(
schoolId int unique auto_increment,
schoolName varchar(255),
location varchar (500)
-- constraint SCOL_cnst primary key (schoolId)
);

-- creating topic table
CREATE TABLE Topic(
topicId int unique auto_increment,
topicName varchar(100) NOT NULL,
constraint TPK_cnst primary key (topicId)
);

-- creating table User
CREATE TABLE Usr(
userId int unique auto_increment,
username varchar(255) unique NOT NULL,
email varchar(100) unique NOT NULL,
schoolId int,
foreign key (schoolId) references School(schoolId) ON DELETE SET NULL ON UPDATE CASCADE,
constraint User_cnst primary key (userId)
);

-- creating Decks table
CREATE TABLE Decks(
deckId int unique auto_increment,
DK_name varchar(255),
userId int,
topicId int,
DK_date Date NOT NULL,
schoolId int,
constraint DK_cnst primary key (deckId),
foreign key (userId) references Usr(userId) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (topicId) references Topic(topicId) ON DELETE SET NULL ON UPDATE CASCADE,
foreign key (schoolId) references School(schoolId) ON DELETE SET NULL ON UPDATE CASCADE
);


-- creating Profile table;
CREATE TABLE Prof(
userId int,
deckId int,
foreign key (userId) references Usr(userId) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (deckId) references Decks(deckId) ON DELETE CASCADE ON UPDATE CASCADE
);

-- creating Cards table
CREATE TABLE Cards(
cardId int unique auto_increment,
deckId int,
title varchar(255),
CD_description varchar(600),
constraint CD_cnst primary key (cardId),
foreign key (deckId) references Decks(deckId) ON DELETE CASCADE ON UPDATE CASCADE 
);


-- creating class table
CREATE TABLE Class(
classId int unique auto_increment,
class_name varchar(255) NOT NULL,
topicId int,
CS_description varchar(600),
constraint CS_cnst primary key (classId),
foreign key (topicId) references Topic(topicId) ON DELETE SET NULL ON UPDATE CASCADE
);

-- creating table members
CREATE TABLE members(
userId int,
classId int,
foreign key (userId) references Usr(userId) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (classId) references Class(classId) ON DELETE CASCADE ON UPDATE CASCADE
);
