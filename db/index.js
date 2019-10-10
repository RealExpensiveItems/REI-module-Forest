const mysql=require('mysql');
const db=require('../configs').dbInfo;
var con=mysql.createConnection({
  host:"localhost",
  user:db.user,
  password:db.password,
  database:db.dbName
});

con.connect((err)=>{
  if (err) throw err;
  console.log("db is running");
});

module.exports=con;