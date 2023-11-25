var mysql = require('mysql');
var conn = mysql.createConnection({
  host: 'localhost', // Replace with your host name
  user: 'root',      // Replace with your database username
  password: 'password',      // Replace with your database password
  database: 'datacorp' // // Replace with your database Name
}); 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database terhubung !');
  console.log('Akses di http://localhost:3000/users/user-list');
});
module.exports = conn;