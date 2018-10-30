-- using quizbase database

use QuizBase;

INSERT INTO School(
schoolName,
location
)
VALUES ('City College of New York', 'New York'),
('Brooklyn College', 'Brooklyn'),
('Queens College', 'Queens'),
( 'York College', 'Queens'),
( 'Baruch College', 'New York'),
( 'Hunter College', 'New York'),
( 'College of Staten Island', 'Staten Island'),
( 'Lehman College', 'Bronx'),
( 'New York City College of Technology', 'Brooklyn'),
( 'John Jay College of Criminal Justice', 'New York'),
( 'Medgar Evers College', 'Brooklyn'),
( 'Borough of Manhattan Community College', 'New York'),
( 'Bronx Community College', 'Bronx'),
( 'Guttman Community College', 'New York'),
( 'Hostos Community College', 'Bronx'),
( 'Kingsborough Community College', 'Brooklyn'),
( 'LaGuardia Community College', 'Queens'),
( 'Queensborough Community College', 'Queens');


INSERT INTO Topic(
topicName
)
VALUES('Chemistry'),
( 'Physics'),
( 'Psychology'),
( 'philosophy'),
( 'Computer Science'),
( 'Mechanical Engineering'),
( 'Environmental Engineering'),
( 'Biomedical Engineering'),
( 'Law'),
( 'Electrical Engieering'),
( 'Biology'),
( 'Anthropology'),
( 'History'),
( 'Mathematics'),
( 'Civil Engieering'),
( 'Biochemistry');


INSERT INTO Usr(
username,
email,
schoolId
)

VALUES('Connie20','connie10@gmail.com',0001),
('shofi88','shofi20@gmail.com',0006),
('bashir23','bashir30@gmail.com',0005),
('samuel34','samuel40@gmail.com',0002),
('john22','john343@gmail.com',0007),
('steven01','steven80@gmail.com',0018),
('conner50','conner120@gmail.com',0004),
('peter86','peter329@gmail.com',0009),
('nancy509','nancy60@yahoo.com',0010),
('mila410','mila320@rocketmail.com',0012);


INSERT INTO Decks(
DK_name,
userId,
topicId,
DK_date,
schoolId
)
VALUES('topics in biology', 00001, 0011, curdate(), 0001),
( 'topics in physics', 00002, 0002, curdate(), 0006),
( 'topics in computer science', 00008, 0005, curdate(), 0009),
( 'topics in civil engineering', 00006, 0015, curdate(), 0018),
( 'topics in anthropology', 00009, 0012, curdate(), 0010),
( 'topics in history', 00001, 0013, curdate(), 0001),
( 'topics in mathematics', 00010, 0014, curdate(), 0012),
( 'topics in psychology', 00002, 0003, curdate(), 0006),
( 'topics in philosophy', 00004, 0004, curdate(), 0002),
( 'topics in electrical engieering', 00005, 0010, curdate(), 00007),
( 'topics in law', 00008, 0009, curdate(), 0009),
( 'topics in biochemistry', 00009, 0016, curdate(), 0010),
( 'topics in environmental engineering', 00005, 0007, curdate(), 0007),
( 'topics in mechanical engineering', 00007, 0006, curdate(), 0004);



INSERT INTO prof(
deckId, 
userId
)

VALUES (00001, 00001),
(00002, 00002),
(00003, 00008),
(00004, 00006),
(00005, 00009),
(00006, 00001),
(00007, 00010),
(00008, 00002),
(00009, 00004),
(00010, 00005),
(00011, 00008),
(00012, 00009),
(00013, 00005),
(00014, 00007);



INSERT INTO Cards(
deckId,
title,
CD_description
)
VALUES( 00001, NULL, NULL),
( 00001, NULL, NULL),
( 00001, NULL, NULL),
( 00002, NULL, NULL),
( 00003, NULL, NULL),
( 00002, NULL, NULL),
( 00004, NULL, NULL),
( 000014, NULL, NULL),
( 00009, NULL, NULL),
( 00009, NULL, NULL),
( 00002, NULL, NULL),
( 00010, NULL, NULL),
( 00011, NULL, NULL),
( 00012, NULL, NULL),
( 00010, NULL, NULL),
( 00007, NULL, NULL),
( 00011, NULL, NULL),
( 00013, NULL, NULL),
( 00006, NULL, NULL),
( 00005, NULL, NULL),
( 00009, NULL, NULL),
( 00010, NULL, NULL),
( 00008, NULL, NULL),
( 00007, NULL, NULL),
( 00003, NULL, NULL);


INSERT INTO Class(
class_name,
topicId,
CS_description
)
VALUES('Biology 101', 0011, NULL),
( 'chemistry 101', 0001, NULL),
( 'physics 101', 0002, NULL),
( 'philosophy 101', 0004, NULL),
( 'computer science 101', 0005, NULL),
( 'anthropology 101', 0012, NULL),
( 'electrical engieering 101', 0010, NULL),
( 'civil engineering', 0015, NULL),
( 'mechanical engineering 101', 0006, NULL),
( 'mathematics 101', 0014, NULL),
( 'histroy 101', 0013, NULL),
( 'Biochemistry 101', 0016, NULL),
( 'law 101', 0009, NULL),
( 'Biomedical engineering 101', 0008, NULL),
( 'psychology', 0003, NULL),
( 'environmental engineering 101', 0007, NULL);



INSERT INTO members (
userId,
classId
)

VALUES(00001, 0002),
(00002, 0001),
(00003, 0008),
(00002, 0013),
(00003, 0010),
(00001, 0005),
(00004, 0013),
(00010, 0001),
(00002, 0014),
(00006, 0009),
(00005, 0011),
(00001, 0006),
(00007, 0011),
(00003, 0009),
(00002, 0016),
(00009, 0015),
(00008, 0007),
(00003, 0016),
(00001, 0016),
(00002, 0010);
