// creating a connection to the database;
const express = require('express');
const app = express();

const mysql = require('mysql');
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'quizbase',
  password : 'quizbase',
  database : 'quizbase'
});

getUser('samanby@rocketmail.com');
getUser('iamnotthere@gmail.com');

getTopics();

getDecks();

getCards();

getCardDefinitions('this is me');

function getUser(){
	//console.log(arguments);
	connection.query('select * from usr where email = ?;', [arguments[0]], (error, results, fields) =>{
		if (error) {
            throw error;
        }
		if (results.length > 0){
			console.log("found it");
			retn_value = 1;
		}
		else{
			console.log("you are not a user yet.....creating an account for you");
			addUser(arguments[0]);
			retn_value = 0;
		}
		ret_value(retn_value);
	})
}

function addUser(){
	connection.query('INSERT INTO usr (username, email) VALUES (?, ?);', [arguments[0], arguments[0]], (error, results, fields) =>{
		if (error) {
            throw error;
        }
	})
}

function getTopics(){
	connection.query('select topicName from topic;', (error, results, fields) =>{
		if (error) {
            throw error;
        }
		ret_value(results);
	})

}

function getDecks(){
	connection.query('select DK_name from Decks;', (error, results, fields) =>{
		if (error) {
            throw error;
        }
		ret_value(results);
	})

}

function getCards(){
	connection.query('select title from cards;', (error, results, fields) =>{
		if (error) {
            throw error;
        }
		ret_value(results);
	})
}

function getCardDefinitions(){
	connection.query('select CD_description from cards where title = ?;', [arguments[0]], (error, results, fields) =>{
		if (error) {
            throw error;
        }
		ret_value(results);
	})
	
}

function ret_value(){
	 console.log(arguments);
	 return arguments;	
}
