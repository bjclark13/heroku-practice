CREATE TABLE questions (
	id SERIAL PRIMARY KEY,
	question VARCHAR(255)
);

CREATE TABLE answers (
	id SERIAL PRIMARY KEY,
	answer VARCHAR(255),
	isCorrect BOOL,
	question_id INT, 
	FOREIGN KEY (question_id) REFERENCES questions(id)
);

INSERT INTO questions (question) VALUES ('What is the real name of Batman?');

INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (1, 'Bruce Wayne', true);
INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (1, 'BJ Clark', false);
INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (1, 'Clark Kent', false);
INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (1, 'Abraham Lincoln', false);

INSERT INTO questions (question) VALUES ('What does SQL stand for');

INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (2, 'SQuirreL', false);
INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (2, 'Structured Query Language', true);
INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (2, 'Seriously Questionable League', false);
INSERT INTO ANSWERS (question_id, answer, isCorrect) VALUES (2, 'Stans Quiet Lagoon', false);