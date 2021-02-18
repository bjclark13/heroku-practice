const port = process.env.PORT || 3000;

const express = require('express');
const app = express();

app.get('/test', (req, res) => {
    res.json("Woo hoo");
})

app.listen(port, () => { 
    console.log("Application started...")
})