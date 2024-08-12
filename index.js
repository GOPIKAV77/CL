const express = require('express');
const MongoClient = require('mongodb').MongoClient;

const app = express();
const port = 3000;

MongoClient.connect('mongodb://db:27017', (err, client) => {
  if (err) throw err;

  const db = client.db('testdb');

  app.get('/', (req, res) => {
    res.send('Hello from Node.js and MongoDB!');
  });

  app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
  });
});
