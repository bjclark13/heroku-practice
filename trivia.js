const express = require('express');

const trivia = express.Router();

const pool = require('./connection');

trivia.get('/questions', (req, res) => {
	pool.query('SELECT * FROM questions').then(results => {
		res.json(results.rows);
	});
});

trivia.get('/questions/:id', (req, res) => {
	const { id } = req.params;
	pool.query('SELECT * FROM questions WHERE id=$1', [id]).then(results => {
		res.json(results.rows);
	});
});

trivia.get('/answers/:id', (req, res) => {
	const { id } = req.params;
	pool
		.query('SELECT * FROM answers WHERE question_id=$1', [id])
		.then(results => {
			res.json(results.rows);
		});
});

module.exports = trivia;
