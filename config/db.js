// db.js
const mysql = require('mysql2');

const dbConfig = {
  host: 'localhost', // Your MySQL host
  user: 'root',
  password: '',
  database: 'formdb',
};

const connection = mysql.createConnection(dbConfig);

// Connect to the MySQL database
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
  } else {
    console.log('Connected to MySQL database');
  }
});

connection.on('error', (err) => {
    console.error('Database error:', err);
  });

module.exports = connection;
