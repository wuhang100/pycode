var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '941012',
  database : 'test0'
});
 
connection.connect();
 
connection.query('SELECT * FROM test0.test', function (error, result) {
  if (error) throw error;
  console.log(result);
});