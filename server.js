const port = 3000;

const express = require('express');
const app = express();

// const trivia = require('./trivia');
// app.use('/', trivia);

app.get('/test', (req, res) => {
	res.json('Woo hoo');
});

app.listen(port, () => {
	console.log('Application started...');
});
