// Make connection to db

const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'database',
  user: 'root',
  password: 'Jackie',
  database: 'complete_menu'
});


// Read all function used for the server GET route 
// INNER JOIN selects all rows from both participating tables as long as there is a match between columns INNER JOIN menu_items
const getAll = function(res) {
  // connection.connect();
  connection.query('SELECT * FROM menu INNER JOIN menu_items ON menu_items.single_menu_id = menu.id', (err, data) => {
    if (err) {
      res.status(500);
      res.send(err);
    } else {
      res.status(200);
      res.send(data);
    }
  });
  // connection.end();
};

// Read all function for related restaurants for server GET route 
const getRelated = function(res) {
  connection.query('SELECT * FROM related', (err, data) => {
    if (err) {
      res.status(500);
      res.send(err);
    } else {
      res.status(200);
      res.send(data);
    }
  });
};

// export functions to be used elsewhere
module.exports = {
  connection: connection,
  getAll: getAll,
  getRelated: getRelated
};