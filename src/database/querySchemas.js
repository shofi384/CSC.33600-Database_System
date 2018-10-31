// Requires "npm install mysql"

const mysql = require('mysql');

// First you need to create a connection to the db
const connection = mysql.createConnection({
	host: 'sql9.freemysqlhosting.net',
	user: 'sql9263174',
	password: 'xMEalvnh1H',
	database: 'sql9263174'
});

connection.connect((err) => {
  if(err) {
    console.log(err);
    return;
  }
  else
  	console.log('Connection established');
});

function getUser(userEmail) {
	connection.query('SELECT * FROM Usr WHERE email = ?;', userEmail, (error, results, fields) => {
		if (error) {
            throw error;
        }
		else if (results.length > 0){
			return true;
		}
		else {
			return false;
		}
	})
}

function addUser(userEmail){
	connection.query('INSERT INTO Usr (username, email) VALUES (?, ?);', userEmail, userEmail, (error, results, fields) =>{
		if (error) {
            throw error;
        }
	})
}

function getTopics(){
	connection.query('SELECT topicName FROM Topic;', (error, rows, fields) => {
		if (error) {
            throw error;
        }

        var array = [];
        rows.forEach( row => {
        	array.push(row.topicName);
        });
		return array;
	})

}

function getDecks(){
	connection.query('select DK_name from Decks;', (error, results, fields) =>{
		if (error) {
            throw error;
        }
		return results;
	})

}

function getCards(){
	connection.query('select title from cards;', (error, results, fields) => {
		if (error) {
            throw error;
        }
        return results;
	})
}

function getCardDefinitions(cardName){
	connection.query('select CD_description from cards where title = ?;', cardName, (error, results, fields) => {
		if (error) {
            throw error;
        }
        return results;
	})
	
}

connection.end((err) => {
  console.log('Connection ended successfully');
});
