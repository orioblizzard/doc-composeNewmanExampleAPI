const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello, Docker Compose!');
});

app.get('/demo', (req, res) => {
    res.send('This is demo API');
});

app.listen(port, () => {
  console.log(`API is running on port ${port}`);
});