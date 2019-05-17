// Make connection to db

const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Jackie',
  database: 'complete_menu'
});


// Read all function used for the server GET route 
// INNER JOIN selects all rows from both participating tables as long as there is a match between columns
const getAll = function(res) {
  connection.connect();
  connection.query('SELECT * FROM menu INNER JOIN menu_items ON menu.id', (err, data) => {
    if (err) {
      res.status(500);
      res.send('getAll request error: ', err);
    } else {
      res.status(200);
      res.send(data);
    }
  });
  connection.end();
};



// export functions to be used elsewhere
module.exports = {
  connection: connection,
  getAll: getAll
};