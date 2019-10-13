const db=require('../db');
const abData=require('../configs').dbInfo.abTableName;

module.exports=(req,res)=>{
  var id= req.params.id;
  res.status(200).send("id: "+id);
};