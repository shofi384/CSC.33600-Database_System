const express = require('express')
const app = express()
const port = 3000
const opn = require('opn');

app.get('/', (req, res) => res.sendFile('index.html', { root: __dirname }));	// __dirname returns the directory that the currently executing script is in

app.listen(port, () => console.log(`Example app listening on port ${port}!`))

// opens the url in the default browser 
opn('http://localhost:3000/');
// specify the app to open in 
//opn('http://localhost:3000/', {app: 'firefox'});
