// Based on https://github.com/ericf/express-handlebars

const port = 3306;
const express = require('express');
const hb  = require('express-handlebars');
const app = express();

const mysql = require('mysql');
const connection = mysql.createConnection({
  host     : 'sql9.freemysqlhosting.net',
  user     : 'sql9263174',
  password : 'xMEalvnh1H',
  database : 'sql9263174'
});

const query_test_select = 'SELECT * FROM School ORDER BY schoolId;';
const query_test_insert = 'INSERT INTO School (schoolName, location) VALUES (?, ?);';

app.engine('handlebars', hb({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');
app.use(express.urlencoded({extended: false}));

app.get('/', function (req, res) {
    connection.query(query_test_select, (error, results, fields) => {
        if (error) {
            throw error;
        }
        res.render('home', { results });
    });
});

 app.post('/api/user/create', (req, res) => {
    const name = req.body.name;
    const loc = req.body.loc;
    connection.query(query_test_insert, [name, loc], (error, results, fields) => {
        if (error) {
            throw error;
        }
        res.redirect('/')
    });
}); 

app.post('/api/user/delete/schoolName', (req, res) => {
    const Name = req.body.Name;
    connection.query('DELETE FROM school WHERE schoolName = ?;', [Name], (error, results, fields) => {
        if (error) {
            throw error;
        }
        res.redirect('/')
    });
});

app.post('/api/user/delete/id', (req, res) => {
    const ID = req.body.ID; 
    connection.query('DELETE FROM school WHERE schoolId = ?;', [ID] ,(error, results, fields) => {
        if (error) {
            throw error;
        }
        res.redirect('/')
    });
});

app.post('/api/user/updByName', (req, res) =>{
    const Name = req.body.Name;
    const upd_schoolName = req.body.upd_schoolName;
    connection.query('UPDATE school SET schoolName = ? WHERE schoolName = ?', [Name, upd_schoolName], (error, results, fields) => {
        if (error) {
            throw error;
        }
        res.redirect('/')
    })
});

app.post('/api/user/delete/id2', (req, res) => {
    const ID1 = req.body.ID1;
    const ID2 = req.body.ID2;
    sql = 'DELETE from school WHERE schoolId >= ? AND schoolId <= ?;';
    connection.query(sql, [ID1,ID2] ,(error, results, fields) => {
        if (error) {
            throw error;
        }
        res.redirect('/')
    });
});



app.listen(3306);
