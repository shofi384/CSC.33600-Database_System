use QuizBase;


Delete from usr where userId = 1;
Delete from school where schoolId = 2;

-- this is the query to show all the topics in the topics table
select topicName from Topic;


-- this is to show all the Decks and their creation data in the Decks table
select userId, DK_name, DK_date from Decks;

-- this is to show the card title and its description in the Card table
select title, CD_description from cards;

-- this is to show the creator of a specific deck by joining the user table with the deck table
select userId, DK_name, username from decks natural join usr;


-- this is to show DK_name, schoolName, DK_date
select userId, DK_name, schoolName, DK_date from school natural join Decks;

select * from decks;
select * from cards;
select * from school;
select * from prof;
select * from usr;
select * from class;
select * from members;
