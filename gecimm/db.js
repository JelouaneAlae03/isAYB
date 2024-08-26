// db.js
const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/gecim');

const db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function() {
  console.log("Connected to the database");
});

module.exports = db;
