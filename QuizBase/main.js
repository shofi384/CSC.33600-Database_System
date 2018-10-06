const express = require('express')
const app = express()
const port = 3000
const opn = require('opn');

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))

// opens the url in the default browser 
opn('http://localhost:3000/');
